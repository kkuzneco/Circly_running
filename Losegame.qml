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
            source: "Losegame.jpg"
            width: 1000
            height: 800
            visible: true


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
