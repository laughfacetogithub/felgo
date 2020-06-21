import QtQuick 2.0
import Felgo 3.0
EntityBase{
    id:player
    EntityBase{
        id:fireplayer_idle
        TexturePackerAnimatedSprite{
            id: idle_head
            source: "../assets/img/CharAssets.json"
            frameNames:["fire_head_idle0000", "fire_head_idle0001", "fire_head_idle0002", "fire_head_idle0003", "fire_head_idle0004", "fire_head_idle0005", "fire_head_idle0006", "fire_head_idle0007", "fire_head_idle0008", "fire_head_idle0009", "fire_head_idle0010", "fire_head_idle0011", "fire_head_idle0012", "fire_head_idle0013", "fire_head_idle0014", "fire_head_idle0015", "fire_head_idle0016", "fire_head_idle0017", "fire_head_idle0018"]
            frameRate: 30
        }
        TexturePackerAnimatedSprite{
            id: idle_fire_legs
            anchors.top: idle_head.bottom
            source: "../assets/img/CharAssets.json"
            frameNames: ["fire_legs_idle0000"]
            frameRate: 30
        }
    }
}
