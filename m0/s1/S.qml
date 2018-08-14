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
    }
    Rectangle{
        id:xA
        width: app.fs*4
        height: pa.height+app.fs
        color: app.c3
        border.color: app.c2
        border.width: 2
        radius: app.fs*0.5
        visible: app.verAyuda
        anchors.right: r.right
        anchors.bottom: r.bottom
        onVisibleChanged: {
            var w=0;
            for(var i=0;i<pa.children.length;i++){
                if(pa.children[i].width>w){
                    w=pa.children[i].width
                }
            }
            xA.width=w+app.fs
            if(visible){
                app.verAyuda=true
            }
        }
        Column{
            id:pa
            anchors.centerIn: parent
            spacing: app.fs*0.5
            BotonA{id: ba1; t1:'Màs informaciòn Sobre Qt';s:'./h/h1.m4a'}
            BotonA{id: ba2; t1:'Ir al siguiente';s:'1'}
        }
    }
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            var c1='<html><head><style>\n.activo{\nfont-size:'+app.fs+'px;\nbackground-color:'+app.c2+';\ncolor:'+app.c3+';\n}\n.inactivo{\nbackground-color:'+app.c3+';\ncolor:'+app.c2+';\n}</style></head><body>'
            var c3='</body></html>'

            var c2 ='<h2 class="'+app.lnl(0, 4)+'">¿En què consiste este curso?</h2>'

            var p0='Este curso consiste principalmente en Aprender a Programar en QML. Para aprender a utilizar este lenguaje es necesario saber què es QML, de donde proviene, porquè se llama asì y para que sirve. Por ser este el comienzo, explicaremos brevemente lo màs bàsico y posteriormente aprenderemos màs en detalle sobre sus aspectos tècnicos y còmo utilizarlo.'
            var p1=' Por ser este el comienzo, explicaremos brevemente lo màs bàsico y posteriormente aprenderemos màs en detalle sobre sus aspectos tècnicos y còmo utilizarlo.'

            var p2='Para dominar una herramienta, tecnologìa o lenguaje de programaciòn, no solo es aconsejable, tambièn es de fundamental importancia conocer sus origenes y otros detalles bàsicos que debemos tener en cuenta.'

            var p3='Para programar una aplicaciòn, el programador necesita contar con algunas herramientas indispensables. Ademàs de un ordenador, computadora y sistema operativo, necesita de una o varias herramientas que en conjunto si pertenecen a un mismo kit las mismas conforman lo que se conoce como Framework.'


            var p4='Desde el editor de texto llamado VIM, se ha escrito todo el còdigo fuente QML de este curso para que funcione en la aplicaciòn que vez en pantalla. Esta aplicaciòn se llama Unik y fue desarrollada en el Framework Qt Open Source.'

            var p5='Todo el conocimiento que adquieras en este curso, es totalmente ùtil para que puedas crear aplicaciones tanto en el Framework Qt como en Unik. Puedes comenzar con Unik y luego llevar tu còdigo a Qt. Ten en cuenta que el Framework Qt tiene un tamaño aproximado de 2Gb y Unik solo tiene un tamaño de 100Mb. Ambos son multiplataforma.'

            c2+='<p class="'+app.lnl(4, 12)+'">'+p0+'</p>'
            c2+='<p class="'+app.lnl(12, 22)+'">'+p1+'</p>'
            c2+='<p class="'+app.lnl(22, 40)+'">'+p2+'</p>'
            c2+='<p class="'+app.lnl(40, 60)+'">'+p3+'</p>'
            c2+='<p class="'+app.lnl(60, 75)+'">'+p4+'</p>'
            c2+='<p class="'+app.lnl(75, 90)+'">'+p5+'</p>'

            txt1.text=c1+c2+c3

            var h1= 'Qt es un Framework, Entorno Multiplataforma de Trabajo para el desarrollo de aplicaciones informàticas. Està orientado a objetos para la creaciòn de aplicaciones  multiplataforma que requieran unaa GUI (Interfaz Gràfica de Usuario) o tambieǹ para aplicaciones del tipo consola que no lo requieran. Qt es desarrollado por la Comunidad Qt Project conjuntamente con Digia y otras empresas. Qt es distribuido de manera libre bajo la licencia LGPL, LGPL2 y tambièn es distribuido en la modalidad Enterprise. Puedes conocer màs sobre Qt en www.qt.io.'
            ba1.t2=h1


        }
    }
    Component.onCompleted: {
        app.mp.source="./a1.m4a"
        app.mp.play()
    }
}
