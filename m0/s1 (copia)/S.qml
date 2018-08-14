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
    //property string at1: value
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            var c1='<html><head><style>\n.activo{\nfont-size:'+app.fs+'px;\nbackground-color:'+app.c2+';\ncolor:'+app.c3+';\n}\n.inactivo{\nbackground-color:'+app.c3+';\ncolor:'+app.c2+';\n}</style></head><body>'
            var c3='</body></html>'

            var c2 ='<h2 class="'+app.lnl(0, 4)+'">¿Que es QML?</h2>'

            var p0='Este curso consiste principalmente en Aprender a Programar en QML. Para aprender a utilizar este lenguaje es necesario saber què es QML, de donde proviene, porquè se llama asì y para que sirve. Por ser este el comienzo, explicaremos brevemente lo màs bàsico y posteriormente aprenderemos màs en detalle sobre sus aspectos tècnicos y còmo utilizarlo.'

var p1='Para programar una aplicaciòn, el programador necesita contar con algunas herramientas indispensables. Ademàs de un ordenador, computadora y sistema operativo, necesita de una o varias herramientas que en conjunto si pertenecen a un mismo kit las mismas conforman lo que se conoce como Framework.'

var p1='Para dominar una herramienta, tecnologìa o lenguaje de programaciòn, no solo es aconsejable, tambièn es de fundamental importancia conocer sus origenes y otros detalles bàsicos que debemos tener en cuenta.'

            var p1='QML es un Lenguaje de Programaciòn. Pertenece y es parte de un entorno o kit de herramientas de desarrollo de aplicaciones llamado Qt. Màs precisamente se llama segùn sus siglas Qt Meta Lenguaje. Qt tiene dos entornos o contextos en los cuales se pueden desarrollar aplicaciones. Uno llamado QtWidgets y el otro QtQuick. Qml fue creado como lenguaje para el entorno de trabajo QtQuick.'

            var p2='No te preocupes. En secciones siguientes tienes la posibilidad de '


            c2+='<p class="'+app.lnl(4, 12)+'">'+p0+'</p>'
            c2+='<p class="'+app.lnl(12, 22)+'">'+p1+'</p>'

            txt1.text=c1+c2+c3

            var t1c1='<html><head><style>\n.activo{\ncolor:red;\n}\n.inactivo{\ncolor:yellow;\n}</style></head><body>'
            var t1
            if(app.lnl(4, 5)==='activo'){
                t1='<b class="activo">Q</b><span class="inactivo">t</span><br>M</b><span class="inactivo">eta</span><br><b>L</b>'
            }else if(app.lnl(5, 6)==='activo'){
                t1='<b class="activo">Q</b><span class="inactivo">t</span><br><b class="activo">M</b><span class="inactivo">eta</span><br><b>L</b>'
            }else if(app.lnl(6, 90)==='activo'){
                t1='<b class="activo">Q</b><span class="inactivo">t</span><br><b class="activo">M</b><span class="inactivo">eta</span><br><b class="activo">L</b><span class="inactivo">anguaje</span>'
            }else{
                t1='<b>Q</b><br><b>M</b><br><b>L</b>'
            }
            t1c1+=t1
            t1c1+=c3
            txtQML.text=t1c1

            var h1= 'La palabra o tèrmino <b>META</b> significa que QML es un lenguaje que està màs allà de preexistente, algo que apareciò luego, algo posterior, superador o de otra forma distinta a lo anterior'


        }
    }
    Component.onCompleted: {
        app.mp.source="./a1.m4a"
        app.mp.play()
    }
}
