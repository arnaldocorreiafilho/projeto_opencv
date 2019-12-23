
import cv2 as cv
from matplotlib import pyplot as plt

img = cv.imread('lena.png',cv.IMREAD_GRAYSCALE)
plt.hist(img.ravel(),256,[0,256])
plt.show()

