import QtQuick 2.0
import QtQuick.Window 2.0
import QtQml 2.2

Rectangle {
    id: gameplay
    width: 1000
    height: 800
    color:"black"
 //   property int counter:0
Ball {
  id: hero
  color:"white"
   x:0
   y:parent.height-30
 }
Ball {
   color:"red"
   x: 200
   y:100
}

Rectangle{
    color: "gray"
    x:0
    y:0
    width: 1000
    height: 40
}
Image{
    width: 30
    height: 30
    source:"heart.png"
    x: parent.width - 33
    y:5
}

}
