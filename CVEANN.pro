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
    Rand.c \
    Network/FeedForward.c \
    Trainer/Trainer_FeedForward.c \
    Network/FeedForwardMomentum.c \
    Trainer/Trainer_BPMomentum.c \
    Network/SOFM.c \
    Trainer/Trainer_SOFM.c \
    Test/BPFormantTest.c \
    Test/SOFMTest.c \
    Test/AFormant.c \
    Network/LVQ.c \
    Trainer/Trainer_LVQ.c \
    Test/LVQTest.c

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
    Rand.h \
    Trainer/Trainer_FeedForward3L.h \
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
    Trainer/Trainer_FeedForward.h \
    Network/FeedForward.h \
    Network/FeedForwardMomentum.h \
    Trainer/Trainer_BPMomentum.h \
    Network/SOFM.h \
    Trainer/Trainer_SOFM.h \
    Test/BPFormantTest.h \
    Test/SOFMTest.h \
    Test/AFormant.h \
    Network/LVQ.h \
    Trainer/Trainer_LVQ.h \
    Test/LVQTest.h


unix:!macx: LIBS += -L$$PWD/CVEDSP/ -lCVEDSP

INCLUDEPATH += $$PWD/CVEDSP
DEPENDPATH += $$PWD/CVEDSP

unix:!macx: PRE_TARGETDEPS += $$PWD/CVEDSP/libCVEDSP.a
