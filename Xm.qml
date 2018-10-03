import QtQuick 2.0
Item{
    id:r
    width: app.fs*2
    height: app.al-app.fs*2
    anchors.left: r.left
    anchors.leftMargin: app.fs*0.25
    anchors.verticalCenter: parent.verticalCenter
    opacity:0.0
    enabled:r.opacity>0.0
    Behavior on opacity{NumberAnimation{duration:500}}
    onOpacityChanged: {
        if(opacity===1.0){
            trb2.restart()
        }
    }
    Timer{
        id:trb2
        running: false
        repeat: true
        interval: 5000
        onRunningChanged: {
            if(running){
                r.opacity=1.0
            }
        }
        onTriggered: {
            r.opacity=0.0
        }
    }
    MouseArea{
        anchors.fill: r
        enabled: r.opacity===1.0
        hoverEnabled: true
        onEntered: r.opacity=1.0
        onPositionChanged: trb2.restart()
    }
    Column{
        anchors.centerIn: parent
        spacing: app.fs*0.5
        Boton{
            w:app.fs
            h:w
            tp:3
            d:'Indice'
            c:app.c3
            b:app.c2
            t:'\uf022'
            onClicking: {
                app.mod=0
                if(app.s!==1){
                    app.s=1
                }else{
                    app.s=1
                    app.prepMod()
                }
            }
        }
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
        Boton{
            w:app.fs
            h:w
            tp:3
            d:'Ver Segmentos de Audio'
            c:app.c3
            b:app.c2
            t:'\uf188'
            onClicking: appSettings.logViewVisible=!appSettings.logViewVisible
            opacity: appSettings.logViewVisible?1.0:0.5
        }

        Boton{
            w:app.fs
            h:w
            tp:3
            d:'Ver Segmentos de Audio'
            c:app.c3
            b:app.c2
            t:'A'
            onClicking: appSettings.cbs=!appSettings.cbs
            opacity: appSettings.cbs?1.0:0.5
            }
        Boton{
            w:app.fs
            h:w
            tp:3
            d:'Apagar'
            c:app.c3
            b:app.c2
            t:'\uf011'
            onClicking: Qt.quit()
            }
    }
}
