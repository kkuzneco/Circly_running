import QtQuick 2.0

Rectangle {
    width: 200
    height: 50
    color: "LightBlue"

    radius: 10

   /* property alias text: text.text
    signal clicked
*/
    Text {
        id: text
        text: "Button"
        anchors.centerIn: parent
        font.pointSize: 20
        color: "Pink"
        //font: "Game of Thrones KG"
    }

    MouseArea {
        anchors.fill: parent
        onPressed: parent.color = "Blue"
        onReleased: parent.color = "LightBlue"
        onClicked: parent.clicked()
    }
}
