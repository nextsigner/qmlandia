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
            text: "import QtQuick 2.0"
            font.pixelSize: app.fs
            color: app.c4
        }
        Text {
            id: txt2
            text: "Item{\n  width:300\n height:300\n}"
            font.pixelSize: app.fs
            color: app.c4
            /*opacity:mp.position>1000*60*13
            scale: opacity
            visible: opacity>0.01
            Behavior on opacity{
                NumberAnimation{
                    duration: 1500
                }
            }*/
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
            if(position===duration){
                //app.s++
            }
        }
        onStatusChanged: {
            if(status===MediaPlayer.EndOfMedia){
                app.s++
            }
        }
    }
    Component.onCompleted: {
        var at='Documento o Archivo QML
    El documento o archivo QML es un archivo de texto plano. El mismo puede ser creado desde el editor QML/JS de QtCreator o desde cualquier otro editor de texto o editor de còdigo.

Tambièn puede ser creado con el Editor de Diseño de QtCreator. En este curso nos limitaremos unicamente a escribir còdigo QML sin utilizar ningùn editor de diseño para conocer màs en profundidad la sintàxis de QML.

Si ya conoces otros archivos de diferentes tipos, puedes ver que un archivo QML tiene cierto parecido a los archivos JSON.
'
    }
}
