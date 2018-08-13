import QtQuick 2.0
import  "../../"
Item {
    id: r
    width: app.an
    height: app.al*0.9
    //property alias audio: mp
    //property bool reproduciendo: mp.p
    Column{        
        Text {
            id: txt1
            width: r.width*0.6
            font.pixelSize: app.fs*0.5
            color: app.c2
            textFormat: Text.RichText
            wrapMode: Text.WordWrap
        }
    }
    property var ai: ["qml.png","qt-icon.png"]
    Image{
        width: r.width*0.4-app.fs
        source:"./"+ai[0]
        anchors.verticalCenter: r.verticalCenter
        anchors.right: r.right
        fillMode: Image.PreserveAspectFit
    }
    //property string at1: value
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            var c1='<html><head><style>\n.activo{\nfont-size:'+app.fs+'px;\nbackground-color:'+app.c2+';\ncolor:'+app.c3+';\n}\n.inactivo{\nbackground-color:'+app.c3+';\ncolor:'+app.c2+';\n}</style></head><body>'
            var c3='</body></html>'

            var c2 ='<h2 class="'+app.lnl(0, 4)+'">¿Que es QML?</h2>'

            var p0='Talves tu tengas alguna nociòn sobre què es QML. Si lo ya lo sabes o si tienes alguna nociòn, bienvenido sea, de todos modos, vamos a explicar brevemente algunos detalles para que comencemos este curso con una base màs sòlida de conocimiento. Para dominar una herramienta, tecnologìa o lenguaje de programaciòn, no solo es aconsejable, tambièn es de fundamental importancia conocer sus origenes y la mayor informaciòn posible.'

            c2+='<p class="'+app.lnl(4, 12)+'">'+p0+'</p>'

            txt1.text=c1+c2+c3
        }
    }
    Component.onCompleted: {
        app.mp.source="./a1.m4a"
        app.mp.play()
    }
}
