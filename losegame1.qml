import QtQuick 2.0


    Rectangle
    {
        visible: true
        width: 1000
        height: 800

        Image {
            id: back
            source: "background.jpg"
            width: 1000
            height: 800
        }
        Text {
            id: texttowin
            text: qsTr("You lose!")
            anchors.centerIn: parent
            font.pointSize: 44
            color: "Pink"
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

    }
