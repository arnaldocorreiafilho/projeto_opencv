QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp


INCLUDEPATH += .
INCLUDEPATH += /usr/local/include
INCLUDEPATH += /usr/local/include/opencv
INCLUDEPATH += /usr/local/include/opencv3
INCLUDEPATH += /usr/local/include/opencv3/core
INCLUDEPATH += /usr/local/include/opencv3/highgui
INCLUDEPATH += /usr/local/include/opencv3/imgproc
INCLUDEPATH += /usr/local/include/opencv3/flann
INCLUDEPATH += /usr/local/include/opencv3/photo
INCLUDEPATH += /usr/local/include/opencv3/video
INCLUDEPATH += /usr/local/include/opencv3/features2d
INCLUDEPATH += /usr/local/include/opencv3/objdetect
INCLUDEPATH += /usr/local/include/opencv3/calib3d
INCLUDEPATH += /usr/local/include/opencv3/ml
INCLUDEPATH += /usr/local/include/opencv3/contrib

LIBS += `pkg-config opencv --cflags --libs`

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
