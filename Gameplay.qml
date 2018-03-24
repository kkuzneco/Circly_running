import QtQuick 2.0
import QtQuick.Window 2.0
import QtQml 2.2

Rectangle {
    id: gameplay

    signal gameStopped

 //   property int counter:0

    Image {
        id: fon
        source: "blackbackground.jpg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }

}
