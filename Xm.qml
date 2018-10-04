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
            t:'\uf0c9'
            onClicking: {
                trb2.restart()
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
            onClicking: {
                xC.visible=!xC.visible
                trb2.restart()
            }
            }
        Boton{
            w:app.fs
            h:w
            tp:3
            d:'Ver LogView'
            c:app.c3
            b:app.c2
            t:''
            onClicking: {
                trb2.restart()
                appSettings.logViewVisible=!appSettings.logViewVisible
            }
            Text {
                id: txtb100
                text: '\uf188'
                font.pixelSize: app.fs*0.7
                color:appSettings.logViewVisible?'red':app.c3
                font.family: 'FontAwesome'
                anchors.centerIn: parent
            }
        }

        Boton{
            w:app.fs
            h:w
            tp:3
            d:appSettings.cbs?'Modo Ver Segmentos de Audio':'Modo Normal'
            c:app.c3
            b:app.c2
            t:appSettings.cbs?'1':'0'
            onClicking: {
                trb2.restart()
                appSettings.cbs=!appSettings.cbs
            }
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
