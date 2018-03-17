import QtQuick 2.0

Rectangle {

    width: 300
    height: 100

    radius: 25
    opacity: 0.9
    gradient: Gradient {
    GradientStop {
        position: 0
        color:"#3db9e1"
    }
    GradientStop {
        position: 1
        color: "#f395f3"
                 }
    }
    property alias text: text.text
    signal clicked

    Text {
        id: text
        text: "Button"
        anchors.centerIn: parent
        font.pointSize: 30
        color: "black"
        //font: "Game of Thrones KG"
    }

    MouseArea {
        anchors.fill: parent
    //    onPressed: parent.color = "white"
      //  onReleased: parent.color = "pink";
        onClicked: parent.clicked()
    }
}

