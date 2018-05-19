import QtQuick 2.0
import QtQuick.Window 2.0
import QtQml 2.2
Rectangle{

    signal gotoMenu
    id: losegame
    visible: true
    width: 1000
    height: 800

    Image {
        x: 0
        y: 0
        source: "Losegame.jpg"
        width: 1000
        height: 800
        visible: true

        Button {
            x: 363
            y: 534
            Image {
                x: -4
                y: -22
                width: 304
                height: 153
                source: "Кнопка EXIT.png"
            }
            MouseArea {
                anchors.rightMargin: 0
                anchors.bottomMargin: -31
                anchors.leftMargin: 0
                anchors.topMargin: -17
                anchors.fill: parent
                onClicked: {
                    Qt.quit()
                }
            }
        }

        Button {
            x: 350
            y: 367
            Image {
                x: 15
                y: -26
                width: 300
                height: 153
                z: 1
                source: "Кнопка MENU.png"

                MouseArea {
                    anchors.rightMargin: 11
                    anchors.bottomMargin: -5
                    anchors.leftMargin: -11
                    anchors.topMargin: 5
                    anchors.fill: parent
                    onClicked: {
                        losegame.gotoMenu()
                    }
                }
            }
        }
    }
}
