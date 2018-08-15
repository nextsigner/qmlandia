import QtQuick 2.0
import QtMultimedia 5.0
Rectangle {
    id: r
    color: "transparent"
    radius: app.fs*0.1
    border.width: 2
    border.color: 'black'
    width: app.an
    height: app.fs*2
    property url source: mediaPlayer.source
    property alias btnUD: btnUpdate
    property alias mp: mediaPlayer
    MediaPlayer {
            id: mediaPlayer
            property bool p
            property bool paused
            //volume: 0
            onPlaying: {
                p=true
                paused=false
                app.verAyuda=false
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
                    app.verAyuda=true
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
        anchors.bottom: r.bottom
        anchors.bottomMargin: app.fs*0.1
        anchors.left: seekSlider.left
        color: app.c4
        text: 'Modulo '+parseInt(app.mod+1)+' de '+app.cantmod+'\nSecciòn '+parseInt(app.s+1)+' de '+app.cants
        //visible: app.mod!==0
    }
    Row{
        anchors.horizontalCenter: r.horizontalCenter
        anchors.bottom: r.bottom
        anchors.bottomMargin: app.fs*0.1
        spacing: app.fs*0.5
        Boton{//Actualizar Qmlandia
            id:btnUpdate
            w:app.fs
            tp:3
            h: w
            t: '\uf021'
            d:'Actualizar Qmlandia desde GitHub.com'
            b: up ? 'red':app.c2
            c: up ? 'white':'#000'
            property bool up: false
            visible: up
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
            width: app.fs
            height: width
        }
        Boton{
            w:app.fs
            h:w
            tp:3
            d:'Ir al inicio'
            c:app.c3
            b:app.c2
            t:'\uf049'
            onClicking: toStart()
            enabled: app.mod!==0||app.s!==0
            opacity: enabled?1.0:0.5
        }
        Boton{
            w:app.fs
            h:w
            tp:3
            d:'Retroceder'
            c:app.c3
            b:app.c2
            t:'\uf04a'
            onClicking: back()
            enabled: app.s!==0||app.mod!==0
            opacity: enabled?1.0:0.5
        }
        Boton{
            w:app.fs
            h:w
            tp:3
            d:'Reproducir'
            c:app.c3
            b:app.c2
            t: !mediaPlayer.paused?app.mp.position===app.mp.duration?'\uf0e2':'\uf04c':'\uf04b'
            onClicking:{
                play()
            }
        }
        Boton{
            w:app.fs
            h:w
            tp:3
            d:'Ir al siguiente'
            c:app.c3
            b:app.c2
            t:'\uf04e'
            onClicking: next()
            enabled: app.mod<app.cantmod-1||app.s<app.cants-1
            opacity: enabled?1.0:0.5
        }
        Boton{
            w:app.fs
            h:w
            tp:3
            d:'Ir al final'
            c:app.c3
            b:app.c2
            t:'\uf050'
            onClicking: toEnd()
            enabled: app.mod<app.cantmod-1
            opacity: enabled?1.0:0.5
        }
        Boton{
            w:app.fs
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
           if(mediaPlayer.p){
                mediaPlayer.pause()
           }else{
                mediaPlayer.play()
           }
    }
    function next(){
        mediaPlayer.stop()
        if(app.s===app.cants-1){
            app.s=0
            app.mod++
        }else{
            app.s++
        }

    }
    function back(){
            mediaPlayer.stop()
            if(app.s>0){
                app.s--
            }else{
                if(app.mod>0){
                    app.mod--
                }
                app.s=mods.children[mod].getC()
            }

    }
    function toStart(){
        mediaPlayer.stop()
        app.mod=0
        app.s=0
        appSettings.umod=0
        appSettings.ucs=0
    }
    function toEnd(){
        app.mod=app.cantmod-1
        app.s=app.cants-1;
    }
}
