import numpy as np
import cv2

my_res, true_res = cv2.imread("test_image/input_image_res(2x).bmp"), cv2.imread("test_image/result_image.bmp")

print("Sum error = ", np.sum(abs(true_res - my_res)))