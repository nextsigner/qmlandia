import QtQuick 2.0
Rectangle {
    id: r
    color: "#930c0c"
    radius: app.fs*0.1
    border.width: 2
    border.color: 'black'
    width: app.width
    height: app.height*0.1
    Row{
        anchors.centerIn: parent
        spacing: app.fs*0.5
        Boton{
            w:r.height*0.65
            h:w
            tp:3
            d:'Ir al inicio'
            c:app.c3
            b:app.c2
            t:'\uf049'
            onClicking: toStart()
            enabled: app.mod>0&&app.s>0
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
            t: !app.cs?'\uf04b':app.cs.audio.p?'\uf04c':'\uf04b'
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
    }
    function play(){
        if(app.mod===0){
            app.mod=1
        }else{
            if(app.cs.audio.p){
                app.cs.audio.pause()
            }else{
                app.cs.audio.play()
            }

        }
    }
    function next(){
        app.s++
    }
    function back(){
        app.s--
    }
    function toStart(){
        app.s=0
    }
    function toEnd(){
        app.s=app.cants-1
    }
}