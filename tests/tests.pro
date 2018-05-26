include(gtest_dependency.pri)

TEMPLATE = app
CONFIG += console
CONFIG += thread

QMAKE_CXXFLAGS += -Wall -Wextra -Werror
QMAKE_CFLAGS += -Wall -Wextra -Werror

# gcov
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
QMAKE_CFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov

DEFINES +=INPUTDIR=\\\"$$PWD/data\\\"

HEADERS +=\
tests.h \
../app/check_position.h \
 ../app/library.h \
  ../app/checking1.h

SOURCES +=     main.cpp \
    ../app/library.cpp \
    ../app/checking1.cpp \
    ../app/check_position.cpp

INCLUDEPATH += ../app

DISTFILES += \
    gtest_dependency.pri
