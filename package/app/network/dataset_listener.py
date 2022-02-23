import rclpy
from rclpy.node import Node
from std_msgs.msg import Float32MultiArray
import numpy as np
from matplotlib import pyplot as plt
from os.path import exists
from pathlib import Path


class DatasetListener(Node):

    def __init__(self):
        super().__init__('dataset_listener')
        Path('dataset_raw').mkdir(parents=True, exist_ok=True)
        self.last_file = 0
        self.last_file = self.get_last_file()
        self.subscription = self.create_subscription(
            Float32MultiArray, 'panorama', self.listener_callback, 10)

    def get_last_file(self):
        file = self.last_file
        while(exists('dataset_raw/%d.png' % file)):
            file += 1
        return file

    def listener_callback(self, msg):
        heatmap = np.array(msg.data)
        heatmap = np.reshape(
            heatmap, (msg.layout.dim[0].size, msg.layout.dim[1].size))

        self.last_file = self.get_last_file()
        plt.imshow(heatmap, cmap='rainbow',
                   interpolation='none', vmin=0, vmax=0.2)
        plt.pause(0.05)
        np.save('dataset_raw/%d.npy' % self.last_file, heatmap)
        plt.imsave("dataset_raw/%d.png" % self.last_file, heatmap)


def main(args=None):
    rclpy.init(args=args)
    dataset_listener = DatasetListener()
    rclpy.spin(dataset_listener)
    rclpy.shutdown()


if __name__ == '__main__':
    main()
