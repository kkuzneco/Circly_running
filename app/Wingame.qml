import QtQuick 2.0
import QtQuick.Window 2.0
import QtQml 2.2
Rectangle{

    signal gotoMenu
    id: wingame
    visible: true
    width: 1000
    height: 800
    Image {
        id: back
        source: "WINGAME.jpg"
        width: 1000
        height: 800
    }

    Button {
        Image {
            x: 350
            y: 550
            source: "Кнопка EXIT.png"
            width: 300
            height: 150
            sourceSize.width: 0
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
            x: 350
            y: 375
            source: "Кнопка MENU.png"
            width: 300
            height: 150
            sourceSize.width: 0
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                wingame.gotoMenu()
            }
        }
    }
}
