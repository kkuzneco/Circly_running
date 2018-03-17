import QtQuick 2.0
import QtQuick.Layouts 1.0

Rectangle
{
    id: menu
    visible: true
    width: 1000
    height: 800

    signal gameStarted
    Image {
        id: back
        source: "back.jpg"
        width: 1000
        height: 800
    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 50

        Button {
            text : "Play"
             onClicked: menu.gameStarted()
        }

        Button {
         text:"Exit"
         onClicked: {
           Qt.quit()
                }
  }

}
}
