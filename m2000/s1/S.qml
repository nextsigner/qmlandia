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
    Flickable{
        id:fk
        anchors.fill: r
        contentWidth: r.width
        contentHeight: fk.height>r.height?txt1.contentHeight+app.fs*10:txt1.contentHeight
        boundsBehavior: Flickable.StopAtBounds
        Text {
            id: txt1
            width: r.width*0.6
            font.pixelSize: app.fs*0.5
            color: app.c2
            textFormat: Text.RichText
            wrapMode: Text.WordWrap
        }
    }
    property var ai: ["qml.png","qt-icon.png","apps.png","sdk.png","unik.png"]
    Column{
        anchors.verticalCenter: r.verticalCenter
        anchors.right: r.right
        anchors.rightMargin:  (r.width*0.4-width)/2
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
        Image{
            id:img2
            width: r.width*0.4-app.fs
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
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
            c2 ='<h2 class="'+app.lnl(0, 4)+'">¿En què consiste este curso?</h2>'
            c2+='<p class="'+app.lnl(4, 21)+'">'+p0+'</p>'
            c2+='<p class="'+app.lnl(21, 33)+'">'+p1+'</p>'
            c2+='<p class="'+app.lnl(33.5, 49.5)+'">'+p2+'</p>'
            c2+='<p class="'+app.lnl(49.5, 75)+'">'+p3+'</p>'
            c2+='<p class="'+app.lnl(75, 96)+'">'+p4+'</p>'
            c2+='<p class="'+app.lnl(96, 131)+'">'+p5+'</p>'
            txt1.text=c1+c2+c3

            if(app.lnl(4, 49.5)==='activo'){
                img1.visible=true
                img1.source="./"+ai[0]
                te1.text='\uf063'
            }else  if(app.lnl(49.5, 75)==='activo'){
                img1.visible=true
                img2.visible=true
                img1.source="./"+ai[3]
                img2.source="./"+ai[2]
                img1.width=r.width*0.1
                img2.width=r.width*0.1
                te1.text='<b>Entorno de Trabajo o FrameWork</b><br>Kit de Desarrollo<br>Software Developer Kit'
                te1.font.pixelSize=app.fs*0.5
                te2.text='\uf063'
            }else  if(app.lnl(75, 95)==='activo'){
                img1.visible=true
                img2.visible=true
                img1.source="./"+ai[0]
                img2.source="./"+ai[4]
                img1.width=r.width*0.1
                img2.width=r.width*0.1
                te1.text='<b>VIM</b><br>Editor de Texto<br>\uf063'
                te1.font.pixelSize=app.fs
                te2.text='<b>Curso creado en QML <br>\uf063'
                te2.font.pixelSize=app.fs
                te3.text='<b>Unik Qml Engine</b><br>creado por @nextsigner'
                te3.font.pixelSize=app.fs
            }else  if(app.lnl(95, 109)==='activo'){
                img1.visible=true
                img2.visible=true
                img1.source="./"+ai[1]
                img2.source="./"+ai[4]
                img1.width=r.width*0.1
                img2.width=r.width*0.1
                te1.text='<b>Lo aprendido en este curso</b><br>sirve para <b>Qt</b><br>\uf063'
                te1.font.pixelSize=app.fs
                te2.text='o para <b>Unik</b><br>\uf063'
                te2.font.pixelSize=app.fs
            }else  if(app.lnl(109, 116)==='activo'){
                img1.visible=true
                img2.visible=true
                img1.source="./"+ai[4]
                img2.source="./"+ai[1]
                img1.width=r.width*0.1
                img2.width=r.width*0.1
                te2.text='<b> Desarrollas con Unik</b><br>\uf063<br>Llevas tu còdigo QML a Qt<br>\uf063'
                te2.font.pixelSize=app.fs
                te1.text=''
                te3.text=''
            }else  if(app.lnl(116, 132)==='activo'){
                img1.visible=true
                img2.visible=true
                img1.source="./"+ai[1]
                img2.source="./"+ai[4]
                img1.width=r.width*0.1
                img2.width=r.width*0.1
                te2.text='<b> Tamaño de Qt: </b>2Gb'
                te2.font.pixelSize=app.fs
                te3.text='<b> Tamaño de Unik: </b>100Mb<br><br>Programas y utilizas<br>tus apps en<br>GNU/Linux, Windows<br>Android o Macos'
                te3.font.pixelSize=app.fs
                te1.text=''
            }else{
                te1.text=''
                te2.text=''
                te3.text=''
                img1.visible=false
                img2.visible=false
            }
        }
    }

    property string c1
    property string c2
    property string c3
    property string p0
    property string p1
    property string p2
    property string p3
    property string p4
    property string p5

    Component.onCompleted: {
        //Partes de la Estructura Html
        c1='<html><head><style>\n.activo{\nfont-size:'+parseInt(app.fs*0.65)+'px;\nbackground-color:'+app.c2+';\ncolor:'+app.c3+';\n}\n.inactivo{\nbackground-color:'+app.c3+';\ncolor:'+app.c2+';\n}</style></head><body>'
        c3='</body></html>'

        //Parrafos
        p0='Este curso consiste principalmente en Aprender a Programar en QML. Para aprender a utilizar este lenguaje es necesario saber què es QML, de donde proviene, porquè se llama asì y para que sirve.'
        p1=' Por ser este el comienzo, explicaremos de manera breve lo màs bàsico y posteriormente aprenderemos màs en detalle sobre sus aspectos tècnicos y còmo utilizarlo.'
        p2='Para dominar una herramienta, tecnologìa o lenguaje de programaciòn, no solo es aconsejable, tambièn es de fundamental importancia conocer sus origenes y otros detalles bàsicos que debemos tener en cuenta.'
        p3='Para programar una aplicaciòn, el programador necesita contar con algunas herramientas indispensables. Ademàs de un ordenador, computadora y sistema operativo, necesita de una o varias herramientas que en conjunto si pertenecen a un mismo kit las mismas conforman lo que se conoce como Framework.'
        p4='Desde el editor de texto llamado VIM, se ha escrito todo el còdigo fuente QML de este curso para que funcione dentro de la aplicaciòn que vez en pantalla. Esta aplicaciòn se llama Unik y fue desarrollada dentro de el Framework Qt Open Source.'
        p5='Todo el conocimiento que adquieras en este curso, es totalmente ùtil para que puedas crear aplicaciones tanto en el Framework Qt como en Unik. Puedes comenzar con Unik y luego llevar tu còdigo a Qt. Ten en cuenta que el Framework Qt tiene un tamaño aproximado de 2Gb y Unik solo tiene un tamaño de 100Mb. Ambos son multiplataforma.'

        //Ayudas
        var h1= 'Qt es un Framework, Entorno Multiplataforma de Trabajo para el desarrollo de aplicaciones informàticas. Està orientado a objetos para la creaciòn de aplicaciones  multiplataforma que requieran una GUI (Interfaz Gràfica de Usuario) o tambieǹ para aplicaciones del tipo consola que no lo requieran. Qt es desarrollado por la Comunidad Qt Project conjuntamente con Digia y otras empresas. Qt es distribuido de manera libre bajo la licencia LGPL, LGPL2 y tambièn es distribuido en la modalidad Enterprise. Puedes conocer màs sobre Qt en www.qt.io.'
        var h2= 'Unik es una aplicaciòn desarrollada por @nextsigner con el Entorno de Desarrollo Qt Open Source. El proyecto es distribuido libremente bajo la licencia LGPL y su còdigo fuente està publicado en GitHub.com.  Unik se caracteriza por ser la ùnica aplicaciòn diseñada para descargar proyectos QML directamente desde GitHub.com, asì mismo hacer correr proyectos QML desde carpetas locales o remotas. La documentaciòn està disponible en el sitio oficial de unik llamado www.unikode.org y en el repositorio oficial en GitHub.com cuya url es https://www.github.com/nextsigner/unik.'
        xa.addBa('Màs informaciòn Sobre Qt',h1,'./h/sobre_qt.m4a')
        xa.addBa('Màs informaciòn Unik', h2,'./h/sobre_unik.m4a')
        xa.addBa('Ir al siguiente','','1')
    }
}