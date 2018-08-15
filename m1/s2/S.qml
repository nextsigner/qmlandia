import QtQuick 2.0
import QtMultimedia 5.0
Item {
    id: r
    width: app.an
    height: app.al-app.fs*2
    onVisibleChanged: {
        if(visible){
            app.mp.source=''
        }
    }
    Column{
        anchors.centerIn: r
        Text {
            id: txt1
            text:''
            width: r.width*0.6
            height: contentHeight
            font.pixelSize: app.fs
            color: app.c2
            wrapMode: Text.WordWrap
        }
    }   
    Component.onCompleted: {
        var at='Estamos creando màs modulos y secciones para este curso.
        Proximamente iremos agregando màs contenido al mismo.'
        txt1.text=at
    }
}
