import cv2
import numpy as np


def _result_to_cv_img(img):
    # @brief Convert given tensorflow tensor / numpy array info cv2 image.
    # @param img Image to convert.
    # @return Image in BGR format.

    img = np.array(img)
    max_val = np.max(img)
    img = img / max_val * 255

    img = img.astype(np.uint8)
    return cv2.cvtColor(img, cv2.COLOR_GRAY2BGR)


def _insert_text(img, text):
    # @brief Insert text into given image.
    # @param img cv2 image.
    # @param text Text to insert.
    # @return Image with text in red color.

    return cv2.putText(img, text, (4, 16),
                       cv2.FONT_HERSHEY_SIMPLEX, 0.4, (0, 0, 255),
                       1, cv2.LINE_AA, False)


def show_processing_progress(input_img, output_img, weight_img):
    # @brief Show result of dataset processing (generate_weights.py).
    # @param input_img Input sample.
    # @param output_img Label.
    # @param weight_img Weight matrix.

    if show_processing_progress.first_iter:
        cv2.namedWindow("Processing progress", cv2.WINDOW_AUTOSIZE)
        show_processing_progress.first_iter = False

    input_img = _result_to_cv_img(input_img)
    input_img_map = cv2.applyColorMap(input_img, cv2.COLORMAP_JET)
    input_img_map = _insert_text(input_img_map, "Input image")

    output_img = _result_to_cv_img(output_img)
    output_img = _insert_text(output_img, "Label image")

    weight_img = _result_to_cv_img(weight_img)
    weight_img_map = cv2.applyColorMap(weight_img, cv2.COLORMAP_JET)
    weight_img_map = _insert_text(weight_img_map, "Weight map")

    img = np.concatenate((input_img_map, output_img, weight_img_map), axis=0)

    cv2.imshow("Processing progress", img)
    cv2.waitKey(10)


show_processing_progress.first_iter = True


def show_training_progress(input_img, output_img, pred_img, weight_img, to_file=False, filename="training_progress.png"):
    # @brief Show result of training (train.py).
    # @param input_img Input sample.
    # @param output_img Label.
    # @param pred_img Network's prediction.
    # @param weight_img Weight matrix.

    if show_training_progress.first_iter:
        cv2.namedWindow("Training progress", cv2.WINDOW_AUTOSIZE)
        show_training_progress.first_iter = False

    input_img = _result_to_cv_img(input_img)
    input_img_map = cv2.applyColorMap(input_img, cv2.COLORMAP_JET)
    input_img_map = _insert_text(input_img_map, "Input image")

    output_img = _result_to_cv_img(output_img)
    output_img = _insert_text(output_img, "Label image")

    pred_img = _result_to_cv_img(pred_img)
    pred_img = _insert_text(pred_img, "Network's prediction")

    weight_img = _result_to_cv_img(weight_img)
    weight_img_map = cv2.applyColorMap(weight_img, cv2.COLORMAP_JET)
    weight_img_map = _insert_text(weight_img_map, "Weight map")

    img_top = np.concatenate((input_img_map, weight_img_map), axis=1)
    img_bot = np.concatenate((output_img, pred_img), axis=1)
    img = np.concatenate((img_top, img_bot), axis=0)

    if to_file:
        cv2.imwrite(filename, img)
    else:
        cv2.imshow("Training progress", img)
        cv2.waitKey(10)


show_training_progress.first_iter = True

def write_quantization_progress(input_img, output_img, pred_img, weight_img, filename):
    # @brief Write result of network quantization to file (quantize.py).
    # @param input_img Input sample.
    # @param output_img Label.
    # @param pred_img Network's prediction.
    # @param weight_img Weight matrix.
    # @param filename Filename to write.

    input_img = _result_to_cv_img(input_img)
    input_img_map = cv2.applyColorMap(input_img, cv2.COLORMAP_JET)
    input_img_map = _insert_text(input_img_map, "Input image")

    output_img = _result_to_cv_img(output_img)
    output_img = _insert_text(output_img, "Label image")

    pred_img = _result_to_cv_img(pred_img)
    pred_img = _insert_text(pred_img, "Network's prediction")

    weight_img = _result_to_cv_img(weight_img)
    weight_img_map = cv2.applyColorMap(weight_img, cv2.COLORMAP_JET)
    weight_img_map = _insert_text(weight_img_map, "Weight map")

    img_top = np.concatenate((input_img_map, weight_img_map), axis=1)
    img_bot = np.concatenate((output_img, pred_img), axis=1)
    img = np.concatenate((img_top, img_bot), axis=0)

    cv2.imwrite(filename, img)