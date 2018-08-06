import QtQuick 2.0
import QtMultimedia 5.0
import "s0" as S0
import "s1" as S1
import "s2" as S2
import "s3" as S3
Item {
    id: r
    width: app.width
    height: app.height*0.8
    property alias audio: mp
    onVisibleChanged: {
        if(visible){
            app.cants=ss.children.length
            app.cs=ss.children[0]
        }
    }
    Row{
        id: ss
        S0.S{visible:app.s===0}
        S1.S{visible:app.s===1}
        S2.S{visible:app.s===2}
        S3.S{visible:app.s===3}
    }
    MediaPlayer {
        id: mp
        source: "a1.m4a"
        property bool p
        onPlaying: p=true
        onPaused: p=false
        onStopped: p=false
    }
    Component.onCompleted: {
        //app.cs=ss.children[0]
    }
}

