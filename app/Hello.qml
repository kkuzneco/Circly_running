import QtQuick 2.0
import QtQuick.Window 2.0
import QtQml 2.2

Rectangle{
    signal begin
    width: 1000
    height: 800
    color:"black"
    z: 0
    Rectangle{
        Text {
        id: texBal
        text: qsTr("Собери определенное количество монет, не задевая стены и врагов.
Управляй мышкой.
Чтобы продолжить
НАЖМИ НА ЗЕЛЁНЫЙ КРУГ !")
        anchors.verticalCenterOffset: 419
        anchors.horizontalCenterOffset: 493
        font.family: "Times New Roman"
        anchors.centerIn: parent
        font.pointSize: 24
        color: "White"

    }

    border.color: "#cd74f0"
    visible:true
}
 Rectangle {
        x: 8
        y: 767
        width: 25
        height: 25
        radius: 13
        color: "#0cf70c"

      MouseArea{
           anchors.fill: parent
       onClicked:
           hello.begin()
    }
 }
}


