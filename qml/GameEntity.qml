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
    Rectangle {
        id: gameentity
        width: 960
        height: 640
        Column{
            TexturePackerAnimatedSprite{
                id:entityBcg
                width: gameentity.width/2
                height: gameentity.height/2
                anchors.fill: parent
                source: "../assets/img/TempleAssets.json"
                frameNames: ["BackGround0000"]
            }
            TexturePackerAnimatedSprite{
                id:entityBcg2
                width: gameentity.width/2
                height: gameentity.height/2
                anchors.fill: parent
                source: "../assets/img/TempleAssets.json"
                frameNames: ["BackGround0000"]
            }
        }

        Rectangle {
          id: myButton1
          x: 30
          y: 550
          width: 80
          height: 80
          color: mouseArea.pressed ? "#546632" : "#32665a"

          property alias labelText: label.text
          signal clicked

          Text {
            id: label
            text: "LEFT"
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
          x: 130
          y: 550
          width: 80
          height: 80
          color: mouseArea2.pressed ? "#546632" : "#32665a"

          property alias labelText: label.text
          signal clicked

          Text {
            id: label2
            text: "RIGHT"
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
            y: 460
//            anchors.centerIn: scene
            spacing: 10
            Rectangle {
              id: myButton3
//              x: 800
//              y: 460
              width: 80
              height: 80
              color: mouseArea3.pressed ? "#546632" : "#32665a"

              property alias labelText: label3.text
              signal clicked

              Text {
                id: label3
                text: "UP"
                color: "white"
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
            Rectangle {
              id: myButton4
//              x: 800
              y: 90
              width: 80
              height: 80
              color: mouseArea4.pressed ? "#546632" : "#32665a"

              property alias labelText: label4.text
              signal clicked

              Text {
                id: label4
                text: "DOWN"
                color: "white"
                anchors.centerIn: parent
              }

              MouseArea {
                id: mouseArea4
                anchors.fill: parent
                onClicked: {
    //              myButton.clicked()
                }
              }
            }
        }

    }
}
