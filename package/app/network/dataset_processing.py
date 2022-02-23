from display import show_processing_progress
import glob
import os
import tensorflow as tf
import numpy as np
import shutil
import cv2
import imutils
import math

# Weight tuning parameters from UNet's paper.
_w0 = 15
_sigma = 10


def extract_contours(label):
    # @brief Extract contours from given binary label.
    # @param label Binary image u8c1 where 0 - empty space and ~255 - detection.
    # @return List of lists of contours around labeled objects.

    label_squeezed = np.squeeze(label.copy())

    cnts = cv2.findContours(
        label_squeezed, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

    cnts = imutils.grab_contours(cnts)

    return cnts


def get_closest_contour_point(x, y, contours):
    # @brief Get closest coordinates of closest contour point to (x, y).
    # @param x X coordinate.
    # @param y Y coordinate.
    # @param contours List of contours to check (from extract_contours).
    # @return Tuple (point(y, x), dist), where point is the coordinate of closest point of closest contour and dist is the shortest distance to it. Returns dist -1 if there are no valid contours.

    closest_dist = 99999999
    closest_point = [-1, -1]

    if not contours:
        return (closest_point, closest_dist)

    first_dist_found = False

    for contour in contours:
        for point in contour:
            dist = math.hypot(x - point[0][1], y - point[0][0])
            if dist < closest_dist:
                closest_dist = dist
                closest_point = point[0]
                first_dist_found = True

    if not first_dist_found:
        return -1

    return (closest_point, closest_dist)


def get_weight(sample, label):
    # @brief Compute weight for given sample.
    # @param sample Input sample.
    # @param label Label.
    # @return Weight matrix.

    # Part of weight based on detection / non detection inequality.
    class_pixels = np.count_nonzero(label)
    total_pixels = label.shape[0] * label.shape[1]

    non_class_weight = class_pixels / total_pixels
    class_weight = 1.0 - non_class_weight

    total_weight = np.where(label > 0, class_weight, non_class_weight)

    # Part of weight based on distance to closest detection.
    contours = extract_contours(label)

    rows = total_weight.shape[0]
    cols = total_weight.shape[1]
    skip_loop = False
    for x in range(0, rows):
        for y in range(0, cols):
            _, dist = get_closest_contour_point(x, y, contours)
            if dist < 0:
                print("No objects found, skipping weight generation.")
                skip_loop = True
                break
            else:
                total_weight[x, y] += _w0 * \
                    math.exp(-dist ** 2 / (2 * _sigma ** 2))
        if skip_loop:
            break

    max_val = np.max(total_weight)

    # Max weight to detections where there is no range data.
    total_weight[np.logical_and(label > 128, sample == 0)] = max_val

    # Min weight to detections where there is range data.
    total_weight[np.logical_and(label > 128, sample != 0)] = class_weight

    # Weight to 0 - 1 range.
    if max_val:
        total_weight = total_weight / max_val

    return total_weight


shutil.rmtree("./dataset", ignore_errors=True)
os.mkdir("./dataset")
os.mkdir("./dataset/inputs")
os.mkdir("./dataset/labels")
os.mkdir("./dataset/weights")

files = glob.glob("./dataset_raw/*.npy")
for i in range(len(files)):
    sample_path = files[i]
    print("Processing: %s [%d of %d]" % (sample_path, i+1, len(files)))

    # Get name of the sample.
    sample_path = os.path.basename(sample_path)
    sample_name = os.path.splitext(sample_path)[0]

    # Load to numpy arrays.
    sample = np.load("./dataset_raw/%s.npy" % sample_name)
    label = np.array(tf.keras.preprocessing.image.load_img(
        "./dataset_raw/segmentation/%s.png" % sample_name, color_mode='grayscale'))

    # Fix non segmented parts from gray to black.
    label[label < 128] = 0

    weight = get_weight(sample, label)

    # Labels are done using Sefexa software which means that these were just dilled using brush like tool. To get correct labels we need to filter the brushed area using sample data so label will be brushed only where scans are present.
    label[np.logical_and(label > 0, sample == 0)] = 0

    # From uint8 to 0 - 1 range.
    label = label / 255.0

    # Add channel dimension.
    sample = np.expand_dims(sample, axis=-1)
    label = np.expand_dims(label, axis=-1)
    weight = np.expand_dims(weight, axis=-1)

    show_processing_progress(sample, label, weight)

    np.save("./dataset/inputs/%s.npy" % sample_name, sample)
    np.save("./dataset/labels/%s.npy" % sample_name, label)
    np.save("./dataset/weights/%s.npy" % sample_name, weight)
