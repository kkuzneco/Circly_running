import QtQuick 2.0
import QtQuick.Window 2.0
import QtQml 2.2
Rectangle
    {
        signal gotoMenu
        id: losegame
        visible: true
        width: 1000
        height: 800

        Image {
            x: 0
            y: 0
            source: "Фон для меню.jpg"
            width: 1000
            height: 800
            visible: true

        Text {
            id: texttowin
            text: qsTr("You lost!")
            font.family: "Times New Roman"
            anchors.verticalCenterOffset: -159
            anchors.horizontalCenterOffset: 17
            anchors.centerIn: parent
            font.pointSize: 100
            color: "Red"

        }
        Button {

            Image {
                x: 341
                y: 514
                width: 304
                height: 153
                source: "Кнопка EXIT.png"

            }
            MouseArea {
                anchors.rightMargin: -345
                anchors.bottomMargin: -559
                anchors.leftMargin: 341
                anchors.topMargin: 514
                anchors.fill: parent
                onClicked: {
                   Qt.quit()
                }
            }
          }
        Button {
            x: 350
            y: 382
            Image {
                x: -8
                y: -25
                source: "Кнопка EXIT.png"
                width: 300
                height: 150
            }

            MouseArea {
                y: 1
                height: 101
                hoverEnabled: false
                z: 1
                anchors.fill: parent
                onClicked: {
                   losegame.gotoMenu()
                }
            }

          }
}
    }
