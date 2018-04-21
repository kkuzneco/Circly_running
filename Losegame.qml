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
                x: 350
                y: 527
                width: 304
                height: 153
                source: "Кнопка EXIT.png"

            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                   Qt.quit()
                }
            }
          }
        Button {
            Image {
                x: 350 ///////////////////////////////////////////////ЕЁ НЕ ВИДНО!!!!!!!!!!!!!!!!!!!!!!!!!
                y: 345
                width: 300
                height: 153
                z: 1
                source: "Кнопка MENU.png"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                   losegame.gotoMenu()
                }
            }

          }
}
    }
}
