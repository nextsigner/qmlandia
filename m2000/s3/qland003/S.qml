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
            app.pa=pa
        }
    }
    property var ai: ["qml.png","qt-icon.png","apps.png","sdk.png","unik.png"]

    //1
    Column{
        id:x1
        anchors.centerIn: r
        spacing: app.fs*0.5
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>¿Que herramientas se</b><br><b>necesitan para este curso?</b>'
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: app.fs*2
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
    }

    //2
    Column{
        id:x2
        anchors.centerIn: r
        spacing: app.fs*0.5
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>Unik Qml Engine</b>'
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: app.fs*2
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
        Image{
            source: "../../../h/unik.png"
            width: r.width*0.25
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    //3
    Row{
        id:x3
        anchors.centerIn: r
        width: r.width*0.8-app.fs
        spacing: app.fs
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Column{
            Text{
                text:'<b>Unik Qml Engine</b>'
                font.pixelSize: app.fs
                color: app.c2
                font.family: 'FontAwesome'
                horizontalAlignment: Text.AlignHCenter
                textFormat: Text.RichText
            }
            Image{
                source: "./"+ai[4]
                width: r.width*0.25
                fillMode: Image.PreserveAspectFit
            }
        }
        Row{
            spacing: app.fs
            anchors.verticalCenter: parent.verticalCenter
            Text{
                text:'\uf063'
                font.pixelSize: app.fs*2
                rotation: -90
                color: app.c2
                font.family: 'FontAwesome'
                horizontalAlignment: Text.AlignHCenter
                textFormat: Text.RichText
            }
            Text{
                text:'<b>Qmlandia</b>'
                font.pixelSize: app.fs*2
                color: app.c2
                font.family: 'FontAwesome'
                horizontalAlignment: Text.AlignHCenter
                textFormat: Text.RichText
            }
        }
    }

    //4
    Column{
        id:x4
        anchors.centerIn: r
        spacing: app.fs
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Row{
            spacing: app.fs*8
            Text{
                text:'<b>Qmlandia</b><br>\uf063<br><b>Còdigo Qml</b>'
                font.pixelSize: app.fs
                color: app.c2
                font.family: 'FontAwesome'
                horizontalAlignment: Text.AlignHCenter
                textFormat: Text.RichText
            }
        }
        Row{
            spacing: app.fs
            TextEdit{
                id:cod
                text:'Rectangle{\n      width:100\n     height:100\n    color:"red"\n}'
                font.pixelSize: app.fs
                color: app.c2
                font.family: 'FontAwesome'
                Marco{id:marco1}
            }
            Item{
                id:xf
                height: app.fs*2
                width: app.fs*4
                anchors.verticalCenter: parent.verticalCenter
                property int e: -1
                Timer{
                    running: true
                    repeat: true
                    interval: 250
                    onTriggered: {
                        if(app.lnl(31, 42)==='activo'){
                            parent.e++
                            if(parent.e>3){
                                parent.e=-1
                            }
                        }else{
                            parent.e=-1
                        }
                    }
                }
                Row{
                    spacing: app.fs
                    Repeater{
                        model:3
                        Text{
                            text:'\uf061'
                            font.pixelSize: app.fs
                            color: app.c2
                            font.family: 'FontAwesome'
                            opacity: xf.e===index?1.0:0.0
                            Behavior on opacity{NumberAnimation{duration:150}}
                        }
                    }
                }
            }
            Item{
                width: app.fs*4
                height: width

                Rectangle{
                    width: 100
                    height: 100
                    color:app.mp.position<1000*32?'red':'blue'
                    anchors.horizontalCenter: parent.horizontalCenter
                    Marco{id:marco2}
                }
                Text{
                    id:txtRes
                    font.pixelSize: app.fs
                    color: app.c2
                    font.family: 'FontAwesome'
                    horizontalAlignment: Text.AlignHCenter
                    textFormat: Text.RichText
                    anchors.bottom: parent.top
                    anchors.bottomMargin: app.fs
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    //5
    Item{
        id:x5
        anchors.centerIn: r
        opacity: 0.0
        width:grilla1.width
        height:grilla1.height
        Behavior on opacity{NumberAnimation{duration:500}}
        Grid{
            id:grilla1
            spacing: app.fs*0.25
            rows: 3
            anchors.centerIn: parent
            Repeater{
                model:["Editor de\nCòdigo", "Editor de\nDiseño", "Compilador", "Depurador", "Lìneas de\nComandos", "Plugins", "Modulos", "Bibliotecas","Documentaciòn"]
                Item{
                    width: app.fs*8
                    height: app.fs*3
                    Rectangle{
                        id:r2
                        width: txth.contentWidth*1.2
                        height: app.fs*2
                        color:app.c3
                        border.width: 2
                        border.color: app.c2
                        radius: app.fs*0.5
                        clip:true
                        anchors.centerIn: parent
                        Text{
                            id:txth
                            text:modelData
                            font.pixelSize: app.fs*0.65
                            width: parent.width*0.98
                            height: contentHeight
                            wrapMode: Text.WordWrap
                            anchors.centerIn: parent
                            color: app.c2
                            horizontalAlignment: Text.AlignHCenter

                        }
                    }
                }
            }
        }
        Rectangle{
            id:marco3
            width: grilla1.width+app.fs*1.5
            height: grilla1.height+app.fs*1.5
            anchors.centerIn: grilla1
            color: "transparent"
            border.width: app.fs*0.25
            border.color: "red"
            radius: app.fs*0.15
            Text{
                id:txtTit100
                text:"<b>Software y Herramientas de Programaciòn</b>"
                font.pixelSize: app.fs
                width: parent.width*0.98
                height: contentHeight
                wrapMode: Text.WordWrap
                anchors.bottom: parent.top
                anchors.bottomMargin: app.fs*0.5
                color: app.c2
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    //6
    Item{
        id:x6
        anchors.centerIn: r
        width: app.fs*10
        height: width
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Rectangle{
            anchors.fill: parent
            color: 'transparent'
            border.width: app.fs
            border.color: "red"
            radius: width*0.5
        }
        Text{
            text:'<b>Unik</b><br><b>+</b><br><b>Qmlandia</b>'
            font.pixelSize: app.fs*1.3
            color: app.c2
            anchors.centerIn: parent
            horizontalAlignment: Text.AlignHCenter
        }
        onOpacityChanged: {
            if(opacity===1.0){
                xbanda.opacity=1.0
            }else{
                xbanda.opacity=0.0
            }
        }
        Rectangle{
            id:xbanda
            opacity: 0.0
            anchors.centerIn: parent
            width: parent.width-app.fs*0.25
            height: app.fs*2
            rotation: -45
            color: 'red'
            Behavior on opacity{NumberAnimation{duration:2000}}
            Text {
                id: txt
                text: "<b>NO es un IDE</b>"
                font.pixelSize: app.fs
                anchors.centerIn: parent
                color: "white"
            }
        }
    }

    //7
    Row{
        id:x7
        anchors.centerIn: r
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        onOpacityChanged: {
            if(opacity===1.0){
                img1.opacity=1.0
            }else{
                img1.opacity=0.0
            }
        }
        spacing: app.fs
        Image {
            id: img1
            source: "../../../h/qml.png"
            width: app.fs*6
            fillMode: Image.PreserveAspectFit
            opacity: 0.0
            anchors.verticalCenter: parent.verticalCenter
            Behavior on opacity{NumberAnimation{duration:1000}}
            onOpacityChanged: {
                if(opacity===1.0){
                    color100.opacity=1.0
                }else{
                    color100.opacity=0.0
                }
            }
        }
        ColorOverlay {
            id:color100
            width: img2.width
            height:img2.height
            source: img2
            color: app.c2
            anchors.verticalCenter: parent.verticalCenter
            opacity: 0.0
            Behavior on opacity{NumberAnimation{duration:1000}}
            onOpacityChanged: {
                if(opacity===1.0){
                    txtTit101.opacity=1.0
                }else{
                    txtTit101.opacity=0.0
                }
            }
        }
        Image {
            id: img2
            visible:false
            source: "../../../h/js.png"
            width: app.fs*6
            fillMode: Image.PreserveAspectFit
        }
        Text{
            id:txtTit101
            text:"<b>Sqlite</b>"
            font.pixelSize: app.fs
            wrapMode: Text.WordWrap
            color: app.c2
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
            opacity: 0.0
            Behavior on opacity{NumberAnimation{duration:1000}}
        }
    }

    //8
    Row{
        id:x8
        anchors.centerIn: r
        opacity: 0.0
        spacing:app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Image {
            id: img3
            source: "../../../h/unik.png"
            width: app.fs*10
            fillMode: Image.PreserveAspectFit
            anchors.verticalCenter: parent.verticalCenter
            Text{
                text:"<b>Unik</b>"
                font.pixelSize: app.fs*0.7
                wrapMode: Text.WordWrap
                color: app.c2
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter:  parent.horizontalCenter
                anchors.bottom: parent.top
                anchors.bottomMargin: app.fs*0.5
            }
        }
        Text{
            id:txt102
            text:"<b>+</b>"
            font.pixelSize: app.fs*2
            wrapMode: Text.WordWrap
            color: app.c2
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
        }
        Image {
            id: img4
            source: "../../../h/editor_3.png"
            width: app.fs*10
            fillMode: Image.PreserveAspectFit
            Text{
                text:"<b>Cualquier Editor de Texto</b>"
                font.pixelSize: app.fs*0.7
                wrapMode: Text.WordWrap
                color: app.c2
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter:  parent.horizontalCenter
                anchors.bottom: parent.top
                anchors.bottomMargin: app.fs*0.5
            }
        }
        Text{
            id:txt103
            text:"<b>=</b>"
            font.pixelSize: app.fs*2
            wrapMode: Text.WordWrap
            color: app.c2
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
        }
        Image {
            id: img5
            source: "../../../h/apps.png"
            width: app.fs*4
            fillMode: Image.PreserveAspectFit
            anchors.verticalCenter: parent.verticalCenter
            Text{
                text:"<b>Tus Apps!</b>"
                font.pixelSize: app.fs*0.7
                wrapMode: Text.WordWrap
                color: app.c2
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter:  parent.horizontalCenter
                anchors.bottom: parent.top
                anchors.bottomMargin: app.fs
            }
            Text{
                text:"<b>Corriendo en</b><br><b>GNU/Linux</b><br><b>Windows</b><br><b>Macos</b><br><b>Android</b>"
                width: app.fs*3
                font.pixelSize: app.fs*0.55
                wrapMode: Text.WordWrap
                color: app.c2
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter:  parent.horizontalCenter
                anchors.top: parent.bottom
                anchors.topMargin: app.fs*0.5
            }
        }
    }

    //9
    Row{
        id:x9
        anchors.centerIn: r
        opacity: 0.0
        spacing:app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Image {
            source: "../../../h/editor_3.png"
            width: app.fs*10
            fillMode: Image.PreserveAspectFit
            anchors.verticalCenter: parent.verticalCenter
            Text{
                text:"<b>VIM</b>"
                font.pixelSize: app.fs*0.7
                wrapMode: Text.WordWrap
                color: app.c2
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter:  parent.horizontalCenter
                anchors.bottom: parent.top
                anchors.bottomMargin: app.fs*0.5
            }
        }
        Text{
            text:"<b>+</b>"
            font.pixelSize: app.fs*2
            wrapMode: Text.WordWrap
            color: app.c2
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
        }
        Image {
            source: "../../../h/unik.png"
            width: app.fs*10
            fillMode: Image.PreserveAspectFit
            Text{
                text:"<b>Unik</b>"
                font.pixelSize: app.fs*0.7
                wrapMode: Text.WordWrap
                color: app.c2
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter:  parent.horizontalCenter
                anchors.bottom: parent.top
                anchors.bottomMargin: app.fs*0.5
            }
        }
        Text{
            text:"<b>=</b>"
            font.pixelSize: app.fs*2
            wrapMode: Text.WordWrap
            color: app.c2
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
        }
        Text{
            text:"<b>Qmlandia</b>"
            font.pixelSize: app.fs*0.7
            wrapMode: Text.WordWrap
            color: app.c2
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }

    //10
    Item{
        id:x10
        anchors.centerIn: r
        anchors.horizontalCenterOffset: 0-unikicon.width*2
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Row{
            id:row1
            spacing: app.fs*0.5
            anchors.verticalCenter: parent.verticalCenter
            Image {
                id:qticon2
                source: "../../../h/qt-icon.png"
                width: app.fs*10
                fillMode: Image.PreserveAspectFit
                anchors.verticalCenter: parent.verticalCenter
                Text{
                    text:"<b>Qt Open Source</b>"
                    font.pixelSize: app.fs*0.7
                    wrapMode: Text.WordWrap
                    color: app.c2
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter:  parent.horizontalCenter
                    anchors.bottom: parent.top
                    anchors.bottomMargin: app.fs*0.5
                }
            }
            Text{
                text:"\uf062"
                rotation: 90
                font.family: "FontAwesome"
                font.pixelSize: unikicon.width*0.3
                wrapMode: Text.WordWrap
                color: app.c2
                horizontalAlignment: Text.AlignHCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            Item{width: app.fs*0.5;height: 10}
            Image {
                id:unikicon
                source: "../../../h/unik.png"
                fillMode: Image.PreserveAspectFit
                anchors.verticalCenter: parent.verticalCenter
                Behavior on width{NumberAnimation{duration: 1500}}
                Text{
                    text:"<b>Unik</b>"
                    font.pixelSize: app.fs*0.7
                    wrapMode: Text.WordWrap
                    color: app.c2
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter:  parent.horizontalCenter
                    anchors.bottom: parent.top
                    anchors.bottomMargin: app.fs*0.5
                }
            }
        }

    }


    //11
    Row{
        id:x11
        anchors.centerIn: r
        opacity: 0.0
        spacing:app.fs*0.5
        Behavior on opacity{NumberAnimation{duration:500}}
        Image {
            source: "../../../h/qml.png"
            width: app.fs*10
            fillMode: Image.PreserveAspectFit
            anchors.verticalCenter: parent.verticalCenter
            Text{
                text:"<b>Tus conocimientos</b><br><b>sobre QML</b>"
                font.pixelSize: app.fs*0.7
                wrapMode: Text.WordWrap
                color: app.c2
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter:  parent.horizontalCenter
                anchors.bottom: parent.top
                anchors.bottomMargin: app.fs*0.5
            }
        }
        Item{
            width: app.fs*4
            height: parent.height-app.fs*2
            anchors.verticalCenter: parent.verticalCenter
            Rectangle{
                width: app.fs*0.25
                height: parent.height
                color: app.c2
                anchors.horizontalCenter: parent.horizontalCenter
                Rectangle{
                    width: app.fs*2
                    height: app.fs*0.25
                    color: app.c2
                    anchors.left: parent.right
                }
                Rectangle{
                    width: app.fs*2
                    height: app.fs*0.25
                    color: app.c2
                    anchors.right: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                }
                Rectangle{
                    width: app.fs*2
                    height: app.fs*0.25
                    color: app.c2
                    anchors.bottom: parent.bottom
                    anchors.left: parent.right
                }
            }
        }
        Column{
            anchors.verticalCenter: parent.verticalCenter
            spacing: app.fs*3
            Image {
                source: "../../../h/qt-icon.png"
                width: app.fs*6
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter
                Text{
                    text:"<b>Qt Open Source</b><br><b>Tamaño: </b>2Gb"
                    font.pixelSize: app.fs*0.7
                    wrapMode: Text.WordWrap
                    color: app.c2
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter:  parent.horizontalCenter
                    anchors.bottom: parent.top
                    anchors.bottomMargin: app.fs*0.1
                }
            }
            Image {
                source: "../../../h/unik.png"
                width: app.fs*4.5
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter
                Text{
                    text:"<b>Unik</b><br><b>Tamaño: </b>100Mb"
                    font.pixelSize: app.fs*0.7
                    wrapMode: Text.WordWrap
                    color: app.c2
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter:  parent.horizontalCenter
                    anchors.bottom: parent.top
                    anchors.bottomMargin: app.fs*0.1
                }
            }
        }
    }



    Xa{id:xa}
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            x1.opacity=app.lnl(0, 4)==='activo'?1.0:0.0
            x2.opacity=app.lnl(4, 16)==='activo'?1.0:0.0
            x3.opacity=app.lnl(16, 22)==='activo'?1.0:0.0
            x4.opacity=app.lnl(22, 50)==='activo'?1.0:0.0
            txtRes.text=app.lnl(22, 42)==='activo'?'<b>Resultado</b><br><b>En esta pantalla</b><br>\uf063':'<b>Resultado</b><br><b>En otra instancia de unik</b><br>\uf063'


            if(app.lnl(22, 31)==='activo'){
                marco1.visible=!marco1.visible
            }else{
                marco1.visible=true
                marco2.visible=!marco2.visible
            }
            if(app.lnl(22, 25)==='activo'&&cod.cursorPosition<40){
                cod.cursorPosition++
            }else{
                //cod.cursorPosition=0
            }
            if(app.lnl(25, 26)==='activo'){
                var cp=cod.cursorPosition
                cod.text='Rectangle{\n      width:100\n     height:100\n    color:"ed"\n}'
                cod.cursorPosition=cp
            }
            if(app.lnl(26, 27)==='activo'){
                var cp=cod.cursorPosition
                cod.text='Rectangle{\n      width:100\n     height:100\n    color:"d"\n}'
                cod.cursorPosition=cp
            }
            if(app.lnl(27, 28)==='activo'){
                var cp=cod.cursorPosition
                cod.text='Rectangle{\n      width:100\n     height:100\n    color:""\n}'
                cod.cursorPosition=cp
            }
            if(app.lnl(28, 29)==='activo'){
                var cp=cod.cursorPosition
                cod.text='Rectangle{\n      width:100\n     height:100\n    color:"b"\n}'
                cod.cursorPosition=cp
            }
            if(app.lnl(29, 30)==='activo'){
                var cp=cod.cursorPosition
                cod.text='Rectangle{\n      width:100\n     height:100\n    color:"bl"\n}'
                cod.cursorPosition=cp
            }
            if(app.lnl(30, 31)==='activo'){
                var cp=cod.cursorPosition
                cod.text='Rectangle{\n      width:100\n     height:100\n    color:"blu"\n}'
                cod.cursorPosition=cp
            }
            if(app.lnl(31, 50)==='activo'){
                var cp=cod.cursorPosition
                cod.text='Rectangle{\n      width:100\n     height:100\n    color:"blue"\n}'
                cod.cursorPosition=cp
            }

            x5.opacity=app.lnl(50, 76)==='activo'?1.0:0.0
            txtTit100.text=app.lnl(73, 79)==='activo'?"<b>Framework o SDK</b>":"<b>Software y Herramientas de Programaciòn</b>"

            if(app.lnl(65, 78)==='activo'){
                marco3.border.color="red"
            }else{
                marco3.border.color=app.c2
            }

            x6.opacity=app.lnl(76, 91)==='activo'?1.0:0.0
            x7.opacity=app.lnl(92, 99)==='activo'?1.0:0.0
            x8.opacity=app.lnl(99, 115)==='activo'?1.0:0.0
            x9.opacity=app.lnl(115, 127)==='activo'?1.0:0.0
            x10.opacity=app.lnl(127, 135)==='activo'?1.0:0.0
            if(app.lnl(129, 135)==='activo'){
                unikicon.width=app.fs*6
            }else{
                unikicon.width=0
            }
            x11.opacity=app.lnl(135, 166)==='activo'?1.0:0.0
        }
    }



    Component.onCompleted: {
        //Parrafos
        var at='¿Que Herramientas necesito para este Curso?     Para este curso en principio no necesitas nada màs que ejecutar la aplicaciòn unik qml engine, tal como lo has hecho para ver este contenido.       La aplicaciòn unik en este momento  esta haciendo correr este curso para tì , ademàs te permitirà interactuar de tal modo que podràs modificar el còdigo fuente de los ejerciciòs y ejemplos mostrados en pantalla.      No solo podras modificar y ejecutar el còdigo QML/JavaScript para hacerlo correr dentro de esta pantalla, ademàs, podras hacer correr aplicaciones completas he independientes de este curso sin importar en que sistema operativo te encuentres.      Para programar una aplicaciòn, el programador necesita contar con algunas herramientas indispensables. Ademàs de un ordenador, computadora y sistema operativo, necesita de una o varias herramientas que en conjunto si pertenecen a un mismo kit las mismas conforman lo que se conoce como Framework o SDK.      Este curso no pretende ser un Entorno de Desarrollo, si bien con unik solamente tu ya puedes desarrollar aplicaciones muy potentes, lo que en este contexto puedas desarrollar pretendemos que sea suficiente para que tu puedas ejercitar con QML, JavaScript, Sqlite y demàs.  Si aprendes QML, solamente con un editor de texto y unik puedes hacer algo similar o mejor que este curso en todos los sistemas operativos.        Por ejemplo desde el editor de texto llamado VIM, se ha escrito todo el còdigo fuente QML de este curso para que funcione dentro de la aplicaciòn que vez en pantalla. Esta aplicaciòn se llama Unik y fue desarrollada dentro de el Framework Qt Open Source.      Todo el conocimiento que adquieras en este curso, es totalmente ùtil para que puedas crear aplicaciones tanto en el Framework Qt como en Unik. Puedes comenzar con Unik y luego llevar tu còdigo a Qt. Ten en cuenta que el Framework Qt tiene un tamaño aproximado de 2Gb y Unik solo tiene un tamaño de 100Mb. Ambos son multiplataforma.'

        xT.at=at.replace(/\n/g, ' ')
        //Ayudas
        var h1= 'Qt es un Framework, Entorno Multiplataforma de Trabajo para el desarrollo de aplicaciones informàticas. Està orientado a objetos para la creaciòn de aplicaciones  multiplataforma que requieran una GUI (Interfaz Gràfica de Usuario) o tambieǹ para aplicaciones del tipo consola que no lo requieran. Qt es desarrollado por la Comunidad Qt Project conjuntamente con Digia y otras empresas. Qt es distribuido de manera libre bajo la licencia LGPL, LGPL2 y tambièn es distribuido en la modalidad Enterprise. Puedes conocer màs sobre Qt en www.qt.io.'
        var h2= 'Unik es una aplicaciòn desarrollada por @nextsigner con el Entorno de Desarrollo Qt Open Source. El proyecto es distribuido libremente bajo la licencia LGPL y su còdigo fuente està publicado en GitHub.com.  Unik se caracteriza por ser la ùnica aplicaciòn diseñada para descargar proyectos QML directamente desde GitHub.com, asì mismo hacer correr proyectos QML desde carpetas locales o remotas. La documentaciòn està disponible en el sitio oficial de unik llamado www.unikode.org y en el repositorio oficial en GitHub.com cuya url es https://www.github.com/nextsigner/unik.'
        xa.addBa('Màs informaciòn Sobre Qt',h1,'./h/sobre_qt.m4a')
        xa.addBa('Màs informaciòn Unik', h2,'./h/sobre_unik.m4a')
        xa.addBa('Ir al siguiente','','1')
    }
}
