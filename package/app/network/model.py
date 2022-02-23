import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
from math import sqrt
import numpy as np

class UNet(keras.Model):
    def __init__(self):
        super(UNet, self).__init__()

        # Number of filters in one convolution layer in first stage of U-Net.
        init_filters = 64

        # Size od width / height of convolution's kernel.
        kernel_size = 3

        # Convolution's padding.
        padding_conv = "valid"

        # Pooling's padding.
        padding_pool = "valid"

        # Size of width / height of pooling operation.
        pool_size = 3

        # N describes standard deviation for weight initiaization
        # based on Gaussian distribution.
        # and is computed as kernel_width * kernel_height * num_features.
        # See unet's paper for details.
        N = 1

        # No pooling.
        self.conv_no_pool_1 = layers.Conv2D(
            init_filters,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        N = kernel_size**2 * init_filters
        self.conv_no_pool_2 = layers.Conv2D(
            64,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        self.norm_no_pool = layers.BatchNormalization()

        # First pooling.
        self.pool1 = layers.MaxPool2D(
            pool_size=pool_size, strides=2, padding=padding_pool)

        N = kernel_size**2 * init_filters * 2
        self.conv_first_pool_1 = layers.Conv2D(
            init_filters * 2,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        N = kernel_size**2 * init_filters * 2
        self.conv_first_pool_2 = layers.Conv2D(
            init_filters * 2,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        self.norm_first_pool = layers.BatchNormalization()

        # Second pooling.
        self.pool2 = layers.MaxPool2D(
            pool_size=pool_size, strides=1, padding=padding_pool)

        N = kernel_size**2 * init_filters * 2
        self.conv_second_pool_1 = layers.Conv2D(
            init_filters * 4,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        N = kernel_size**2 * init_filters * 4
        self.conv_second_pool_2 = layers.Conv2D(
            init_filters * 4,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        self.norm_pool_2 = layers.BatchNormalization()

        # Third pooling.
        self.pool3 = layers.MaxPool2D(
            pool_size=pool_size, strides=1, padding=padding_pool)

        N = kernel_size**2 * init_filters * 4
        self.conv_third_pool_1 = layers.Conv2D(
            init_filters * 8,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        N = kernel_size**2 * init_filters * 8
        self.conv_third_pool_2 = layers.Conv2D(
            init_filters * 8,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        self.norm_third_pool = layers.BatchNormalization()

        # Fourth pooling.
        self.pool4 = layers.MaxPool2D(
            pool_size=pool_size, strides=1, padding=padding_pool)

        N = kernel_size**2 * init_filters * 8
        self.conv_fourth_pool_1 = layers.Conv2D(
            init_filters * 16,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        N = kernel_size**2 * init_filters * 16
        self.conv_fourth_pool_2 = layers.Conv2D(
            init_filters * 16,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        self.norm_fourth_pool = layers.BatchNormalization()

        # First upsampling.
        self.up1 = layers.UpSampling2D(size=1)
        self.zero_padding_1 = layers.ZeroPadding2D(padding=((3, 3), (3, 3)))
        self.concat1 = layers.Concatenate(axis=-1)

        N = kernel_size**2 * init_filters * 16
        self.conv_first_up_1 = layers.Conv2D(
            init_filters * 8,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        N = kernel_size**2 * init_filters * 8
        self.conv_first_up_2 = layers.Conv2D(
            init_filters * 8,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        self.norm_first_up = layers.BatchNormalization()

        # Second upsampling.
        self.up2 = layers.UpSampling2D(size=1)
        self.zero_padding_2 = layers.ZeroPadding2D(padding=((5, 5), (5, 5)))
        self.concat2 = layers.Concatenate(axis=-1)

        N = kernel_size**2 * init_filters * 8
        self.conv_second_up_1 = layers.Conv2D(
            init_filters * 4,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        N = kernel_size**2 * init_filters * 4
        self.conv_second_up_2 = layers.Conv2D(
            init_filters * 4,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        self.norm_second_up = layers.BatchNormalization()

        # Third upsampling.
        self.up3 = layers.UpSampling2D(size=1)
        self.zero_padding_3 = layers.ZeroPadding2D(padding=((5, 5), (5, 5)))
        self.concat3 = layers.Concatenate(axis=-1)

        N = kernel_size**2 * init_filters * 4
        self.conv_third_up_1 = layers.Conv2D(
            init_filters * 2,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        N = kernel_size**2 * init_filters * 2
        self.conv_third_up_2 = layers.Conv2D(
            init_filters * 2,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        self.norm_third_up = layers.BatchNormalization()

        # Fourth upsampling.
        self.up4 = layers.UpSampling2D(size=2)
        self.zero_padding_4 = layers.ZeroPadding2D(padding=((9, 9), (9, 9)))
        self.concat4 = layers.Concatenate(axis=-1)

        N = kernel_size**2 * init_filters * 2
        self.conv_fourth_up_1 = layers.Conv2D(
            init_filters,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        N = kernel_size**2 * init_filters
        self.conv_fourth_up_2 = layers.Conv2D(
            1,
            kernel_size,
            padding=padding_conv,
            activation=keras.activations.relu,
            kernel_initializer=keras.initializers.RandomNormal(
                stddev=sqrt(2/N))
        )

        self.zero_padding_final = layers.ZeroPadding2D(
            padding=((4, 4), (4, 4)))

    #@tf.function(jit_compile=True)
    def downsample_no_pool(self, sample, training):
        res_no_pool = self.conv_no_pool_1(sample)
        res_no_pool = self.conv_no_pool_2(res_no_pool)
        #if training:
        res_no_pool = self.norm_no_pool(res_no_pool)
        return res_no_pool

    #@tf.function(jit_compile=True)
    def downsample_first_pool(self, res_no_pool, training):
        res_first_pool = self.pool1(res_no_pool)
        res_first_pool = self.conv_first_pool_1(res_first_pool)
        res_first_pool = self.conv_first_pool_2(res_first_pool)
        #if training:
        res_first_pool = self.norm_first_pool(res_first_pool)
        return res_first_pool

    #@tf.function(jit_compile=True)
    def downsample_second_pool(self, res_first_pool, training):
        res_second_pool = self.pool2(res_first_pool)
        res_second_pool = self.conv_second_pool_1(res_second_pool)
        res_second_pool = self.conv_second_pool_2(res_second_pool)
        #if training:
        res_second_pool = self.norm_pool_2(res_second_pool)
        return res_second_pool

    #@tf.function(jit_compile=True)
    def downsample_third_pool(self, res_second_pool, training):
        res_third_pool = self.pool3(res_second_pool)
        res_third_pool = self.conv_third_pool_1(res_third_pool)
        res_third_pool = self.conv_third_pool_2(res_third_pool)
        #if training:
        res_third_pool = self.norm_third_pool(res_third_pool)
        return res_third_pool

    #@tf.function(jit_compile=True)
    def downsample_fourth_pool(self, res_third_pool, training):
        res_fourth_pool = self.pool4(res_third_pool)
        res_fourth_pool = self.conv_fourth_pool_1(res_fourth_pool)
        res_fourth_pool = self.conv_fourth_pool_2(res_fourth_pool)
        #if training:
        res_fourth_pool = self.norm_fourth_pool(res_fourth_pool)
        return res_fourth_pool

    #@tf.function(jit_compile=True)
    def upsample1(self, res_first_up, res_third_pool, training):
        res_first_up = self.concat1([res_first_up, res_third_pool])
        res_first_up = self.conv_first_up_1(res_first_up)
        res_first_up = self.conv_first_up_2(res_first_up)
        #if training:
        res_first_up = self.norm_first_up(res_first_up)
        return res_first_up

    #@tf.function(jit_compile=True)
    def upsample2(self, res_second_up, res_second_pool, training):
        res_second_up = self.concat2([res_second_up, res_second_pool])
        res_second_up = self.conv_second_up_1(res_second_up)
        res_second_up = self.conv_second_up_2(res_second_up)
        #if training:
        res_second_up = self.norm_second_up(res_second_up)
        return res_second_up

    #@tf.function(jit_compile=True)
    def upsample3(self, res_third_up, res_first_pool, training):
        res_third_up = self.concat3([res_third_up, res_first_pool])
        res_third_up = self.conv_third_up_1(res_third_up)
        res_third_up = self.conv_third_up_2(res_third_up)
        #if training:
        res_third_up = self.norm_third_up(res_third_up)
        return res_third_up

    #@tf.function(jit_compile=True)
    def upsample4(self, res_fourth_up, res_no_pool):
        res_fourth_up = self.concat4([res_fourth_up, res_no_pool])
        res_fourth_up = self.conv_fourth_up_1(res_fourth_up)
        res_fourth_up = self.conv_fourth_up_2(res_fourth_up)
        return res_fourth_up

    #@tf.function
    def call(self, sample, training=False):

        # Downsample.
        res_no_pool = self.downsample_no_pool(sample, training)
        res_first_pool = self.downsample_first_pool(res_no_pool, training)
        res_second_pool = self.downsample_second_pool(res_first_pool, training)
        res_third_pool = self.downsample_third_pool(res_second_pool, training)
        res_fourth_pool = self.downsample_fourth_pool(res_third_pool, training)

        # Upsample.
        res_first_up = self.up1(res_fourth_pool)
        res_first_up = self.zero_padding_1(res_first_up)
        res_first_up = self.upsample1(res_first_up, res_third_pool, training)

        res_second_up = self.up2(res_first_up)
        res_second_up = self.zero_padding_2(res_second_up)
        res_second_up = self.upsample2(
            res_second_up, res_second_pool, training)

        res_third_up = self.up3(res_second_up)
        res_third_up = self.zero_padding_3(res_third_up)
        res_third_up = self.upsample3(res_third_up, res_first_pool, training)

        res_fourth_up = self.up4(res_third_up)
        res_fourth_up = self.zero_padding_4(res_fourth_up)
        res_fourth_up = self.upsample4(res_fourth_up, res_no_pool)

        result = self.zero_padding_final(res_fourth_up)

        return result

    def get_config(self):
        return {}

    
    def model(self, shape, training=False):
        sample = keras.Input(shape, batch_size=1) 
        return keras.Model(inputs=sample, outputs=self.call(sample, training))