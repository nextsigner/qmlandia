import QtQuick 2.0
//import  "../../../"
Item {
    id: r
    width: app.an
    height: app.al-app.fs*2
    onVisibleChanged: {
        if(visible){
            //app.mp.source="./"+app.gitfolder+"/a1.m4a"
            //app.pa=pa
        }
    }

    Text {
        id: tttt
        text: "text101"
        anchors.centerIn: r
        font.pixelSize: 30
        color:app.c2
    }


    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {

        }
    }
    Component.onCompleted: {
        console.log('Modulo Git en acciòn.')
    }
}
