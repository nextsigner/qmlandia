import QtQuick 2.0
import QtGraphicalEffects 1.0
import  "../../../"
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
    Row{
        anchors.verticalCenter: r.verticalCenter
        spacing: app.fs
        x:app.mp.position<84*1000?app.fs*2:(r.width-width)/2
        Column{
            anchors.verticalCenter: r.verticalCenter
            Text {
                id: txt1
                text: "<b>Ejemplo de un</b><br><b>Archivo QML</b><br>"
                font.pixelSize: app.fs
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
        Text {
            id: txtjson3
            text: '='
            font.pixelSize: app.fs*2
            color: app.c2
            anchors.verticalCenter: parent.verticalCenter
            visible:app.mp.position>84*1000
            Text {
                id: txtjson4
                text: '/'
                font.pixelSize: app.fs*2
                color: app.c2
                anchors.centerIn: parent
            }
        }
        Column{
            anchors.verticalCenter: r.verticalCenter
            visible:app.mp.position>84*1000
            Text {
                id: txtjson1
                text: "<b>Ejemplo de un</b><br><b>Archivo JSON</b><br>"
                font.pixelSize: app.fs
                color: app.c2
                textFormat: Text.RichText
            }
            Text {
                id: txtjson2
                text: '{\n  "Item":{\n    "width":300,\n    "height":300\n  }\n}'
                font.pixelSize: app.fs
                color: app.c4
                Marco{}
            }
        }

    }
    property var ai: ["img1.png", "img2.png", "img3.png", "img4.png"]

    Column{
        anchors.verticalCenter: r.verticalCenter
        anchors.right: r.right
        anchors.rightMargin:  app.fs*0.5
        spacing: app.fs*0.5
        Text{
            id:te1
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: app.fs*2
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
        Image{
            id:img1
            width: r.width*0.4-app.fs
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
            Marco{id:marco1}
        }


        Text{
            id:te2
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: app.fs*2
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
        ColorOverlay {
            id:ge1
            width: img2.width
            height:img2.height
            source: img2
            color: app.c2
            visible:false
        }
        Image{
            id:img2
            width: r.width*0.4-app.fs
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
            Marco{id:marco2}
        }
        Text{
            id:te3
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: app.fs*2
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
    }
    Xa{id:xa}
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            if(app.lnl(9, 17)==='activo'){
                img1.visible=true
                img1.source="../../../h/editor_1.png"
                img1.width=r.width*0.6
                te1.text='<b>Editor QML/JS de Qt Creator</b><br>\uf063'
                te1.font.pixelSize=app.fs
            }else if(app.lnl(17, 24)==='activo'){
                img1.visible=true
                img1.source="../../../h/editor_2.png"
                img1.width=r.width*0.6
                te1.text='<b>Notepad++</b><br>\uf063'
                te1.font.pixelSize=app.fs
            }else if(app.lnl(24, 31)==='activo'){
                img1.visible=true
                img1.source="../../../h/editor_3.png"
                img1.width=r.width*0.6
                te1.text='<b>VIM</b><br>\uf063'
                te1.font.pixelSize=app.fs
            }else if(app.lnl(31, 48)==='activo'){
                img1.visible=true
                img1.source="../../../h/editor_4.png"
                img1.width=r.width*0.6
                te1.text='<b>Qt Design</b><br>\uf063'
                te1.font.pixelSize=app.fs
            }else if(app.lnl(48, 52)==='activo'){
                img2.source="../../../h/js.png"
                img2.width=r.width*0.6
                img2.visible=false
                ge1.visible=true
                img1.source="../../../h/qml.png"
                img1.width=r.width*0.6
                img1.visible=true
                te2.text='\uf063'
                te2.rotation=180
                te1.text=''
                marco1.visible=false
            }else if(app.lnl(52, 57)==='activo'){
                img2.source="../../../h/qt-icon.png"
                img2.width=r.width*0.25
                img2.visible=true
                ge1.visible=false
                img1.source="../../../h/digia-logo.png"
                img1.width=r.width*0.25
                img1.visible=true
                te2.text='+'
                te2.rotation=180
                te1.text=''
                marco1.visible=false
                marco2.visible=false
            }else if(app.lnl(57, 60)==='activo'){
                img2.source="../../../h/qt-icon.png"
                img2.width=r.width*0.25
                img2.visible=true
                ge1.visible=false
                img1.source="../../../h/digia-logo.png"
                img1.width=r.width*0.25
                img1.visible=true
                te2.text=' <b>QtQuick</b>'
                te2.rotation=0
                te1.text=''
                marco1.visible=false
                marco2.visible=false
            }else if(app.lnl(60, 82)==='activo'){
                img1.visible=false
                img2.source="../../../h/touch1.png"
                img2.width=r.width*0.5
                img2.visible=false
                ge1.visible=true
                te1.text=''
                marco1.visible=false
                marco2.visible=false
            }else{
                te1.text=''
                te2.text=''
                te3.text=''
                img1.visible=false
                img2.visible=false
                ge1.visible=false
            }

        }
    }

    Component.onCompleted: {
        var at='Documento o Archivo QML
    El documento QML es un archivo de texto plano. El mismo puede ser creado desde el editor QML/JS de QtCreator, tambien puede ser creado desde cualquier otro editor de texto o editor de còdigo, como Notepad++, VIM u otros.                                                Tambièn puede ser creado con el Editor de Diseño de QtCreator. En este curso nos limitaremos unicamente a escribir còdigo QML sin utilizar ningùn editor de diseño para conocer màs en profundidad la sintàxis de QML.                  Qml es un lenguaje Declarativo basado en JavaScript. Fue creado por Digia junto al Qt Project para el Framework QtQuick. Este lenguaje fue creado para agilizar tanto el desarrollo de aplicaciònes, màs especificamente orientado a aplicaciones mòbiles, que requieren de interfaz de usuario dinàmicas, àgiles y modernas con el  fin de lograr una mejor experiencia de usuarios en aplicaciones de este tipo.              Si ya conoces otros archivos de diferentes tipos, puedes ver que un archivo QML tiene cierto parecido a los archivos JSON. Tal como hemos dicho, al ser un lenguaje basado en JavaScript, asi como en JSON creamos Objetos JavaScript, en este caso creamos con una metodologìa similar Objetos QML. Al crearlos se dice que los estamos declarando porque los Objetos QML ya existen previamente con propiedades y valores por defecto a diferencia de un Objeto JavaScript que lo creamos desde cero.
'

        xT.at=at.replace(/\n/g, ' ')
        xa.addBa('Ir al siguiente','','1')
    }
}
