import QtQuick 2.0
import com.myself 1.0
Item {
    id: chelovechek
    width:50
    height:50
    property int xVelocity: 0
    property int yVelocity: 0
    SpriteSequence {
        id:ss
        anchors.centerIn: parent
        width:36
        height:46
        Sprite{
            name: "stand"
            source:"image/stand.png"
            frameHeight:46
            frameWidth:36
                frameCount:1
                frameDuration:120
        }

        Sprite{
            name: "right"
            source: "image/Run_right.png"

            frameHeight:46
            frameWidth:36

            frameCount:6
            frameDuration:120

        }

        Sprite{
            name: "attack"
            source: "image/Fight.png"

            frameHeight:45
            frameWidth:46

            frameCount:2
            frameDuration:120
            to: {"stand" : 1}

        }
        Sprite{
            name: "left"
            source: "image/Run_left.png"

            frameHeight:46
            frameWidth:36

            frameCount:6
            frameDuration:120

        }
    }

    Timer {
        interval: 5
        triggeredOnStart: true
        running: true
        repeat: true
        onTriggered: {
            if (chelovechek.x + xVelocity < 1240 && chelovechek.x + xVelocity > 0)
            chelovechek.x += xVelocity

            if (chelovechek.y + yVelocity < 670 && chelovechek.y + yVelocity > 0)
            chelovechek.y += yVelocity

        }
    }


    Keys.onPressed: {
        if (event.isAutoRepeat){
            return;
        }

        switch (event.key) {
        case Qt.Key_Left:
            xVelocity -= 1
            ss.jumpTo("left")
            break;
        case Qt.Key_Right:
            xVelocity += 1
            ss.jumpTo("right")
            break;
        case Qt.Key_Down:
            yVelocity += 1
            break;
        case Qt.Key_Up:
            yVelocity -= 1
            break;
        case Qt.Key_Q:
            ss.jumpTo("attack")
            break;

        }
    }

    Keys.onReleased: {
        if (event.isAutoRepeat) {
            return;
        }
        switch (event.key) {
        case Qt.Key_Left:
            xVelocity += 1
            ss.jumpTo("stand")
            break;
        case Qt.Key_Right:
            xVelocity -= 1
            ss.jumpTo("stand")
            break;
        case Qt.Key_Down:
            yVelocity -= 1
            break;
        case Qt.Key_Up:
            yVelocity += 1
            break;

        }
    }




}























