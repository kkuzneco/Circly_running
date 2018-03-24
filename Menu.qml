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

            Image {
                source: "кнопка PLAY.png"
                width: 300
                height: 100
            }
       MouseArea{
           anchors.fill: parent
            onClicked: {
          menu.gameStarted()
        }
       }
        }
        Button {
            Image {
                source: "Кнопка EXIT.png"
                width: 300
                height: 100
            }
       MouseArea{
           anchors.fill: parent
            onClicked: {
                Qt.quit()
           }
       }
  }

}
}

