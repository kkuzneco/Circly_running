QT += quick
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += main.cpp \
    main.cpp

RESOURCES += qml.qrc \
    qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    background.jpg \
    Game.odt \
    Game2.pro.user \
    background.jpg \
    LOSEGAME.jpg \
    WINGAME.jpg \
    Фон для меню.jpg \
    0.png \
    1.png \
    2.png \
    3.png \
    4.png \
    5.png \
    6.png \
    7.png \
    8.png \
    9.png \
    heart.png \
    redcircly.png \
    Звук вкл.png \
    Звук выкл.png \
    Кнопка EXIT.png \
    кнопка PLAY.png \
    drawing.svg \
    Ball.qml \
    Button.qml \
    Gameplay.qml \
    losegame1.qml \
    main.qml \
    Menu.qml \
    wingame.qml

SUBDIRS += \
    Game2.pro


