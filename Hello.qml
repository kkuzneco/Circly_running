import QtQuick 2.0
import QtQuick.Window 2.0
import QtQml 2.2

Rectangle{
    signal begin
    width: 1000
    height: 800
    color:"black"
    Rectangle{
    Text {
        id: texBal
        text: qsTr("Собери определенное количество монет, не задевая стены и врагов.
Управляй мышкой.
Чтобы продолжить
НАЖМИ НА ШАРИК !")
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
    Ball {
      color:"white"
       x:0
       y:parent.height-30
       width: 25
       height: 25
       MouseArea{
           anchors.fill: parent
       onClicked:
           hello.begin()
    }

 }
 }


