import QtQuick 2.0
import QtMultimedia 5.0
Item {
    id: r
    width: app.width
    height: app.height*0.8
    property alias audio: mp
    property bool reproduciendo: mp.p
    Column{
        anchors.centerIn: parent
        Text {
            id: txt1
            text: "Declaraciones de importacion"
            font.pixelSize: app.fs*2
            color: app.c2
        }
        Text {
            id: txt2
            text: "<b>import</b>"
            font.pixelSize: app.fs*4
            color: 'yellow'
            opacity:mp.position>3000
            scale: opacity
            visible: opacity>0.01
            Behavior on opacity{
                NumberAnimation{
                    duration: 1500
                }
            }
        }
    }
    MediaPlayer {
        id: mp
        source: "a1.m4a"
        property bool p
        onPlaying: p=true
        onPaused: p=false
        onStopped: p=false
        onPositionChanged: {

        }
    }
    Component.onCompleted: {
        console.log('Base Url: ')
        var at=' Declaraciones de Importacion'
        at+='Cada documento QML, al cual denominaremos de ahora en màs, archivo QML, requiere de ciertas declaraciones de importaciòn al principio o comienzo, es decir en sus primeras lineas previas a la escritura del còdigo en el cuàl luego declaramos elementos QML u otros objetos.

Cuando nos referimos a Declaraciones de Importaciòn, estamos hablando de una solicitud o requerimiento que le hacemos al motor QML, o aplicaciòn que cargarà dicho còdigo, le solicitamos la carga de distintos recursos u objetos que necesitamos que se encuentren disponibles para el funcionamiento pleno de nuestro còdigo.

Entonces, para comenzar a programar còdigo QML, es necesario escribir, como mìnimo una lìnea de Declaraciòn de Importaciòn que comienza con la palabra reservada <b>import</b>.

Para saber còmo utilizar la palabra reservada <b>import</b> para importar algùnos recursos bàsicos y crear nuestro primer còdigo QML vayamos al siguiente paso.
'
        var d0=''
        d0+='Atenciòn! Las palabras reservadas son identificadores reservados predefinidos que tienen un significado especial y no pueden ser utilizados como identificadores en nuestro còdigo QML o JavaScript.
'
    }
}
