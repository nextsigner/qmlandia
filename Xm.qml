//import QtQuick 2.0
//import Qt.labs.folderlistmodel 2.2
//Item{
//    id:r
//    width: r.parent.width
//    height: app.al-app.fs*2
//    visible: app.verAyuda&&r.parent.visible
//    property alias folder: fl.folder
//    FolderListModel{
//        id:fl
//        showFiles: false
//        sortField: FolderListModel.Name
//        onFolderChanged:  {
//            var v=0;
//            var code='import QtQuick 2.0\n'
//            var ci=''
//            var cc=''
//            for(var i=0;i<count;i++){
//                if(''+fl.get(i, 'fileName')!=='h'){
//                    ci+='import "'+fl.get(i, 'fileName')+'" as Mod'+fl.get(i, 'fileName')+'\n'
//                    cc+='     Mod'+fl.get(i, 'fileName')+'.Mod{visible:app.mod==='+v+'}\n'
//                    v++
//                    console.log('Carpeta Modulo: '+fl.get(i, 'fileName'))
//                }
//            }
//            code+=ci
//            code+='Item{\n'
//            code+='anchors.fill:parent\n'
//            code+=cc
//            code+='}\n'
//            app.addMods(code,v)
//        }
//    }
//}

import QtQuick 2.0
Item{
    id:r
    width: app.fs*2
    height: app.al-app.fs*2
    anchors.left: r.left
    anchors.leftMargin: app.fs*0.25
    anchors.verticalCenter: parent.verticalCenter
    opacity:0.0
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
        interval: 3500
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
