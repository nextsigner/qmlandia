import QtQuick 2.0

Item {
    id: seekControl
    width: parent.width
    height: app.fs
    property int duration: 0
    property int playPosition: 0
    property int seekPosition: 0
    property bool enabled: true
    property bool seeking: false
    property bool verFondo: false

    signal clickSeek(int position)

    onSeekPositionChanged: {
        seekControl.playPosition = seekPosition
    }



    Rectangle {
        id: background
        width: parent.width
        height: progressBar.height
        color: "#cccccc"
        opacity: 0.5
        radius: parent.height / 15
        anchors.verticalCenter: progressHandle.verticalCenter
        MouseArea{
            width:  parent.width
            height: parent.height*4
            anchors.verticalCenter: parent.verticalCenter
            onClicked: {
                var posActual = seekControl.seekPosition;
                var irA = mouseX * seekControl.duration / background.width
                clickSeek(irA)
            }
        }
    }

    Rectangle {
        id: progressBar
        anchors { left: parent.left;}
        width: seekControl.duration == 0 ? 0 : background.width * seekControl.playPosition / seekControl.duration
        color: "red"
        opacity: 1.0
        height: parent.height/4
        anchors.verticalCenter: progressHandle.verticalCenter
    }

    Text {
        width: 90
        anchors { left: parent.left; leftMargin: 10 }
        anchors.bottom: parent.top
        anchors.bottomMargin: height/2
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: "white"
        smooth: true
        text: formatTime(playPosition)
        font.pixelSize: app.tamanioDeBotones*0.5
    }

    Text {
        width: 90
        anchors { right: parent.right; rightMargin: 10 }
        anchors.bottom: parent.top
        anchors.bottomMargin: height/2
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        color: "white"
        smooth: true
        text: formatTime(duration)
        font.pixelSize: app.tamanioDeBotones*0.5
    }

    Rectangle {
        id: progressHandle
        height: seekControl.parent.remoto? parent.height*2 : parent.height
        //width: parent.height / 2
        width: parent.height
        radius: width*0.5
        color: "red"
        opacity: 0.8
        anchors.verticalCenter: progressBar.verticalCenter
        x: seekControl.duration == 0 ? 0 : seekControl.playPosition / seekControl.duration * background.width
        MouseArea {
            id: mouseArea
            anchors { horizontalCenter: parent.horizontalCenter; bottom: parent.bottom }
            height: parent.height
            width: parent.height * 2
            enabled: seekControl.enabled
            drag {
                target: progressHandle
                axis: Drag.XAxis
                minimumX: 0
                maximumX: background.width
            }
            onPressed: {
                seekControl.seeking = true;
            }
            onCanceled: {
                seekControl.seekPosition = progressHandle.x * seekControl.duration / background.width
                seekControl.seeking = false
            }
            onReleased: {
                seekControl.seekPosition = progressHandle.x * seekControl.duration / background.width
                clickSeek(seekControl.seekPosition)
                seekControl.seeking = false
                mouse.accepted = true
            }
        }
    }

    Timer { // Update position also while user is dragging the progress handle
        id: seekTimer
        repeat: true
        interval: 300
        running: seekControl.seeking
        onTriggered: {
            seekControl.seekPosition = progressHandle.x*seekControl.duration / background.width
        }
    }

    function formatTime(timeInMs) {
        if (!timeInMs || timeInMs <= 0) return "0:00"
        var seconds = timeInMs / 1000;
        var minutes = Math.floor(seconds / 60)
        seconds = Math.floor(seconds % 60)
        if (seconds < 10) seconds = "0" + seconds;
        return minutes + ":" + seconds
    }
}