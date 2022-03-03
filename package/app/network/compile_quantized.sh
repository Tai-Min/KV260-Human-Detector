#!/usr/bin/bash

###
# Run in Vitis-AI container!
###
vai_c_tensorflow2 -m ./quantized/inference_model.h5 -a ./arch.json -o ./quantized/final -n unet