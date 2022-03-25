import tensorflow as tf
from model import UNet
from get_sample import get_sample
from tensorflow_model_optimization.quantization.keras import vitis_quantize
from display import write_quantization_progress
import os
import shutil
import sys

###
# Run in Vitis-AI container!
###

# Network model.
net = UNet()

# Dummy stuff to prevent warnings from checkpoint manager.
lr = tf.keras.optimizers.schedules.PolynomialDecay(
    0.00000000005, 30000, end_learning_rate=0.00000000000005)
optimizer = tf.keras.optimizers.SGD(learning_rate=1, momentum=0.99)

# Restore training from checkpoint if possible
ckpt = tf.train.Checkpoint(step=tf.Variable(1), net=net, optimizer=optimizer)

manager = tf.train.CheckpointManager(ckpt, "./tf_ckpts", max_to_keep=100)
path = manager.restore_or_initialize()

if path:
    print("Restored checkpoint from %s" % path)
else:
    print("Initializing training from scratch.")

# Convert to functional model.
net = net.model((128, 512, 1))
net.summary()

# Quantization dataset.
dataset = tf.data.Dataset.from_generator(
    get_sample, output_types=(tf.float32, tf.float32, tf.float32)).batch(1)

# Quantize model into int8 representation.
quantizer = vitis_quantize.VitisQuantizer(net)
quantized_net = quantizer.quantize_model(calib_dataset=dataset)
quantized_net.save('./quantized/inference_model.h5')

sys.exit(0)

# Verify the model somehow.
img_dir = "./quantized/quantizaton_results"
shutil.rmtree(img_dir, ignore_errors=True)
os.makedirs(img_dir)

for i in range(1, 51):
    inputs, labels, weights = next(iter(dataset))

    preds_float = net.predict(inputs)
    preds_quant = quantized_net.predict(inputs)

    write_quantization_progress(inputs[0], labels[0],
                                preds_float[0], weights[0], "%s/%d_float.png" % (img_dir, i))

    write_quantization_progress(inputs[0], labels[0],
                                preds_quant[0], weights[0], "%s/%d_quant.png" % (img_dir, i))
