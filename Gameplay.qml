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
   x: 295
   y:100
}

Ball {
   color:"red"
   x: 100
   y:75
}
Ball {
   color:"red"
   x: 742
   y:186
}
Rectangle{
    color: "gray"
    x:0
    y:0
    width: 1000
    height: 40
}
Rectangle{
    color: "green"
    x:962
    y:41
    width: 40
    height: 59
}
Image{
    width: 30
    height: 30
    source:"heart.png"
    x: parent.width - 33
    y:5
}

Ball {
    x: 952
    y: 373
    color: "#ff0000"
}

Ball {
    x: 907
    y: 437
    color: "#ff0000"
}

Ball {
    x: 654
    y: 675
    color: "#ff0000"
}

Ball {
    x: 795
    y: 610
    color: "#ff0000"
}

Ball {
    x: 646
    y: 373
    color: "#ff0000"
}

Ball {
    x: 479
    y: 47
    width: 25
    height: 0
    color: "#ff0000"
}

Ball {
    x: 480
    y: 52
    color: "#ff0000"
}

Ball {
    x: 488
    y: 450
    color: "#ff0000"
}

Ball {
    x: 8
    y: 200
    color: "#ff0000"
}

Ball {
    x: 100
    y: 694
    color: "#ff0000"
}

Ball {
    x: 208
    y: 546
    color: "#ff0000"
}

}
