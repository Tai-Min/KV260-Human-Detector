#!/usr/bin/bash

###
# Run in Vitis-AI container!
###
vai_c_tensorflow2 -m ./quantized/inference_model.h5 -a /opt/vitis_ai/compiler/arch/DPUCZDX8G/KV260/arch.json -o ./quantized/final -n unet