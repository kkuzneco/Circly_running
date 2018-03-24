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
        source: "Фон для меню.jpg"
        width: 1000
        height: 800
    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 50

        Button {

            visible: true
            Image {
                x: 0
                y: 8
                source: "кнопка PLAY.png"
                width: 300
                height: 100
                opacity: 1
            }
            // onClicked: menu.gameStarted()
        }

        Button {
            Image {
                source: "кнопка PLAY.png"
                width: 300
                height: 100
            }
//            parent.clicked(): {
//                Qt.quit()
//            }
  }

}
}