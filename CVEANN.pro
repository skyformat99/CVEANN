TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

QMAKE_CFLAGS += -msse -msse2 -mavx -ffast-math -lm

SOURCES += main.c \
    RUtil/Memory.c \
    RUtil/IO/Wave.c \
    RUtil/IO/StringStream.c \
    RUtil/IO/FileUtil.c \
    RUtil/IO/FileStream.c \
    RUtil/Misc/Converter.c \
    RUtil/Structure/String.c \
    Activator.c \
    Neuron/Neuron.c \
    Trainer/Trainer_Perceptron.c \
    Network/FeedForward3L.c \
    Rand.c \
    Trainer/Trainer_FeedForward3L.c \
    Network/FeedForward3L_Fast.c \
    Trainer/Trainer_FeedForward3L_Fast.c \
    Network/FeedForwardNL.c \
    Trainer/Trainer_FeedForwardNL.c \
    Network/FeedForwardNL_Fast.c \
    Trainer/Trainer_FeedForwardNL_Fast.c

HEADERS += \
    RUtil/RUtil.h \
    RUtil/Memory.h \
    RUtil/IO/Wave.h \
    RUtil/IO/StringStream.h \
    RUtil/IO/FileUtil.h \
    RUtil/IO/FileStream.h \
    RUtil/Misc/Converter.h \
    RUtil/Structure/String.h \
    RUtil/Structure/Array.h \
    Activator.h \
    Neuron/Neuron.h \
    Network/Perceptron.h \
    Trainer/Trainer_Perceptron.h \
    Network/FeedForward3L.h \
    Rand.h \
    Trainer/Trainer_FeedForward3L.h \
    Test/Formant.h \
    Network/FeedForward3L_Fast.h \
    CVEDSP/Interpolation.h \
    CVEDSP/FrameProcessor.h \
    CVEDSP/Plot.h \
    CVEDSP/Tester.h \
    CVEDSP/DFT/StaticRev.h \
    CVEDSP/DFT/StaticFFT_Small.h \
    CVEDSP/DFT/StaticFFT_11.h \
    CVEDSP/DFT/StaticFFT_10.h \
    CVEDSP/DFT/StaticFFT_9.h \
    CVEDSP/DFT/StaticFFT_8.h \
    CVEDSP/DFT/StaticFFT_7.h \
    CVEDSP/DFT/StaticFFT_6.h \
    CVEDSP/DFT/StaticFFT_5.h \
    CVEDSP/DFT/SplitRadixGen.h \
    CVEDSP/DFT/SplitRadix.h \
    CVEDSP/DFT/Radix2Gen.h \
    CVEDSP/DFT/Radix2.h \
    CVEDSP/DFT/FFTCommon.h \
    CVEDSP/DFT/FFTBlock.h \
    CVEDSP/DFT/FFT.h \
    CVEDSP/DFT/DFT.h \
    CVEDSP/Algorithm/PSOLA.h \
    CVEDSP/Algorithm/Formant.h \
    CVEDSP/Algorithm/FECSOLA.h \
    CVEDSP/Algorithm/BaseFreq.h \
    CVEDSP/DSPBase/Window.h \
    CVEDSP/DSPBase/TDEffects.h \
    CVEDSP/DSPBase/TDAnalysis.h \
    CVEDSP/DSPBase/Spectrum.h \
    CVEDSP/DSPBase/LPC.h \
    CVEDSP/DSPBase/LinearWarping.h \
    CVEDSP/DSPBase/Filter.h \
    CVEDSP/DSPBase/ControlPointFilter.h \
    Trainer/Trainer_FeedForward3L_Fast.h \
    Network/FeedForwardNL.h \
    Trainer/Trainer_FeedForwardNL.h \
    Network/FeedForwardNL_Fast.h \
    Trainer/Trainer_FeedForwardNL_Fast.h


unix:!macx: LIBS += -L$$PWD/CVEDSP/ -lCVEDSP

INCLUDEPATH += $$PWD/CVEDSP
DEPENDPATH += $$PWD/CVEDSP

unix:!macx: PRE_TARGETDEPS += $$PWD/CVEDSP/libCVEDSP.a