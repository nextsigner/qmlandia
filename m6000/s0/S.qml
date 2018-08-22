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
            text: "<b>Ejemplo de un Archivo QML</b><br>"
            font.pixelSize: app.fs*2
            color: app.c2
            textFormat: Text.RichText
        }
        Text {
            id: txt2
            text: "import QtQuick 2.0\nItem{\n    width:300\n    height:300\n}"
            font.pixelSize: app.fs
            color: app.c4
            Marco{}
        }
    }
    Xa{id:xa}
    Component.onCompleted: {
        var at='Documento o Archivo QML
    El documento o archivo QML es un archivo de texto plano. El mismo puede ser creado desde el editor QML/JS de QtCreator o desde cualquier otro editor de texto o editor de còdigo.

Tambièn puede ser creado con el Editor de Diseño de QtCreator. En este curso nos limitaremos unicamente a escribir còdigo QML sin utilizar ningùn editor de diseño para conocer màs en profundidad la sintàxis de QML.

Si ya conoces otros archivos de diferentes tipos, puedes ver que un archivo QML tiene cierto parecido a los archivos JSON.
'
        xa.addBa('Ir al siguiente','','1')
    }
}