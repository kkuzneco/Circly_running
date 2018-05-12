import QtQuick 2.9
import QtQuick.Window 2.2
import QtMultimedia 5.0

Window {
    id:scene
    visible: true
    width: 1000
    height: 800
    title: qsTr("Circly running")
  Item {
        anchors.fill: parent

    Menu {
        id: menu
        anchors.fill: parent
        onGameStarted: {
            parent.state = "hello";
        }
    }
   Gameplay {
            id: gameplay
            anchors.fill: parent
            onGameLose: { parent.state = "losegame" }
            onLoselive: {
                gameplay.live--;
                if(gameplay.live!=0)
                parent.state = "hello";
            else parent.state = "losegame" }
            onGameWin: {parent.state = "wingame"}
        }

   Losegame {
       id: losegame
        anchors.fill: parent
        onGotoMenu:{parent.state = "menu"
        gameplay.live = 3}
   }

   Wingame {
       id: wingame
        anchors.fill: parent
        onGotoMenu:{parent.state = "menu"
          gameplay.live = 3
       }
   }
   Hello {
       anchors.fill: parent.Center
       id: hello
       onBegin: {parent.state = "gameplay"}
    }
       states: [
        State {
            name: "menu"
            PropertyChanges { target: menu; visible: true }
            PropertyChanges { target: gameplay; visible: false }
            PropertyChanges { target: losegame; visible: false }
            PropertyChanges { target: hello; visible: false}
            PropertyChanges { target: wingame; visible: false }
        },
        State {
            name: "gameplay"
            PropertyChanges { target: menu; visible: false }
            PropertyChanges { target: gameplay; visible: true }
            PropertyChanges { target: losegame; visible: false }
             PropertyChanges { target: hello; visible: false}
             PropertyChanges { target: wingame; visible: false }
        },
        State{
            name: "losegame"
            PropertyChanges { target: menu; visible: false }
            PropertyChanges { target: gameplay; visible: false }
            PropertyChanges { target: losegame; visible: true}
            PropertyChanges { target: hello; visible: false}
            PropertyChanges { target: wingame; visible: false }
        },
        State{
            name: "hello"
            PropertyChanges { target: menu; visible: false }
            PropertyChanges { target: gameplay; visible: false}
            PropertyChanges { target: losegame; visible: false}
            PropertyChanges { target: hello; visible: true}
            PropertyChanges { target: wingame; visible: false }

        },
         State{
               name: "wingame"
               PropertyChanges { target: menu; visible: false }
               PropertyChanges { target: gameplay; visible: false }
               PropertyChanges { target: losegame; visible: false}
               PropertyChanges { target: hello; visible: false}
               PropertyChanges { target: wingame; visible: true }
           }

    ]

        state: "menu"
    }
}
