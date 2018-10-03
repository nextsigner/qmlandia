import QtQuick 2.0
import QtMultimedia 5.0
import Qt.labs.folderlistmodel 2.2
Rectangle {
    id: r
    color: "transparent"
    width: app.an
    height: app.fs*2
    clip:rb.opacity!==1.0
    property url source: mediaPlayer.source
    property alias mp: mediaPlayer
    property alias rb: rb
    property bool cpvisible: rb.opacity===1.0
    property var asec: [] //Array Seconds
    property int  nasec: 0
    MediaPlayer {
        id: mediaPlayer
        property bool p
        property bool paused
        volume: appSettings.volume
        onPlaying: {
            p=true
            paused=false
            app.verAyuda=false
            //setAsecs()
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
            if(r.nasec!==r.asec.length-1){
                setAsec(position)
            }
        }
        onDurationChanged: {
            seekSlider.duration = duration
            setAsecs()
        }
        Component.onCompleted: app.mp=mediaPlayer
        function setAsec(p){
            if(p>parseInt(r.asec[r.nasec+1]*1000)){
                r.nasec++
            }
        }
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
            //r.p=false
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
    Rectangle{
        id:xAsecs
        anchors.fill: seekSlider
        color: 'transparent'
        visible: !appSettings.cbs
    }
    Text {
        id: txtInfo
        font.pixelSize: app.fs*0.5
        anchors.bottom: r.bottom
        anchors.bottomMargin: app.fs*0.1
        anchors.horizontalCenter: seekSlider.horizontalCenter
        color: app.c4
        text: 'Modulo '+parseInt(app.mod+1)+' de '+app.cantmod+' Secciòn '+parseInt(app.s+1)+' de '+app.cants
        visible:rb.opacity===1.0
    }

    /*Row{
        anchors.left: r.left
        anchors.leftMargin: app.fs*0.25
        anchors.bottom: r.bottom
        anchors.bottomMargin: app.fs*0.25
        spacing: app.fs*0.5
        visible: rb.opacity===1.0
        Boton{
            w:app.fs
            h:w
            tp:3
            d:'Indice'
            c:app.c3
            b:app.c2
            t:'\uf022'
            onClicking: {
                xM.opacity=xM.opacity===0.0?1.0:0.0
            }
        }
        }*/

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
            d:!appSettings.cbs?'Ir a Secciòn Anterior':'Ir al Anterior Item de Secciòn'
            c:app.c3
            b:app.c2
            t:'\uf04a'
            onClicking: {
                trb.restart()
                back()
            }
            enabled: !appSettings.cbs?app.s!==0||app.mod!==0:r.nasec>0
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
            d:!appSettings.cbs?'Ir a la Secciòn Siguiente':'Ir al Siguiente Item de Secciòn'
            c:app.c3
            b:app.c2
            t:'\uf04e'
            onClicking: {
                trb.restart()
                next()
            }
            enabled: !appSettings.cbs?app.mod<app.cantmod-1||app.s<app.cants-1:r.nasec<r.asec.length
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
    onAsecChanged: {
        //setAsecs()
    }
    function setAsecs(){
        for(var i=0;i<xAsecs.children.length;i++){
            xAsecs.children[i].destroy(1)
        }
        for(var i=0;i<r.asec.length;i++){
            var c='import QtQuick 2.0
                        Rectangle{
                                width: 4
                                height: parent.height
                                color:"red"
                                Rectangle{
                                    width: app.fs
                                    height: width
                                    color:"red"
                                    radius:width*0.5
                                    anchors.bottom:parent.top
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    visible: rb.opacity===1.0
                                    Text{
                                        text:""+parseInt('+i+'+1)
                                        font.pixelSize:app.fs*0.6
                                        color: "white"
                                        anchors.centerIn: parent
                                    }
                                    MouseArea{
                                           anchors.fill: parent
                                           onClicked:{
                                                    r.nasec='+i+'
                                                    mediaPlayer.seek(r.asec[r.nasec]*1000)
                                            }
                                    }
                                }
                        }
        '
            var obj = Qt.createQmlObject(c, xAsecs, 'xasecs')
            var d1=mediaPlayer.duration-(r.asec[i]*1000)
            var d2=d1/mediaPlayer.duration
            obj.x=seekSlider.width*(1.0-d2)
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
        if(!appSettings.cbs){
            appSettings.pcs=app.cants
            mediaPlayer.stop()
            if(app.s===app.cants-1){
                app.s=0
                app.mod++
            }else{
                app.s++
            }
        }else{
            r.nasec++
            mediaPlayer.seek(r.asec[r.nasec]*1000)
        }
    }
    function back(){
        if(!appSettings.cbs){
            mediaPlayer.stop()
            if(app.s>0){
                app.s--
            }else{
                if(app.mod>0){
                    app.mod--
                }
                app.s=appSettings.pcs-1
            }
        }else{
            r.nasec--
            mediaPlayer.seek(r.asec[r.nasec]*1000)
        }
    }
    function toBackMod(){
        if(!appSettings.cbs){
            mediaPlayer.stop()
            app.mod--
            app.prepMod()
        }else{
            r.nasec-=2
            mediaPlayer.seek(r.asec[r.nasec]*1000)
        }
    }
    function toNextMod(){
        if(!appSettings.cbs){
            appSettings.pcs=app.cants
            app.s=0
            app.mod++
            app.prepMod()
        }else{
            r.nasec+=2
            mediaPlayer.seek(r.asec[r.nasec]*1000)
        }
    }
}
