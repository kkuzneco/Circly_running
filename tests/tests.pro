include(gtest_dependency.pri)

TEMPLATE = app
CONFIG += console
CONFIG += thread
CONFIG += c++11

QMAKE_CXXFLAGS += -Wall -Wextra -Werror
QMAKE_CFLAGS += -Wall -Wextra -Werror

# gcov
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
QMAKE_CFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov

DEFINES +=INPUTDIR=\\\"$$PWD/data\\\"

HEADERS +=\
tests.h \
  ../app/checking1.h\
   ../app/check_enemies.h \
    test1.h \
    tests2.h \


SOURCES +=     main.cpp \
    ../app/checking1.cpp \
    ../app/check_enemies.cpp \
    ../app/check_coins.cpp

INCLUDEPATH += ../app

DISTFILES += \
    gtest_dependency.pri
