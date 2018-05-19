import QtQuick 2.0


Rectangle
{
    id:win
    x: 0
    visible: true
    width: 1000
    height: 800
    signal goToMenu

    Image {
        id: back
        source: "WINGAME.jpg"
        width: 1000
        height: 800
    }

    Button {
        id:ex
        x: 386
        y: 581
        width: 277
        height: 125
        Image {
            x: -14
            y: -16
            source: "Кнопка EXIT.png"
            width: 300
            height: 150
            sourceSize.width: 0
        }

        MouseArea {

            anchors.fill: parent.Center
            onClicked: {
               Qt.quit()
            }
        }
    }
    Button {
        x: 373
        y: 431
        Image {
            x: -8
            y: -25
            source: "Кнопка MENU.png"
            width: 321
            height: 149
            sourceSize.width: 0
        }

        MouseArea {
            x: 0
            y: -2
            anchors.rightMargin: -24
            anchors.bottomMargin: -50
            anchors.leftMargin: 24
            anchors.topMargin: 50
            anchors.fill: parent.Center
            onClicked: {
               win.goToMenu()
            }
        }
    }
}
