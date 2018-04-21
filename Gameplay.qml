import QtQuick 2.0
import QtQuick.Window 2.0
import QtQml 2.2

Rectangle {
    property bool if_end: false
    id: gameplay
    width: 1000
    height: 800
    color:"black"
    signal gameLose
    property int live: 3
Ball {
  id: hero
  color:"white"
   x:0
   y:parent.height-30
   width: 25
   height: 25

 }

Ball {
   color:"red"
   x: 100
   y:75

}
Ball {

   color:"yellow"
   x: 150
   y:82
   width: 18
   height: 18
}
Ball {

   id:enemy

   color:"red"
   x: 654
   y:148

}
Rectangle{
    color: "gray"
    x:0
    y:0
    width: 1000
    height: 40
}
Rectangle{
    color: "#22eb22"
    x:952
    y:41
    width: 50
    height: 105
}
Timer{
    id:tmr
    property int timeout: 60
    running: timeout > 0 && (parent.visible === true)
    repeat: true
    interval: 10
    onTriggered: {
       // change_enemy_position(*enemy.x, *enemy.y, block_pos1, block_pos2)
        if(enemy.x<720&&!(if_end))
         enemy.x+=5
        else if(enemy.x>=720)
         if_end = true

        if (enemy.x>606&&if_end)
            enemy.x-=5
        else if(enemy.x<=606)
            if_end = false


//        for (var i = 0; i < ins.count; i++) {
//            ins.objectAt(i).visible = false
        }
    }


Block{
    id:block1
    x:0
    y:739
    width: 108
    height: 15


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
    y: 305
    color: "#ff0000"
}

Ball {
    x: 869
    y: 521
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
    x: 600
    y: 337
    color: "#ff0000"
}

Ball {
    x: 480
    y: 71
     color: "#ff0000"
}

Ball {
    x: 372
    y: 428
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

Block{
    x: 170
    y: 605
    width: 16
    height: 204

}

Block {
    x: 66
    y: 583
    width: 14
    height: 111

}

Block{
    x: 484
    y: 593
    width: 16
    height: 204

}

Block {
    x: 715
    y: 593
    width: 16
    height: 204

}

Block {
    x: 623
    y: 733
    width: 108
    height: 15

}

Block {
    x: 832
    y: 420
    width: 16
    height: 166

}

Block {
    x: 832
    y: 583
    width: 91
    height: 15

}

Block {
    x: 832
    y: 420
    width: 91
    height: 15

}

Block {
    x: 666
    y: 314
    width: 16
    height: 204

}

Block {
    x: 544
    y: 501
    width: 132
    height: 17

}

Block {
    x: 616
    y: 265
    width: 204
    height: 15

}

Block {
    id:wall_1
    x: 838
    y: 41
    width: 16
    height: 85

}

Block{
    id:wall_0
    x: 606
    y: 47
    width: 14
    height: 261

}

Block {
    x: 529
    y: 132
    width: 91
    height: 15

}

Block {
    x: 456
    y: 41
    width: 12
    height: 165

}

Block {
    x: 372
    y: 133
    width: 15
    height: 74

}

Block {
    x: 278
    y: 133
    width: 109
    height: 13

}

Block {
    x: 278
    y: 41
    width: 14
    height: 105

}

Block {
    x: 0
    y: 38
    width: 1002
    height: 10

}

Block {
    x: 0
    y: 173
    width: 80
    height: 15

}

Block {
    x: 0
    y: 264
    width: 272
    height: 16

}

Block{
    x: 257
    y: 265
    width: 15
    height: 106

}

Block {
    x: 409
    y: 314
    width: 13
    height: 204

}

Ball {
    x: 326
    y: 60
    color: "#ff0000"
}

Block {
    x: 79
    y: 47
    width: 15
    height: 74

}

Block {
    x: 100
    y: 358
    width: 172
    height: 13

}

Block {
    x: 0
    y: 502
    width: 272
    height: 16

}

Block {
    x: 278
    y: 681
    width: 14
    height: 119

}

Block {
    x: 278
    y: 675
    width: 144
    height: 13

}

Block {
    x: 408
    y: 681
    width: 14
    height: 73

}

Ball {
    x: 298
    y: 770
    color: "#ff0000"
}

Block {
    x: 806
    y: 207
    width: 14
    height: 73

}

Block {
    x: 729
    y: 200
    width: 91
    height: 15

}

Block {
    id: wall_2
    x: 729
    y: 142
    width: 14
    height: 73

}

Ball {
    x: 197
    y: 314
    color: "#ff0000"
}
Text{
    id: mylive
    x: 948
    text: qsTr(live.toString())
    font.pointSize: 24
    font.family: "Times New Roman"
    y:0
    width: 24
    height: 35
    color:"white"
}


MouseArea{
anchors.fill: parent
hoverEnabled: true
cursorShape: Qt.BlankCursor
onPositionChanged: {

    hero.x = mouseX-12
    hero.y = mouseY-12
    if (hero.x < 0 && parent.live!=0) {//проверка выхода за границы
       parent.live--;
        hero.x = 0
        hero.y = parent.height-30
    }
    else if (parent.live == 0)
        gameplay.gameLose();


    // if(hero.x === block.x )

}

Ball {
    x: 23
    y: 80
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 424
    y: 63
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 578
    y: 75
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 374
    y: 710
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 777
    y: 233
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 652
    y: 75
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 872
    y: 471
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 608
    y: 471
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 667
    y: 767
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 595
    y: 710
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 327
    y: 627
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 8
    y: 710
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 66
    y: 542
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 113
    y: 627
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 132
    y: 433
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 407
    y: 260
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 327
    y: 164
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 966
    y: 614
    width: 18
    height: 18
    color: "#ffff00"
}

Ball {
    x: 880
    y: 746
    width: 18
    height: 18
    color: "#ffff00"
}

if(hero.x === block1.x && parent.live!=0){
    parent.live--
    hero.x = 0
    hero.y = parent.height-30
    }
       else if (parent.live == 0)
             gameplay.gameLose();

}

Ball {
    x: 31
    y: 321
    width: 18
    height: 18
    color: "#ffff00"
}

}


