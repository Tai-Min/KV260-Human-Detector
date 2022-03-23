import rclpy
from rclpy.node import Node
from std_msgs.msg import Float32MultiArray
import numpy as np
from matplotlib import pyplot as plt
from os.path import exists
from pathlib import Path


class InferenceListener(Node):

    def __init__(self):
        super().__init__('dataset_listener')
        self.subscription = self.create_subscription(
            Float32MultiArray, 'panorama_inference', self.listener_callback, 10)

    def listener_callback(self, msg):
        heatmap = np.array(msg.data)
        heatmap = np.reshape(
            heatmap, (msg.layout.dim[0].size, msg.layout.dim[1].size))

        plt.imshow(heatmap, cmap='rainbow',
                   interpolation='none', vmin=0, vmax=0.2)
        plt.pause(0.05)


def main(args=None):
    rclpy.init(args=args)
    inference_listener = InferenceListener()
    rclpy.spin(inference_listener)
    rclpy.shutdown()


if __name__ == '__main__':
    main()
