import QtQuick 2.0
import QtMultimedia 5.0
Rectangle {
    id: r
    color: "transparent"
    radius: app.fs*0.1
    border.width: 2
    border.color: 'black'
    width: app.width
    height: app.height*0.1
    property url source: mediaPlayer.source
    property alias btnUD: btnUpdate
    MediaPlayer {
            id: mediaPlayer
            property bool p
            onPlaying: p=true
            onPaused: p=false
            onStopped: p=false
            onStatusChanged: {
                if(status===MediaPlayer.EndOfMedia){
                    if(app.s!==-1){
                        app.s++
                    }

                }
            }
            onPositionChanged: {
                    seekSlider.playPosition=position
            }
            onDurationChanged: {
                seekSlider.duration = duration
            }
            Component.onCompleted: app.mp=mediaPlayer
        }
    SeekControlFinal{
        id: seekSlider
        width: parent.width*0.8
        anchors.horizontalCenter: parent.horizontalCenter
        //anchors.bottom: parent.bottom
        verFondo: true         
        onClickSeek: {
            mediaPlayer.seek(position);
        }
        onSeekingChanged: {
            if(seeking){
                mediaPlayer.pause()
            }else{
                mediaPlayer.play()
            }
        }

        onSeekPositionChanged: {
            mediaPlayer.seek(playPosition)
        }
    }
    Text {
        id: txtInfo
        font.pixelSize: app.fs*0.5
        anchors.top: seekSlider.bottom
        anchors.topMargin: 0-app.fs*0.5
        anchors.left: seekSlider.left
        color: app.c4
        text: 'Modulo '+app.mod+' de '+app.cantmod+'\nSecciòn '+parseInt(app.s+1)+' de '+app.cants
        visible: app.mod!==0
    }
    Row{
        anchors.centerIn: parent
        spacing: app.fs*0.5
        Boton{//Actualizar Qmlandia
            id:btnUpdate
            w:r.height*0.65
            tp:3
            h: w
            t: '\uf021'
            d:'Actualizar Qmlandia desde GitHub.com'
            b: up ? 'red':app.c2
            c: up ? 'white':'#000'
            property bool up: false
            onClicking: {
                var j
                var c
                if(up){
                    j=appsDir+'/temp_config.json'
                    c='{"mode":"-git", "arg1": "https://github.com/nextsigner/qmlandia.git"}'
                    unik.setFile(j, c)
                    unik.restartApp()
                }else{
                    j=appsDir+'/config.json'
                    c='{"mode":"-folder", "arg1": "'+appsDir+'/qmlandia'+'"}'
                    unik.setFile(j, c)
                    unik.restartApp()
                }
            }
        }
        Item{
            width: r.height*0.65
            height: width
        }
        Boton{
            w:r.height*0.65
            h:w
            tp:3
            d:'Ir al inicio'
            c:app.c3
            b:app.c2
            t:'\uf049'
            onClicking: toStart()
            enabled: app.mod>0
            opacity: enabled?1.0:0.5
        }
        Boton{
            w:r.height*0.65
            h:w
            tp:3
            d:'Retroceder'
            c:app.c3
            b:app.c2
            t:'\uf04a'
            onClicking: back()
            enabled: app.mod>0&&app.s>0
            opacity: enabled?1.0:0.5
        }
        Boton{
            w:r.height*0.65
            h:w
            tp:3
            d:'Reproducir'
            c:app.c3
            b:app.c2
            t: mediaPlayer.p?'\uf04c':'\uf04b'
            onClicking: play()
        }
        Boton{
            w:r.height*0.65
            h:w
            tp:3
            d:'Reproducir'
            c:app.c3
            b:app.c2
            t:'\uf04e'
            onClicking: next()
            enabled: app.mod>0&&app.s<app.cants
            opacity: enabled?1.0:0.5
        }
        Boton{
            w:r.height*0.65
            h:w
            tp:3
            d:'Ir al final'
            c:app.c3
            b:app.c2
            t:'\uf050'
            onClicking: toEnd()
            enabled: app.mod>0&&app.s<app.cants
            opacity: enabled?1.0:0.5
        }
        Boton{
            w:r.height*0.65
            h:w
            tp:3
            d:'Ayuda de esta secciòn'
            c:app.c3
            b:app.c2
            t:'\uf128'
            onClicking: app.verAyuda=!app.verAyuda
            opacity: app.verAyuda?1.0:0.5
        }
    }
    function play(){
        if(app.mod===0){
            app.mod=1
            app.s=0
            app.showCab()
        }else{
           if(mediaPlayer.p){
                mediaPlayer.pause()
           }else{
                mediaPlayer.play()
           }

        }
    }
    function next(){
        mediaPlayer.stop()
        app.s++
    }
    function back(){
            mediaPlayer.stop()
           app.s--
    }
    function toStart(){
        mediaPlayer.stop()
        app.mod=0
        app.s=0
    }
    function toEnd(){
        app.s=app.cants-1
    }
}
