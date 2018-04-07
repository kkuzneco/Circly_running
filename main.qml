import QtQuick 2.9
import QtQuick.Window 2.2
import QtMultimedia 5.0

Window {
    visible: true
    width: 1000
    height: 800
    title: qsTr("Circly running")
    Item {
        anchors.fill: parent
//    Rectangle {
//        width: 1000
//        height: 800
//        visible: true
//   }
    Menu {
        id: menu
        anchors.fill: parent
        onGameStarted: {
            parent.state = "gameplay";
        //    playMusic.play()
    }
    }
   Gameplay {
            id: gameplay
            anchors.fill: parent
          //  onGameStopped: { parent.state = "menu"; playMusic.stop() }
        }
    states: [
        State {
            name: "menu"
            PropertyChanges { target: menu; visible: true }
            PropertyChanges { target: gameplay; visible: false }

        },
        State {
            name: "gameplay"
            PropertyChanges { target: menu; visible: false }
            PropertyChanges { target: gameplay; visible: true }

        }
    ]

    state: "menu"
}
}
