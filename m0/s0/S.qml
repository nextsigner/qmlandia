import QtQuick 2.0
import  "../../"
Item {
    id: r
    width: app.width
    height: app.height*0.8
    //property alias audio: mp
    //property bool reproduciendo: mp.p
    Column{
        anchors.centerIn: parent
        Text {
            id: txt1
            width: r.width*0.6
            font.pixelSize: app.fs*0.5
            color: app.c2
            textFormat: Text.RichText
            wrapMode: Text.WordWrap
        }
    }
    //property string at1: value
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            var c1='<html><head><style>\n.activo{\nfont-size:'+app.fs+'px;\nbackground-color:'+app.c2+';\ncolor:'+app.c3+';\n}\n.inactivo{\nbackground-color:'+app.c3+';\ncolor:'+app.c2+';\n}</style></head><body>'
            var c3='</body></html>'

            var c2 ='<h2 class="'+app.lnl(0, 4)+'">Comencemos con QML</h2>
    <p class="'+app.lnl(4, 12)+'">Ya estamos listos para empezar. Antes de hacerlo, aclaremos algunos puntos importantes.</p>

    <p class="'+app.lnl(12, 34)+'">Lo que estas viendo en pantalla es una aplicaciòn que fue diseñada y programada para hacer funcionar ademàs de este curso de QML, infinidades de otras aplicaciones tambien programadas en QML u otros lenguajes. Esta aplicaciòn se llama Unik Qml Engine.</p>

    <p class="'+app.lnl(34, 61)+'">Unik, es una aplicaciòn que se utiliza para hacer correr o funcionar còdigo QML desde distintos orìgenes. Por ejemplo todo lo que puedes aprender en este Contenido Interactivo està alojado en GitHub.com. Unik lo desgarga en tu dispositivo o equipo y lo ejecuta como una aplicaciòn.</p>

    <p class="'+app.lnl(61, 81)+'">¿Que significa esto entonces? Que asì como en estos momentos estàs ejecutando este contenido, puedes ejecutar luego tu propio còdigo QML desde GitHub.com, desde alguna carpeta local o remota, desde donde tu elijas.</p>

    <p class="'+app.lnl(82, 95)+'">A medida que vayas avanzando en cada mòdulo de aprendizaje QML, podras modificar el còdigo de cada secciòn o ejercicio para hacerlo funcionar y probar tus conocimientos.</p>

    <p class="'+app.lnl(96, 102)+'">Ahora si, comencemos. Presiona Play para comenzar.</p>
    '
            txt1.text=c1+c2+c3
        }
    }
    Component.onCompleted: {
        app.mp.source="./a1.m4a"
        app.mp.play()
    }
}
