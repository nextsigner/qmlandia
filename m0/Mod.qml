import QtQuick 2.0
Item {
    id: r
    width: app.width
    height: app.height*0.8
    Column{
        spacing: app.fs*2
        anchors.centerIn: parent
        Text {
            id: txt1
            font.pixelSize: app.fs*2
            color: app.c2
            textFormat: Text.RichText
        }
        Text {
            id: txt2
            font.pixelSize: app.fs
            color: app.c2
            textFormat: Text.RichText
        }
        Text {
            id: txt3
            font.pixelSize: app.fs
            color: app.c2
            textFormat: Text.RichText
        }
    }
    Component.onCompleted: {
        var t1='<b>Tutorial QML</b>'
        txt1.text=t1
        var t2='<b>Bienvenido al Curso sobre QML</b>'
        txt2.text=t2
        var t3='Este curso cuenta con '+app.cantmod+' modulos.'
        txt3.text=t3
    }
}

