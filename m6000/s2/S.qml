import QtQuick 2.0
import '../../'
Item {
    id: r
    width: app.width
    height: app.height*0.9
    onVisibleChanged: {
        if(visible){
            app.mp.source="./a1.m4a"
            app.pa=pa
        }
    }
    Column{
        anchors.centerIn: parent
        Text {
            id: txt1
            text: "<b>Declaraciones de importacion</b><br>"
            font.pixelSize: app.fs*2
            color: app.c2
            textFormat: Text.RichText
        }
        Text {
            id: txt2
            text: app.mp.position>1000*73 ? '<b style="color:red;">import</b> QtQuick 2.0':'import QtQuick 2.0'
            font.pixelSize: app.fs
            color: app.c4
            textFormat: Text.RichText
            Marco{
                Text {
                    text: 'Linea de Declaraciòn de Importaciòn'
                    font.pixelSize: app.fs*0.5
                    anchors.right: parent.right
                    anchors.bottom: parent.top
                    color: app.c2
                }
                opacity:app.mp.position>1000*8 ? 1.0 : 0.0
                Behavior on opacity{
                    NumberAnimation{
                        duration: 1500
                    }
                }
            }
        }
        Text {
            id: txt3
            text: "Item{\n    width:300\n    height:300\n}"
            font.pixelSize: app.fs
            color: app.c4
            opacity:app.mp.position>1000*5 ? 0.5 : 1.0
            Behavior on opacity{
                NumberAnimation{
                    duration: 1500
                }
            }
        }
    }
    Xa{id:xa}
    Component.onCompleted: {
        var at=' Declaraciones de Importacion'
        at+='Cada documento QML, al cual denominaremos de ahora en màs, archivo QML, requiere de ciertas declaraciones de importaciòn al principio o comienzo, es decir en sus primeras lineas previas a la escritura del còdigo en el cuàl luego declaramos elementos QML u otros objetos.

Cuando nos referimos a Declaraciones de Importaciòn, estamos hablando de una solicitud o requerimiento que le hacemos al motor QML, o aplicaciòn que cargarà dicho còdigo, le solicitamos la carga de distintos recursos u objetos que necesitamos que se encuentren disponibles para el funcionamiento pleno de nuestro còdigo.

Entonces, para comenzar a programar còdigo QML, es necesario escribir, como mìnimo una lìnea de Declaraciòn de Importaciòn que comienza con la palabra reservada <b>import</b>.

Para saber còmo utilizar la palabra reservada <b>import</b> para importar algùnos recursos bàsicos y crear nuestro primer còdigo QML vayamos al siguiente paso.
'
        var h1='Atenciòn! Las palabras reservadas son identificadores reservados predefinidos que tienen un significado especial y no pueden ser utilizados como identificadores en nuestro còdigo QML o JavaScript.
'
        xa.addBa('¿Que es una Palabra Reservada?',h1,'./h/h1.m4a')
        xa.addBa('Ir al siguiente','','1')
    }
}
