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
    //signal listado()
    FolderListModel{
        id:fl
        showHidden: false
        showDotAndDotDot: false
        showFiles: false
        sortField: FolderListModel.Name
        //folder: r.cm? xP.folder=Qt.platform.os!=='windows'?appsDir+'/qmlandia':'file:///'+appsDir+'/qmlandia': xP.folder=Qt.platform.os!=='windows'?appsDir+'/qmlandia':'file:///'+appsDir+'/qmlandia/'+am[app.mod]
        //folder: Qt.platform.os!=='windows'&&Qt.platform.os!=='osx'&&Qt.platform.os!=='android'?app.qlandPath+'/qmlandia':'file://'+app.qlandPath+'/qmlandia'
        //folder: Qt.platform.os!=='android'?'file://'+app.qlandPath+'/qmlandia':'file://'+app.qlandPath

        onCountChanged: {
            tfl.restart()
        }
        Component.onCompleted: {
            if(Qt.platform.os==='linux'){
                fl.folder=app.qlandPath+'/qmlandia'
            }else if(Qt.platform.os==='android'){
                fl.folder='file://'+app.qlandPath
            }else if(Qt.platform.os==='windows'){
                fl.folder='file:///'+app.qlandPath
            }else{
                fl.folder='file:///'+app.qlandPath
                //fl.folder='E:/nsp'
            }
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
                if(''+fl.get(i, 'fileName')!=='h'&&''+fl.get(i, 'fileName')!=='.git'){
                    r.am.push(fl.get(i, 'fileName'))
                }
            }
            app.cantmod=r.am.length
            console.log('1Total de Modulos: '+r.am.length)
            console.log('1Modulos: '+r.am)
            r.cm=true
        }
    }
}
