import QtQuick 2.0
import  "../../"
Item {
    id: r
    width: app.an
    height: app.al-app.fs*2
    onVisibleChanged: {
        if(visible){
            app.mp.source="./a1.m4a"
            app.mp.play()
        }
     }
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
    Xa{id:xa}
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            var c1='<html><head><style>\n.activo{\nfont-size:'+parseInt(app.fs*0.65)+'px;\nbackground-color:'+app.c2+';\ncolor:'+app.c3+';\n}\n.inactivo{\nbackground-color:'+app.c3+';\ncolor:'+app.c2+';\n}</style></head><body>'
            var c3='</body></html>'

            var c2 ='<h2 class="'+app.lnl(0, 4)+'">Comencemos con QML</h2>
    <p class="'+app.lnl(4, 12)+'">Ya estamos listos para empezar. Antes de hacerlo, aclaremos algunos puntos importantes.</p>

    <p class="'+app.lnl(12, 34)+'">Lo que estas viendo en pantalla es una aplicaciòn que fue diseñada y programada para hacer funcionar ademàs de este curso de QML, infinidades de otras aplicaciones tambien programadas en QML u otros lenguajes. Esta aplicaciòn se llama Unik Qml Engine.</p>

    <p class="'+app.lnl(34, 61)+'">Unik, es una aplicaciòn que se utiliza para hacer correr o funcionar còdigo QML desde distintos orìgenes. Por ejemplo todo lo que puedes aprender en este Contenido Interactivo està alojado en GitHub.com. Unik lo desgarga en tu dispositivo o equipo y lo ejecuta como una aplicaciòn.</p>

    <p class="'+app.lnl(61, 81)+'">¿Que significa esto entonces? Que asì como en estos momentos estàs ejecutando este contenido, puedes ejecutar luego tu propio còdigo QML desde GitHub.com, desde alguna carpeta local o remota, desde donde tu elijas.</p>

    <p class="'+app.lnl(82, 95)+'">A medida que vayas avanzando en cada mòdulo de aprendizaje QML, podras modificar el còdigo de cada secciòn o ejercicio para hacerlo funcionar y probar tus conocimientos.</p>
    '
            txt1.text=c1+c2+c3


        }
    }
    Timer{//Mod 0 Sec 0 requiere inicializacion
        id:tps
        running: true
        repeat: false
        interval: 1500
        onTriggered: {
            if(app.s===0&&app.mod===0){
                app.mp.source="./a1.m4a"
                app.mp.play()
            }
        }
    }
    Component.onCompleted: {
        var h1='Este panel de ayuda te permitirà obtener màs informaciòn sobre algun asunto tratado en cada modulo o secciòn. Funciona como una lista de botones que se muestran automàticamente al final de cada secciòn. Si necesitas ver este panel en cualquier momento, debes presionar el boton <b>?</b> situado a la derecha de los botones de control.'
        xa.addBa('Sobre este Panel Ayuda', h1, './h/sobre_panel_ayuda.m4a')
        xa.addBa( 'Ir al siguiente', '', '1')
    }
}
