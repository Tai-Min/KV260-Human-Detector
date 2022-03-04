import tensorflow as tf
from tensorflow import keras
from model import UNet
from get_sample import get_sample
from display import show_training_progress
from loss import loss_fcn

# GPU memory config (suited for GTX970).
gpu_devices = tf.config.experimental.list_physical_devices('GPU')

if gpu_devices:
    tf.config.experimental.set_memory_growth(gpu_devices[0], True)
    tf.config.experimental.set_virtual_device_configuration(
        gpu_devices[0],
        [tf.config.experimental.VirtualDeviceConfiguration(
            memory_limit=1 * 2048)])

# Training parameters.
epochs = 50000
train_samples_per_epoch = 64
batch_size = 1

lr = tf.keras.optimizers.schedules.PolynomialDecay(
    0.00000000005, 30000, end_learning_rate=0.00000000000005)

train_dataset = tf.data.Dataset.from_generator(
    get_sample, output_types=(tf.float32, tf.float32, tf.float32)).batch(batch_size).prefetch(tf.data.AUTOTUNE)

# Optimizer.
# SGD with momentum as described in unet's paper.
optimizer = keras.optimizers.SGD(learning_rate=lr, momentum=0.99)

# Network model.
net = UNet()

# Restore training from checkpoint if possible
ckpt = tf.train.Checkpoint(step=tf.Variable(1), net=net, optimizer=optimizer)

manager = tf.train.CheckpointManager(ckpt, "./tf_ckpts", max_to_keep=100)
path = manager.restore_or_initialize()

if path:
    print("Restored checkpoint from %s" % path)
else:
    print("Initializing training from scratch.")

# Convert to functional model.
net = net.model((90, 666, 1))
net.summary()

@tf.function
def train_step(inputs, labels, weights):
    # @brief Perform single training step.
    # @param inputs Batch of inputs.
    # @param labels Batch of labels.
    # @param weights Batch of weights.
    # @return Predictions and loss function's value.

    with tf.GradientTape() as tape:
        preds = net(inputs, True)
        loss = loss_fcn(labels, preds, weights)

    grads = tape.gradient(loss, net.trainable_weights)
    optimizer.apply_gradients(zip(grads, net.trainable_weights))

    return preds, loss


train_batches_per_epoch = train_samples_per_epoch / batch_size

# Perform training.
for _ in range(epochs):
    for __ in range(int(train_batches_per_epoch)):
        inputs, labels, weights = next(iter(train_dataset))
        preds, loss = train_step(inputs, labels, weights)

        # Save checkpoint and show some results.
        ckpt.step.assign_add(1)
        if int(ckpt.step) % 100 == 0:
            path = manager.save()
            print("Checkpoint saved: %s." % path)

        show_training_progress(inputs[0], labels[0], preds[0], weights[0])

        print("Loss function on training batch: %f." % float(loss))
