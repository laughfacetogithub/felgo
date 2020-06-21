import QtQuick 2.0
import Felgo 3.0
Scene {
    id:gamescene
    TexturePackerAnimatedSprite{
        id:p
        width: 30
        height: 35
        anchors.centerIn: parent
        source: "../assets/img/font.json"
        frameNames: ["P"]
    }
    TexturePackerAnimatedSprite{
        id:a
        width: 30
        height: 35
        anchors.left: p.right
        anchors.top: p.top
        source: "../assets/img/font.json"
        frameNames: ["A"]
    }
    TexturePackerAnimatedSprite{
        id:l
        anchors.left: a.right
        width: 30
        height: 35
        anchors.top: p.top
        source: "../assets/img/font.json"
        frameNames: ["L"]
    }
    TexturePackerAnimatedSprite{
        id:y
        anchors.left: l.right
        width: 30
        height: 35
        anchors.top: p.top
        source: "../assets/img/font.json"
        frameNames: ["Y"]
    }
}
