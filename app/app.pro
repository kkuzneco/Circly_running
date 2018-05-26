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
    library.cpp \
    checking1.cpp \
    check_position.cpp \
    check_enemies.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    Game.odt \
    Game2.pro.user \
    WINGAME.jpg \
    Фон для меню.jpg \
    heart.png \
    redcircly.png \
    Звук вкл.png \
    Звук выкл.png \
    Кнопка EXIT.png \
    кнопка PLAY.png \
    drawing.svg \
    Button.qml \
    Gameplay.qml \
    losegame1.qml \
    main.qml \
    Menu.qml \
    Losegame.qml \
    Block.qml \
    Кнопка MENU.png \
    Losegame.jpg \
    WINGAME.jpg \
    Gameplay.qml \
    Coin.qml\
    Hello.qml \
    Wingame.qml

SUBDIRS += \
    Game2.pro

HEADERS += \
    check_position.h \
    library.h \
    checking1.h \
    check_enemies.h

#         Если операционная система из семейства unix
#        unix: {
#                CONFIG (debug, debug|release) {
#                        # Такое название имеет debug-версия библиотеки
#                        TARGET = ComputerManagerd
#                } else {
#                        # А такое release-версия
#                        TARGET = ComputerManager
#                }
#        } else {
#                TARGET = $$qtLibraryTarget(ComputerManager)
#        }
#        VERSION = 1.0.0
#        # Первый параметр необходим для сборки #библиотеки в linux (qmake, make all),
#        # второй для сборки под остальными ОС.
#        CONFIG += debug_and_release build_all
#        # Указываем папки для объектных файлов. Для unix-подобных ОС это критично.
#        # Если этого не сделать, то будет собираться только release версия библиотеки,
#        # либо только отладочная. Связано это с тем, что файлы будут замещать друг друга.
#        CONFIG (debug, debug|release) {
#                OBJECTS_DIR = build/debug
#        } else {
#                OBJECTS_DIR = build/release
#        }

#     # Подключаем заголовочные файлы библиотеки
#        INCLUDEPATH += Library
#        CONFIG(debug, debug|release) {
#            # Подключаем debug-версии библиотек для разных платформ
#            win32: LIBS += -Llib -lLibraryd1
#            unix: LIBS += -Llib -L. -lLibraryd -Wl,-rpath,lib -Wl,-rpath,.
#        } else {
#            # Подключаем release-версии библиотек для разных платформ
#            win32: LIBS += -Llib -lLibrary1
#            unix: LIBS += -Llib -L. -lLibrary -Wl,-rpath,lib -Wl,-rpath,.
#        }


