import QtQuick 2.0
import Qt.labs.folderlistmodel 2.2
Item{
    id:r
    width: r.parent.width
    height: app.al-app.fs*2
    visible: app.verAyuda&&r.parent.visible
    property alias folder: fl.folder
    property var am: []
    property var ars: []
    property bool cm: false
    signal listado()
    FolderListModel{
        id:fl2
        showFiles: false
        sortField: FolderListModel.Name
        onFolderChanged:  {
            r.ars=[]
            for(var i=0;i<count;i++){
                    r.ars.push(fl2.get(i, 'fileName'))
            }
            app.cants=r.ars.length
            console.log('Total de Secciones: '+r.ars.length)
            console.log('Secciones: '+r.ars)
            app.s=appSettings.usec
            app.mod=appSettings.umod
            listado()
        }
    }

    FolderListModel{
        id:fl
        showFiles: false
        sortField: FolderListModel.Name
        folder: r.cm? xP.folder=Qt.platform.os!=='windows'?appsDir+'/qmlandia':'file:///'+appsDir+'/qmlandia': xP.folder=Qt.platform.os!=='windows'?appsDir+'/qmlandia':'file:///'+appsDir+'/qmlandia/'+am[app.s]
        onCountChanged: {
            tfl.restart()
        }
    }
    Timer{
        id:tfl
        running: true
        repeat: false
        interval: 1000
        onTriggered: {
            r.am=[]
            for(var i=0;i<fl.count;i++){
                if(''+fl.get(i, 'fileName')!=='h'){
                    r.am.push(fl.get(i, 'fileName'))
                }
            }
            app.cantmod=r.am.length
            console.log('1Total de Modulos: '+r.am.length)
            console.log('1Modulos: '+r.am)
            fl2.folder=fl.folder+'/'+r.am[app.s]
            r.cm=true
        }
    }
}
