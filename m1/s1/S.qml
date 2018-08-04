import QtQuick 2.0
import QtMultimedia 5.0
Item {
    id: r
    width: app.width
    height: app.height
    property alias audio: mp
    property bool reproduciendo: mp.p
    Text {
        id: txt1
        text: "import QtQuick 2.0"
        font.pixelSize: app.fs
        color: 'white'
    }
    MediaPlayer {
            id: mp
            source: "audio.m4a"
            property bool p
            onPlaying: p=true
            onPaused: p=false
            onStopped: p=false
    }
}
