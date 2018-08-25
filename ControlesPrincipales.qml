import QtQuick 2.0
import QtMultimedia 5.0
import Qt.labs.folderlistmodel 2.2
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
    property alias rb: rb
    property bool cpvisible: rb.opacity===1.0
    //property alias xt: xt
    MediaPlayer {
        id: mediaPlayer
        property bool p
        property bool paused
        volume: appSettings.volume
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
            xT.setPx()
        }
        onDurationChanged: {
            seekSlider.duration = duration            
        }
        Component.onCompleted: app.mp=mediaPlayer
    }

    Timer{
        id:trb
        running: false
        repeat: true
        interval: 3500
        onRunningChanged: {
            if(running){
                rb.opacity=1.0
            }
        }
        onTriggered: {
            rb.opacity=0.0
        }
    }
    SeekControlFinal{
        id: seekSlider
        width: parent.width*0.8
        height: rb.opacity===1.0?app.fs:app.fs*0.5
        anchors.horizontalCenter: parent.horizontalCenter
       y:rb.opacity===1.0?0:r.height-app.fs
        verFondo: true
        onClickSeek: {
            app.verAyuda=false
            trb.restart()
            mediaPlayer.seek(position);
            r.p=false
        }
        onSeekingChanged: {
            app.verAyuda=false
            trb.restart()
            if(seeking){
                mediaPlayer.pause()
            }else{
                mediaPlayer.play()
            }
        }

        onSeekPositionChanged: {
            app.verAyuda=false
            trb.restart()
            mediaPlayer.seek(playPosition)
        }
    }
    MouseArea{
        anchors.fill: r
        enabled: rb.opacity!==1.0
        hoverEnabled: true
        onEntered: rb.opacity=1.0
        onPositionChanged: rb.opacity=1.0
        onClicked: {
            rb.opacity=1.0
        }
    }
    //Xt{id:xt}
    Text {
        id: txtInfo
        font.pixelSize: app.fs*0.5
        anchors.bottom: r.bottom
        anchors.bottomMargin: app.fs*0.1
        anchors.left: seekSlider.left
        color: app.c4
        text: 'Modulo '+parseInt(app.mod+1)+' de '+app.cantmod+'\nSecciòn '+parseInt(app.s+1)+' de '+app.cants
        visible:rb.opacity===1.0
    }

    Row{
        anchors.left: r.left
        anchors.leftMargin: app.fs*0.1
        anchors.bottom: r.bottom
        anchors.bottomMargin: app.fs*0.1
        spacing: app.fs*0.5
        Boton{
            w:app.fs
            h:w
            tp:3
            d:'Confugurar'
            c:app.c3
            b:app.c2
            t:'\uf013'
            onClicking: xC.visible=!xC.visible
            opacity: xC.visible?1.0:0.5
        }
    }

    Rectangle{
        width: rb.width+app.fs
        height: rb.height+app.fs
        anchors.centerIn: rb
        color: app.c3
        radius: app.fs*0.5
        border.width: 2
        border.color: app.c2
        opacity: 0.5
        visible: rb.opacity===1.0
        enabled: rb.opacity===1.0
    }
    Row{
        id:rb
        anchors.horizontalCenter: r.horizontalCenter
        anchors.bottom: r.top
        anchors.bottomMargin: app.fs*2
        spacing: app.fs
        opacity: 0.0
        onOpacityChanged: {
            if(opacity===1.0){
                trb.restart()
            }
        }
        Boton{//Actualizar Qmlandia
            id:btnUpdate
            w:visible?app.fs*1.5:0
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
            width: btnUpdate.visible?app.fs:0
            height: width
        }
        Boton{
            w:app.fs*1.5
            h:w
            tp:3
            d:'Ir al Modulo Anterior'
            c:app.c3
            b:app.c2
            t:'\uf049'
            onClicking: {
                trb.restart()
                toBackMod()
            }
            enabled: app.mod!==0
            opacity: enabled?1.0:0.5
        }
        Boton{
            w:app.fs*1.5
            h:w
            tp:3
            d:'Ir a Secciòn Anterior'
            c:app.c3
            b:app.c2
            t:'\uf04a'
            onClicking: {
                trb.restart()
                back()
            }
            enabled: app.s!==0||app.mod!==0
            opacity: enabled?1.0:0.5
        }
        Boton{
            w:app.fs*1.5
            h:w
            tp:3
            d:'Reproducir'
            c:app.c3
            b:app.c2
            t: !mediaPlayer.paused?app.mp.position===app.mp.duration?'\uf0e2':'\uf04c':'\uf04b'
            onClicking:{
                trb.restart()
                play()
            }
        }
        Boton{
            w:app.fs*1.5
            h:w
            tp:3
            d:'Ir a la Secciòn Siguiente'
            c:app.c3
            b:app.c2
            t:'\uf04e'
            onClicking: {
                trb.restart()
                next()
            }
            enabled: app.mod<app.cantmod-1||app.s<app.cants-1
            opacity: enabled?1.0:0.5
        }
        Boton{
            w:app.fs*1.5
            h:w
            tp:3
            d:'Ir al Modulo Siguiente'
            c:app.c3
            b:app.c2
            t:'\uf050'
            onClicking: {
                trb.restart()
                toNextMod()
            }
            enabled: app.mod<app.cantmod-1
            opacity: enabled?1.0:0.5
        }
        Boton{
            w:app.fs*1.5
            h:w
            tp:3
            d:'Ayuda de esta secciòn'
            c:app.c3
            b:app.c2
            t:'\uf128'
            onClicking: {
                rb.opacity=0.0
                app.verAyuda=!app.verAyuda
            }
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
        appSettings.pcs=app.cants
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
            app.s=appSettings.pcs-1
        }

    }
    function toBackMod(){
        mediaPlayer.stop()
        app.mod--
        app.prepMod()
    }
    function toNextMod(){
        appSettings.pcs=app.cants
        app.s=0
        app.mod++
        app.prepMod()
    }
}
