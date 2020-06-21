import QtQuick 2.0
import Felgo 3.0

EntityBase {

    entityId: "entity"
    entityType: "customEntity"

//    Rectangle {
//        width: 50
//        height: 50
//        color: "red"
//    }
    Row {
      id: tileRow
      MyPlatform {
        pos: "left"
        image: "../assets/InitBacground/GameNameElements.png"
      }
      Repeater {
        model: size-2
        MyPlatform {
          pos: "mid"
          image: "../assets/InitBacground/GameNameElements.png"
        }
      }
      MyPlatform {
        pos: "right"
        image: "../assets/InitBacground/GameNameElements.png"
      }
    }
    Rectangle {
        id: gameentity
        width: 960
        height: 640

            TexturePackerAnimatedSprite{
                id:entityBcg
                anchors.fill: parent
                source: "../assets/img/TempleAssets.json"
                frameNames: ["BackGround0000"]
            }
            Rectangle {
                id: bottomStone
                x: -10
                y: 540
                width: 980
                height: 110
            TexturePackerAnimatedSprite{
                id:entityBcg2
                width: bottomStone.width
                height: bottomStone.height
                x: 50
                y: 50
                anchors.fill: parent
                source: "../assets/img/PopupAssets.json"
                frameNames: ["DeviceItemRenderer0000"]
            }
            }

        Rectangle {
          id: myButton1
          x: 150
          y: 550
          width: mouseArea.pressed ? 71 : 73
          height: mouseArea.pressed ? 71 : 73
          radius: 15
          color: mouseArea.pressed ? "#546632" : "#32665a"

          property alias labelText: label.text
          signal clicked

          Text {
            id: label
            text: "LEFT"
            font.bold: true
            font.pointSize: 15
            style: Text.Outline
            color: "white"
            anchors.centerIn: parent
          }

          MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
//              myButton.clicked()
            }
          }
        }

        Rectangle {
          id: myButton2
          x: 250
          y: 550
          width: mouseArea2.pressed ? 71 : 73
          height: mouseArea2.pressed ? 71 : 73
          radius: 15
          color: mouseArea2.pressed ? "#546632" : "#32665a"

          property alias labelText: label.text
          signal clicked

          Text {
            id: label2
            text: "RIGHT"
            font.bold: true
            font.pointSize: 15
            style: Text.Outline
            color: "white"
            anchors.centerIn: parent
          }

          MouseArea {
            id: mouseArea2
            anchors.fill: parent
            onClicked: {
//              myButton.clicked()
            }
          }
        }
        Column {
            id: column
            x: 800
            y: 550
//            anchors.centerIn: scene
            spacing: 10
            Rectangle {
              id: myButton3
//              x: 800
//              y: 90
              width: mouseArea3.pressed ? 71 : 73
              height: mouseArea3.pressed ? 71 : 73
              radius: 15
              color: mouseArea3.pressed ? "#546632" : "#32665a"

              property alias labelText: label3.text
              signal clicked

              Text {
                id: label3
                text: "UP"
                color: "white"
                font.pointSize: 15
                font.bold: true
                style: Text.Outline
                anchors.centerIn: parent
              }

              MouseArea {
                id: mouseArea3
                anchors.fill: parent
                onClicked: {
    //              myButton.clicked()
                }
              }
            }

        }

    }
}
