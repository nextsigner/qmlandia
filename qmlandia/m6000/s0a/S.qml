import QtQuick 2.0
import  "../../"
Item {
    id: r
    width: app.an
    height: app.al-app.fs*2
    onVisibleChanged: {
        if(visible){
            app.mp.source="./a1.m4a"
            app.pa=pa
        }
    }

    //1
    Rectangle{
        id:x1
        anchors.centerIn: r
        width: app.fs*20
        height: app.fs*10
        color: 'transparent'
        border.width: 2
        border.color: app.c2

    }

    /*Column{
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
        visible:app.mp.position<12&&app.mp.position>22
    }
    Text{
        id:txtQML
        anchors.verticalCenter: r.verticalCenter
        anchors.right: r.right
        anchors.rightMargin: (r.width*0.4-contentWidth)/2
        font.pixelSize: app.fs*2
        horizontalAlignment: Text.AlignHCenter
        color: app.c2
        textFormat: Text.RichText
    }*/
    Xa{id:xa}
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            var c1='<html><head><style>\n.activo{\nfont-size:'+parseInt(app.fs*0.65)+'px;\nbackground-color:'+app.c2+';\ncolor:'+app.c3+';\n}\n.inactivo{\nbackground-color:'+app.c3+';\ncolor:'+app.c2+';\n}</style></head><body>'
            var c3='</body></html>'

            var c2 ='<h2 class="'+app.lnl(0, 2)+'">¿Que es JavaScript?</h2>'

            var p0='JavaScript es un lenguaje de programaciòn. Sin ninguna duda es el lenguaje màs adecuado, el màs recomendado, es hoy en dìa el que màs se ajusta y se adapta a la mayoria de los proyectos informàticos. Esto se debe a que JavaScript tiene caracterìsticas tècnicas y muchas virtudes que explicaremos a continuaciòn.

Dependiendo de cuàl sea el conocimiento previo que tu poseas en este momento, te explicaremos los detalles y caracterìsticas de JavaScript de menor a mayor, tu podràs decidir en esta secciòn cuànto quieres saber sobre JavaScript.'

            c2+='<p class="'+app.lnl(2, 14)+'">'+p0+'</p>'

            txt1.text=c1+c2+c3
        }
    }
    Component.onCompleted: {
        /*var h1= 'La palabra o tèrmino <b>META</b> significa que QML es un lenguaje que està màs allà de preexistente, algo que apareciò luego, algo posterior, superador o de otra forma distinta a lo anterior'
        xa.addBa('¿Que significa META?', h1,'./h/sobre_metta.m4a')
        xa.addBa('Ir al siguiente','','1')*/
    }
}
