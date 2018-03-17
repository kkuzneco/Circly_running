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
    Text {
        id: texttowin
        text: qsTr("You win!")
        anchors.centerIn: parent
        font.pointSize: 20
        color: "Pink"
    }

}
