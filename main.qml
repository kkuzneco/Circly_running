import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 1000
    height: 800
    title: qsTr("Circly running")

    Rectangle {
        width: 1000
        height: 800
        visible: true
    }
    Menu {
        id: menu
       // onGameStarted: parent.state = "gameplay"
    }
}
