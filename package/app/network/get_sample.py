from turtle import goto
import numpy as np
import os
import random
import glob


def get_sample():
    # @brief Load sample from path and augment it.
    # @return Tuple (sample, label, weight).

    # Rolling samples let's us run training during long and boring dataset preprocessing.
    while(True):
        sample_path = random.choice(glob.glob("./dataset/inputs/*.npy"))
        sample_path = os.path.basename(sample_path)
        sample_name = os.path.splitext(sample_path)[0]
        if os.path.exists("./dataset/inputs/%s.npy" % sample_name) and os.path.exists("./dataset/labels/%s.npy" % sample_name) and os.path.exists("./dataset/weights/%s.npy" % sample_name):
            break

    sample = np.load("./dataset/inputs/%s.npy" % sample_name)
    label = np.load("./dataset/labels/%s.npy" % sample_name)
    weight = np.load("./dataset/weights/%s.npy" % sample_name)

    # Vertical flip.
    op = bool(random.getrandbits(1))
    if op:
        sample = np.flip(sample, axis=1)
        label = np.flip(label, axis=1)
        weight = np.flip(weight, axis=1)

    # Increase or decrease range of whole scan.
    op = bool(random.getrandbits(1))
    if op:
        val = random.uniform(0, 0.4)
        add = bool(random.getrandbits(1))
        if add:
            sample[np.logical_and(sample > 0, label == 0)] += val
            sample[sample > 1] = 1
        else:
            sample[np.logical_and(sample > 0, label == 0)] -= val
            sample[sample < 0] = 0

    # Increase range of detected person.
    op = bool(random.getrandbits(1))
    if op:
        val = random.uniform(0, 0.4)
        sample[np.logical_and(label > 0, sample > 0)] += val
        sample[sample > 1] = 1

    # Increase or decrease range of all but detected person.
    op = round(random.uniform(0, 20.0))
    if not op:
        val = random.uniform(0, 0.2)
        add = bool(random.getrandbits(1))
        if add:
            sample[np.logical_and(label == 0, sample != 0)] += val
            sample[sample > 1] = 1
        else:
            sample[np.logical_and(label == 0, sample != 0)] -= val
            sample[sample < 0] = 0

    yield (sample, label, weight)
