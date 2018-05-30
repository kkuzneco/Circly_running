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
        x: 345
        y: 546
        Image {
            x: 0
            y: -25
            source: "Кнопка EXIT.png"
            width: 300
            height: 150
            sourceSize.width: 0
        }
        MouseArea {
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.fill: parent
            onClicked: {
               Qt.quit()
            }
        }
    }


    Button {
        x: 345
        y: 400
        Image {
            x: -12
            y: -22
            source: "Кнопка MENU.png"
            width: 300
            height: 150
            sourceSize.width: 0
        }
        MouseArea {
            anchors.rightMargin: 9
            anchors.bottomMargin: -13
            anchors.leftMargin: -9
            anchors.topMargin: 13
            anchors.fill: parent
            onClicked: {
                wingame.gotoMenu()
            }
        }
    }
}
