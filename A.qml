import QtQuick 2.0
import QtMultimedia 5.0
import  "../../"
Item {
    id: r
    width: parent.width*0.6
    height: parent.height*0.6
    anchors.centerIn: parent
    clip:true

    property url source
    property alias t1: txt1.text
    property alias t2: txt2.text
    Rectangle{
        id:xC
        width: r.width-app.fs
        height: r.height-app.fs
        anchors.centerIn: r
        color: app.c3
        border.width: 2
        border.color: app.c2
        radius: app.fs*0.25
        clip: true
        Flickable{
            width: parent.width-app.fs*2
            height: parent.height-app.fs*2
            anchors.horizontalCenter: parent.horizontalCenter
            contentWidth: parent.width-app.fs*2
            contentHeight: txt1.height+txt2.height
            boundsBehavior: Flickable.StopAtBounds
            Column{
                spacing: app.fs
                //anchors.horizontalCenter: parent
                Item{height: app.fs*0.5}
                Text {
                    id: txt1
                    width: r.width-app.fs*2
                    font.pixelSize: app.fs
                    color: app.c2
                    textFormat: Text.RichText
                    wrapMode: Text.WordWrap
                }
                Text {
                    id: txt2
                    font.pixelSize: app.fs
                    color: app.c4
                    width: r.width-app.fs*2
                    wrapMode: Text.WordWrap
                }
            }
        }
        Rectangle{
            width: r.width*0.8
            height: app.fs
            anchors.horizontalCenter: xC.horizontalCenter
            anchors.bottom: xC.bottom
            anchors.bottomMargin: app.fs*0.5
            color: xC.color
            border.width: 1
            border.color: xC.border.color
            radius: 4
            SeekControlFinal{
                id: seekSlider1
                width: parent.width*0.8
                anchors.centerIn: parent
                verFondo: true
                onClickSeek: {
                    mp1.seek(position);
                    mp1.play()
                }
                onSeekingChanged: {
                    if(seeking){
                        mp1.pause()
                    }else{
                        mp1.play()
                    }
                }

                onSeekPositionChanged: {
                    mp1.seek(playPosition)
                    mp1.play()
                }
            }

        }
        Boton{
            w:app.fs
            h:w
            tp:2
            d:'Cerrar'
            c:app.c3
            b:app.c2
            t:'X'
           anchors.right: parent.right
           anchors.rightMargin: app.fs*0.5
           anchors.top: parent.top
           anchors.topMargin: app.fs*0.5
            onClicking: r.visible=false
        }
        MediaPlayer {
                id: mp1
                property bool p
                property bool paused
                //volume: 0
                onPlaying: {
                    p=true
                    paused=false
                    app.mp.stop()
                }
                onPaused: {
                    p=false
                    paused=true
                }
                onStopped: {
                    p=false
                    paused=false
                }
                onStatusChanged: {
                    if(status===MediaPlayer.EndOfMedia){

                    }
                }
                onPositionChanged: {
                        seekSlider1.playPosition=position
                }
                onDurationChanged: {
                    seekSlider1.duration = duration
                }
            }


    }

    Component.onCompleted: {
        mp1.source=r.source
        mp1.play()
    }
}
