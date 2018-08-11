import QtQuick 2.0
import QtMultimedia 5.0
import  "../../"
Item {
    id: r
    width: parent.width*0.6
    height: parent.height*0.6
    anchors.centerIn: parent

    property url source
    property alias t1: txt1.text
    property alias t2: txt2.text
    Rectangle{
        width: r.width-app.fs
        height: r.height-app.fs
        anchors.centerIn: r
        color: app.c3
        border.width: 2
        border.color: app.c2
        radius: app.fs
        clip: true
        Flickable{
            width: parent.width-app.fs*2
            height: parent.height
            anchors.horizontalCenter: parent.horizontalCenter
            contentWidth: parent.width-app.fs*2
            contentHeight: txt1.height+txt2.height
            boundsBehavior: Flickable.StopAtBounds
            Column{
                spacing: app.fs
                anchors.horizontalCenter: parent
                Text {
                    id: txt1
                    text: "<b>Ejemplo de un Archivo QML</b><br>"
                    width: r.width-app.fs*2
                    font.pixelSize: app.fs*2
                    color: app.c2
                    textFormat: Text.RichText
                    wrapMode: Text.WordWrap
                }
                Text {
                    id: txt2
                    font.pixelSize: app.fs
                    color: app.c4
                    width: r.width-app.fs*2
                    wrapMode: Text.WordWrap
                }
            }
        }
        Boton{
            w:app.fs
            h:w
            tp:2
            d:'Cerrar'
            c:app.c3
            b:app.c2
            t:'X'
           anchors.right: parent.right
           anchors.rightMargin: app.fs*0.5
           anchors.top: parent.top
           anchors.topMargin: app.fs*0.5
            onClicking: r.visible=false
        }
    }

    Component.onCompleted: {
        app.mp.source=r.source
        app.mp.play()
    }
}
