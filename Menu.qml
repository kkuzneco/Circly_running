import QtQuick 2.0

Rectangle
{
    visible: true
    width: 1000
    height: 800

    Image {
        id: back
        source: "back.jpg"
        width: 1000
        height: 800
    }

    ColumnLayout {
       spacing: 5
       anchors.centerIn: parent

        Button {
            Text: "Play"
          //  onClicked: menu.gameStarted()
        }
        Button {
          text: "Settings"
        //  onClicked: menu.openSettings()
                }
        Button {
           text: "Exit"
         //  onClicked: {
           // Qt.quit()
                }
        }
     }
  }
