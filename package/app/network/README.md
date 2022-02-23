# UNet for people detection

## Pipeline
1) dataset_listener.py - This file will run ROS2 node that will listen for Float32MultiArray messages from 3D scanner and save them as npy and png images in ./dataset_raw.

2) Use [Sefexa](http://www.fexovi.com/sefexa.html) to annotate dataset_raw folder.

3) run dataset_processing.py to process raw dataset. Result will be stored in ./dataset folder.

4) run train.py to train the network.

5) a) In Vitis-AI container, run quantize.py to quantize the network. Some samples of quantized network will be stored in ./quantized/quantization_results folder.

5) b) If the result is not satisfying, run finetune_quantized.py. Each finetuning iteration's result will be stored as ./quantized/quant_finetuning.png.

6) Run compile_quantized.sh. Result ready for inference will be stored in ./quantized folder.