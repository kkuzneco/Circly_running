import QtQuick 2.0
import QtQuick.Window 2.0
import QtQml 2.2
import checking1 1.0
import check_enemies 1.0
Rectangle {
    property int money: 0
    property bool if_end: false
    id: gameplay
    width: 1000
    height: 800
    color:"black"
    signal gameLose
    signal gameWin
    signal loselive
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
        id:enemy
        color:"red"
        x: 654
        y:148
    }

    Rectangle{
        color: "#22eb22"
        x:952
        y:41
        width: 50
        height: 105
    }

Rectangle{
    color: "gray"
    x:0
    y:0
    width: 1000
    height: 40
}
Rectangle{
    id:exitgame
    color: "#8b8b8b"
    x:952
    y:41
    width: 50
    height: 105
}
CheckingPosition{
    id:check1
}
CheckingPosition1{
    id:check_enemies
}

Timer{
    id:tmr
    property int timeout: 60
    running: timeout > 0 && (parent.visible === true)
    repeat: true
    interval: 10
    onTriggered: {
        if(check1.check_pos(hero.x, hero.y))
        {
            hero.x=10
            hero.y = parent.height-30
            gameplay.loselive()
        }
        if(check_enemies.check_enm(hero.x, hero.y))
        {
            hero.x=10
            hero.y = parent.height-30
            gameplay.loselive()
        }
        if(check1.if_coin(hero.x, hero.y)){
            money+=10;
            coin2.visible = false
        }

        if(money>=10)
            exitgame.color = "green"
        else
             exitgame.color = "gray"
    }
}


    Block{
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
        id: b2
        x: 66
        y: 583
        width: 14
        height: 111
    }

    Block{
        id: b17
        x: 484
        y: 593
        width: 16
        height: 204
    }

    Block {
        id: b24
        x: 715
        y: 593
        width: 16
        height: 204
    }

    Block {
        id: b23
        x: 623
        y: 733
        width: 108
        height: 15
    }

    Block {
        id: b30
        x: 832
        y: 420
        width: 16
        height: 166
    }

    Block {
        id: b31
        x: 832
        y: 583
        width: 91
        height: 15
    }

    Block {
        id: b29
        x: 832
        y: 420
        width: 91
        height: 15
    }

    Block {
        id: b22
        x: 666
        y: 314
        width: 16
        height: 204
    }

    Block {
        id: b20
        x: 544
        y: 501
        width: 132
        height: 17
    }

    Block {
        id: b21
        x: 616
        y: 265
        width: 204
        height: 15
    }

    Block {
        id:b28
        x: 838
        y: 41
        width: 16
        height: 85
    }

    Block{
        id:b19
        x: 606
        y: 47
        width: 14
        height: 261
    }

    Block {
        id: b18
        x: 529
        y: 132
        width: 91
        height: 15
    }

    Block {
        id: b16
        x: 456
        y: 41
        width: 12
        height: 165
    }

    Block {
        id: b12
        x: 372
        y: 133
        width: 15
        height: 74
    }

    Block {
        id: b11
        x: 278
        y: 133
        width: 109
        height: 13
    }

    Block {
        id: b10
        x: 278
        y: 41
        width: 14
        height: 105
    }

    Block {
        id: b32
        x: 0
        y: 38
        width: 1002
        height: 10
    }

    Block {
        id: b8
        x: 0
        y: 173
        width: 80
        height: 15
    }

    Block {
        id: b7
        x: 0
        y: 264
        width: 272
        height: 16
    }

    Block{
        id: b6
        x: 257
        y: 265
        width: 15
        height: 106
    }

    Block {
        id: b5
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
        id: b9
        x: 79
        y: 47
        width: 15
        height: 74
    }

    Block {
        id: b4
        x: 100
        y: 358
        width: 172
        height: 13
    }

    Block {
        id: b3
        x: 0
        y: 502
        width: 272
        height: 16
    }

    Block {
        id: b13
        x: 278
        y: 681
        width: 14
        height: 119
    }

    Block {
        id: b14
        x: 278
        y: 675
        width: 144
        height: 13
    }

    Block {
        id: b15
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
        id: b25
        x: 806
        y: 207
        width: 14
        height: 73
    }

    Block {
        id: b26
        x: 729
        y: 200
        width: 91
        height: 15
    }

    Block {
        id: b27
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
    MouseArea {
    anchors.fill: parent
    hoverEnabled: true
    cursorShape: Qt.BlankCursor
    onPositionChanged: {
        hero.x = mouseX-12
        hero.y = mouseY-12
   }
    }
    Coin {
        id: coin2
        x: 8
        y: 60
    }

    Image {
        x: 0
        y: 0
        height: 35
        width: 35
        source: "Монета.png"
    }

    Text{
        id: coins
        x: 40
        y: 0
        width: 24
        height: 35
        color:"white"
        text: qsTr(money.toString())
        font.pointSize: 24
        font.family: "Times New Roman"
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

    Coin {
        id:coin1
        x: 240
        y: 60
    }

    Coin {
        x: 8
        y: 233
    }

    Coin {
        x: 182
        y: 133
    }

    Coin {
        x: 143
        y: 292
    }

    Coin {
        x: 16
        y: 396
    }

    Coin {
        id: coin
        x: 130
        y: 637
    }

    Coin {
        x: 17
        y: 546
    }

    Coin {
        x: 182
        y: 449
    }

    Coin {
        x: 320
        y: 561
    }

    Coin {
        x: 208
        y: 751
    }

    Coin {
        x: 367
        y: 705
    }

    Coin {
        x: 786
        y: 739
    }

    Coin {
        x: 535
        y: 643
    }

    Coin {
        x: 616
        y: 770
    }

    Coin {
        x: 638
        y: 71
    }

    Coin {
        x: 762
        y: 231
    }

    Coin {
        x: 562
        y: 65
    }

    Coin {
        x: 303
        y: 96
    }

    Coin {
        x: 711
        y: 332
    }

    Coin {
        x: 616
        y: 455
    }

    Coin {
        x: 936
        y: 694
    }

    Coin {
        x: 859
        y: 455
    }

    Coin {
        x: 408
        y: 195
    }

    Coin {
        x: 567
        y: 158
    }

    Coin {
        x: 880
        y: 207
    }

    Coin {
        x: 464
        y: 346
    }

}


