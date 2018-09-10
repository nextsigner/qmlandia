import QtQuick 2.0
import QtGraphicalEffects 1.0
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
    property var ai: ["qml.png","qt-icon.png","apps.png","sdk.png","unik.png"]

    //1
    Column{
        id:x1
        anchors.centerIn: r
        spacing: app.fs*0.5
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>¿Que conocimientos previos</b><br><b>se requieren para este curso?</b>'
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: app.fs*2
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
    }

    //2
    Item{
        id:x2
        anchors.centerIn: r
        //spacing: app.fs*0.5
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            id:txt1
            text:'<b>Leer</b>'
            anchors.centerIn: parent
            font.pixelSize: app.fs*4
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
        Text{
            id:txt2
            text:'<b>Escribir</b>'
            anchors.centerIn: parent
            font.pixelSize: app.fs*4
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
        Text{
            id:txt3
            text:'<b>"Operaciones:"</b>{<br>      "sumar":"<b>+</b>",<br>      "restar":"<b>-</b>",<br>      "multiplicar":"<b>*</b>",<br>      "dividir":"<b>/</b>"<br>}'
            anchors.centerIn: parent
            font.pixelSize: app.fs*2
            color: app.c2
            font.family: 'FontAwesome'
            textFormat: Text.RichText
        }
    }

    //3
    Item{
        id:x3
        anchors.centerIn: r
        //spacing: app.fs*0.5
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            id:txt4
            text:'<b>LÒGICA</b>'
            anchors.centerIn: parent
            font.pixelSize: app.fs*4
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
        Text{
            id:txt5
            text:'<b>"A" no es igual a "A"</b><br><b>"A" no es igual igual a "A"</b><br><b>"A" es igual igual igual a "A"</b>'
            anchors.centerIn: parent
            font.pixelSize: app.fs*1.5
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
        Text{
            id:txt6
            text:'<b>Llevo paraguas si hay sol<br>o lluvia pero no hay viento</b><br><br><b>"Perro" y "Conejo" son "Animales"</b>'
            anchors.centerIn: parent
            font.pixelSize: app.fs*1.5
            color: app.c2
            font.family: 'FontAwesome'
            textFormat: Text.RichText
        }
    }

    //4
    Item{
        id:x4
        anchors.centerIn: r
        width: app.fs*10
        height: app.fs*8
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            id:txt8
            font.pixelSize: app.fs*0.5
            color: app.c2
            font.family: 'FontAwesome'
            width: parent.width
            wrapMode: Text.WordWrap
            Behavior on y{NumberAnimation{duration:20000}}
        }
        Image {
            id: img1
            source: "../../h/js.png"
            width: app.fs*16
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            visible: false
        }
        ColorOverlay {
            id: img2
            anchors.fill: img1
            source: img1
            color: app.c2
        }
        Image {
            id: img3
            source: "../../h/editor_3.png"
            width: app.fs*18
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            Marco{}
        }
        Text{
            id:txt7
            anchors.centerIn: parent
            text:'<b>SQL</b><br><b>SQLite</b><br><b>MySQL</b><br><b>Otros...</b>'
            font.pixelSize: app.fs*1.5
            color: app.c2
            font.family: 'FontAwesome'
            textFormat: Text.RichText
            horizontalAlignment: Text.AlignHCenter
        }
    }

    //5
    Item{
        id:x5
        anchors.centerIn: r
        width: app.fs*10
        height: app.fs*8
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            id:txt9
            text:'<b>JavaScript</b>'
            anchors.centerIn: parent
            font.pixelSize: app.fs
            color: app.c2
            font.family: 'FontAwesome'
            Text{
                text:'<b> Internet Programaciòn </b>'
                anchors.verticalCenter: txt9.verticalCenter
                anchors.left: txt9.right
                anchors.leftMargin: app.fs*0.5
                font.pixelSize: app.fs
                color: app.c2
                font.family: 'FontAwesome'
            }
            Text{
                text:'<b> @YTodoTendencias Cursos </b>'
                anchors.verticalCenter: txt9.verticalCenter
                anchors.right: txt9.left
                anchors.rightMargin: app.fs*0.5
                font.pixelSize: app.fs
                color: app.c2
                font.family: 'FontAwesome'
            }
            Text{
                text:'<b> W3C Tutoriales On-Line </b>'
                anchors.horizontalCenter: txt9.horizontalCenter
                anchors.bottom: txt9.top
                anchors.bottomMargin: app.fs*0.5
                font.pixelSize: app.fs
                color: app.c2
                font.family: 'FontAwesome'
            }
            Text{
                text:'<b> Platzi Udemy CodigoFacilito </b>'
                anchors.horizontalCenter: txt9.horizontalCenter
                anchors.top: txt9.bottom
                anchors.topMargin: app.fs*0.5
                font.pixelSize: app.fs
                color: app.c2
                font.family: 'FontAwesome'
            }
        }

        Rectangle{
            id:xLupa
            width: parent.width*0.5
            height: width
            color:app.c3
            radius: width*0.5
            border.width: app.fs*0.5
            border.color: app.c2
            anchors.verticalCenter: parent.verticalCenter
            SequentialAnimation{
                running: true
                loops: Animation.Infinite
                NumberAnimation {
                    target: xLupa
                    property: "x"
                    from: 0-xLupa.width+xLupa.parent.width/2-app.fs*0.5
                    to: xLupa.parent.width/2-app.fs*0.5
                    duration: 1500
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    target: xLupa
                    property: "x"
                    from: xLupa.parent.width/2-app.fs*0.5
                    to:0-xLupa.width+xLupa.parent.width/2-app.fs*0.5
                    duration: 1500
                    easing.type: Easing.InOutQuad
                }
            }
            Item{
                width: app.fs*0.5
                height: parent.height*3
                anchors.centerIn: parent
                rotation:-35


                Rectangle{
                    width: parent.width
                    height: parent.height/24*8
                    color:app.c2
                    anchors.bottom: parent.bottom
                    Rectangle{
                        width: parent.width*1.3
                        height: app.fs*0.25
                        color:app.c2
                        radius: app.fs*0.25
                        anchors.top: parent.top
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Rectangle{
                        width: parent.width*1.3
                        height: app.fs*0.25
                        color:app.c2
                        radius: app.fs*0.25
                        anchors.bottom: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }

            Item{
                width: parent.width-app.fs
                height: width
                anchors.centerIn: parent
                clip:true
                Text{
                    id:txt10
                    text:'<b>JavaScript</b>'
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: app.fs*2
                    color: app.c2
                    font.family: 'FontAwesome'
                    width: contentWidth
                    SequentialAnimation{
                        running: true
                        loops: Animation.Infinite
                        NumberAnimation {
                            target: txt10
                            property: "x"
                            from: 0
                            to:0-txt10.contentWidth+txt10.parent.width
                            duration: 1500
                            easing.type: Easing.InOutQuad
                        }
                        NumberAnimation {
                            target: txt10
                            property: "x"
                            from: 0-txt10.contentWidth+txt10.parent.width
                            to: 0
                            duration: 1500
                            easing.type: Easing.InOutQuad
                        }
                    }
                    /*Behavior on x{NumberAnimation{duration:1000}}
                    Timer{
                        running: true
                        repeat: true
                        interval: 1000
                        onTriggered: {
                            if(txt10.x===0){
                                txt10.x=0-(txt10.parent.width-txt10.contentWidth)
                            }else{
                                txt10.x=0
                            }
                        }
                    }*/
                }

            }

        }
    }

    //6
    Grid{
        id:x6
        anchors.centerIn: r
        columns: 5
        spacing: app.fs*0.5
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Repeater{
            model:["JS", "POO", "SQL", "HTML", "CSS", "UML", "UX", "UI", "PD", "Otros"]
            Rectangle{
                width: app.fs*4
                height: app.fs*1.4
                color:app.c3
                border.width: 2
                border.color: app.c2
                Text{
                    text:'<b>'+modelData+'</b>'
                    anchors.centerIn: parent
                    font.pixelSize: app.fs
                    color: app.c2
                    font.family: 'FontAwesome'
                }
                Item{
                    width: 2
                    height: app.fs*20
                    anchors.centerIn: parent
                    Rectangle{
                        visible:index<=4
                        width: parent.width
                        height: parent.parent.color===app.c3?0:parent.height/2
                        anchors.bottom: parent.verticalCenter
                        anchors.bottomMargin: parent.parent.height/2
                        color:app.c2
                        Behavior on height{NumberAnimation{duration:500}}
                    }
                    Rectangle{
                        visible:index>4
                        width: parent.width
                        height: parent.parent.color===app.c3?0:parent.height/2
                        anchors.top: parent.verticalCenter
                        anchors.topMargin: parent.parent.height/2
                        color:app.c2
                        Behavior on height{NumberAnimation{duration:500}}
                    }
                }
            }
        }
    }

    //7
    Item{
        id:x7
        width: app.fs*6
        height: width
        anchors.centerIn: parent
        Image {
            id: img8
            source: "../../h/me_gusta.png"
            width: parent.width
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            visible: false
        }
        ColorOverlay {
            id: img9
            anchors.fill: img8
            source: img8
            color: app.c2
        }

    }

    //8
    Item{
        id:x8
        width: app.fs*6
        height: width
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: r.bottom
        anchors.bottomMargin: app.fs*4
        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            Repeater{
                model: 7
                Rectangle{
                    width: app.fs*3
                    height: width*(index+1)
                    color: app.c2
                    anchors.bottom: parent.bottom
                    Rectangle{
                        width: parent.width*0.6
                        height: width
                        radius: width*0.5
                        color: app.c3
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: app.fs*0.5
                        Text {
                            text: '<b>'+(index+1)+'</b>'
                            font.pixelSize: parent.width*0.5
                            color:app.c2
                            anchors.centerIn: parent
                        }
                    }

                    Item{
                        id:flecha
                        width: app.fs
                        height: app.fs*3
                        anchors.horizontalCenter: parent.horizontalCenter
                        //y: 0-height-app.fs
                        visible: index===0
                        SequentialAnimation{
                            running: true
                            loops: Animation.Infinite
                            NumberAnimation {
                                target: flecha
                                property: "y"
                                from:0-height*2-app.fs
                                to: 0-height-app.fs
                                duration: 200
                                easing.type: Easing.InOutQuad
                            }
                            NumberAnimation {
                                target: flecha
                                property: "y"
                                from:0-height-app.fs
                                to: 0-height*2-app.fs
                                duration: 500
                                easing.type: Easing.InOutQuad
                            }
                        }
                        Rectangle{
                            width: parent.width
                            height: width
                            color:app.c2
                            rotation:45
                            anchors.bottom: parent.bottom
                        }
                        Rectangle{
                            width: parent.width*1.2
                            height: parent.height-width
                            color:app.c3
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: width/2
                            Rectangle{
                                width: parent.width*0.5
                                height: parent.height
                                color:app.c2
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.bottom: parent.bottom
                            }
                        }

                    }

                }
            }
        }
    }

    //9
    Item{
        id:x9
        width: app.fs*6
        height: width
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: r.bottom
        anchors.bottomMargin: app.fs*5
        Item{
            id:flecha2
            width: app.fs
            height: app.fs*3
            anchors.horizontalCenter: parent.horizontalCenter
            SequentialAnimation{
                running: true
                loops: Animation.Infinite
                NumberAnimation {
                    target: flecha2
                    property: "y"
                    from:x9.height-flecha2.height
                    to: x9.height-flecha2.height-app.fs*2
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    target: flecha2
                    property: "y"
                    from:x9.height-flecha2.height-app.fs*2
                    to: x9.height-flecha2.height
                    duration: 500
                    easing.type: Easing.InOutQuad
                }
            }
            Rectangle{
                width: parent.width
                height: width
                color:app.c2
                rotation:45
                anchors.bottom: parent.bottom
            }
            Rectangle{
                width: parent.width*1.2
                height: parent.height-width
                color:app.c3
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: width/2
                Rectangle{
                    width: parent.width*0.5
                    height: parent.height
                    color:app.c2
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                }
            }

            Text{
                id:txt12
                text:'<b>CONTROLES</b>'
                font.pixelSize: app.fs
                color: app.c2
                font.family: 'FontAwesome'
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.top
                anchors.topMargin: app.fs
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

            x2.opacity=app.lnl(4, 13)==='activo'?1.0:0.0
            txt1.opacity=app.lnl(7, 8)==='activo'?1.0:0.0
            txt2.opacity=app.lnl(8, 9)==='activo'?1.0:0.0
            txt3.opacity=app.lnl(9, 13)==='activo'?1.0:0.0

            x3.opacity=app.lnl(13, 30)==='activo'?1.0:0.0
            txt4.opacity=app.lnl(13, 17)==='activo'?1.0:0.0
            txt5.opacity=app.lnl(17, 23)==='activo'?1.0:0.0
            txt6.opacity=app.lnl(23, 30)==='activo'?1.0:0.0

            x4.opacity=app.lnl(30, 45)==='activo'?1.0:0.0
            img2.opacity=app.lnl(30, 36)==='activo'?1.0:0.0
            txt8.opacity=app.lnl(30, 36)==='activo'?0.65:0.0
            txt8.y=app.lnl(30, 36)==='activo'?0-txt8.contentHeight:0.0
            img3.opacity=app.lnl(36, 42)==='activo'?1.0:0.0
            txt7.opacity=app.lnl(42, 46)==='activo'?1.0:0.0

            x5.opacity=app.lnl(46, 78)==='activo'?1.0:0.0

            x6.opacity=app.lnl(78, 100)==='activo'?1.0:0.0
            //JS
            x6.children[0].color=app.lnl(83.5, 85)==='activo'?app.c2:app.c3
            x6.children[0].children[0].color=app.lnl(83.5, 85)==='activo'?app.c3:app.c2
            //POO
            x6.children[1].color=app.lnl(85, 86.5)==='activo'?app.c2:app.c3
            x6.children[1].children[0].color=app.lnl(85, 86.5)==='activo'?app.c3:app.c2
            //SQL
            x6.children[2].color=app.lnl(86.5, 88)==='activo'?app.c2:app.c3
            x6.children[2].children[0].color=app.lnl(86.5, 88)==='activo'?app.c3:app.c2
            //HTML
            x6.children[3].color=app.lnl(88, 89.5)==='activo'?app.c2:app.c3
            x6.children[3].children[0].color=app.lnl(88, 89.5)==='activo'?app.c3:app.c2
            //CSS
            x6.children[4].color=app.lnl(89.5, 91)==='activo'?app.c2:app.c3
            x6.children[4].children[0].color=app.lnl(89.5, 91)==='activo'?app.c3:app.c2
            //UML
            x6.children[5].color=app.lnl(91, 92)==='activo'?app.c2:app.c3
            x6.children[5].children[0].color=app.lnl(91, 92)==='activo'?app.c3:app.c2
            //UX
            x6.children[6].color=app.lnl(92, 93)==='activo'?app.c2:app.c3
            x6.children[6].children[0].color=app.lnl(92, 93)==='activo'?app.c3:app.c2
            //UI
            x6.children[7].color=app.lnl(93, 94)==='activo'?app.c2:app.c3
            x6.children[7].children[0].color=app.lnl(93, 94)==='activo'?app.c3:app.c2
            //PD
            x6.children[8].color=app.lnl(94, 95)==='activo'?app.c2:app.c3
            x6.children[8].children[0].color=app.lnl(94, 95)==='activo'?app.c3:app.c2
            //Otros
            x6.children[9].color=app.lnl(95, 96)==='activo'?app.c2:app.c3
            x6.children[9].children[0].color=app.lnl(95, 96)==='activo'?app.c3:app.c2

            x7.opacity=app.lnl(97, 100)==='activo'?1.0:0.0
            x8.opacity=app.lnl(100, 110)==='activo'?1.0:0.0

            x9.opacity=app.lnl(110, 120)==='activo'?1.0:0.0
            if(app.lnl(110, 120)==='activo'&&controles.rb.opacity===0.0){
                controles.rb.opacity=1.0
            }

            if(app.lnl(10, 15)==='activo'){
                xT.ex=app.fs*5
            }
            if(app.lnl(40, 50)==='activo'){
                xT.ex=app.fs*10
            }
        }
    }

    Component.onCompleted: {
        //Ejemplo JS
        var js='function prepMod(){
    xT.at=\'\'
    xT.ex=0
    for(var i=0;i<xS.children.length;i++){
        xS.children[i].destroy(1)
    }
    var code=\'import QtQuick 2.0\n\'
    code+=\'import Qt.labs.folderlistmodel 2.2\n\'
    code+=\'Item{\n\'
    code+=\'         FolderListModel{\n\'
    code+=\'         folder: Qt.platform.os!==\'windows\'?appsDir+\'/qmlandia/\'+xP.am[app.mod]:\'file:///\'+appsDir+\'/qmlandia/\'+xP.am[app.mod]\n\'
    code+=\'                 id:fl2\n\'
    code+=\'                 showFiles: false\n\'
    code+=\'                 sortField: FolderListModel.Name\n\'
    code+=\'                 onCountChanged: {\n\'
    code+=\'                     tfl2.restart()\n\'
    code+=\'                 }\n\'
    code+=\'             }\n\'

    code+=\'             Timer{\n\'
    code+=\'                     id:tfl2\n\'
    code+=\'                     running: false\n\'
    code+=\'                     repeat: false\n\'
    code+=\'                     interval: 1000\n\'
    code+=\'                     onTriggered: {\n\'
    code+=\'                                 var v=0\n\'
    code+=\'                                 xP.ars=[]\n\'
    code+=\'                                 for(var i=0;i<fl2.count;i++){\n\'
    code+=\'                                         xP.ars.push(fl2.get(i, \'fileName\'))\n\'
    code+=\'                                         v++\n\'
    code+=\'                                 } \n\'
    code+=\'                                 app.cants=v\n\'
    code+=\'                                 //console.log("El modulo "+app.mod+" tiene "+v+" secciones.")\n\'
    code+=\'                                 showS()\n\'
    code+=\'                      }\n\'
    code+=\'               }\n\'


    code+=\'}\n\'



    var obj = Qt.createQmlObject(code, xS, \'xm2\')
    controles.visible=true
}
function showS(){
    for(var i=0;i<xS.children.length;i++){
        xS.children[i].destroy(1)
    }
    var code=\'import QtQuick 2.0\n\'
    code+=\'import "\'+xP.am[app.mod]+\'/\'+xP.ars[app.s]+\'" as SX\n\'
    code+=\'Item{\n\'
    code+=\'anchors.fill:parent\n\'
    code+=\'     SX.S{}\n\'
    code+=\'}\n\'
    app.mp.source=\'\'+xP.am[app.mod]+\'/\'+xP.ars[app.s]+\'/a1.m4a\'
    app.mp.play()
    console.log(\'Code: \'+code)
    var obj = Qt.createQmlObject(code, xS, \'xm2\')
    xC.z=xS.z+1
    console.log(\'Mostrando Secciòn desde carpeta: \'+xP.am[app.mod]+\'/\'+xP.ars[app.s])
}
function showCab(){
    app.cb.tit="Modulo "+parseInt(app.mod+1)+" de "+app.cantmod+" Secciòn "+parseInt(app.s+1)+" de "+app.cants
}
function addA(t1, t2, s){
    var componente = Qt.createComponent(\'A.qml\')
    var objeto = componente.createObject(app, {"t1":t1, "t2": t2, "source": s})
}
function lnl(d, h){
    return app.mp.position>d*1000&&app.mp.position<h*1000? \'activo\':\'inactivo\'
}
function runQml(c){
    var obj = Qt.createQmlObject(c, xS, \'xm4\')
}
function setTema(){
    if(appSettings.tema===1){
        c1=\'#000\'
        c2=\'#333\'
        c3= \'white\'
        c4= \'black\'
    }
    if(appSettings.tema===2){
        c1=\'#333\'//"#62DA06"
        c2=\'white\'//"#8DF73B"
        c3= \'black\'//"black"
        c4= \'#ccc\'//"white"
    }
    if(appSettings.tema===3){
        c1="#EB761D"
        c2="#ff8833"
        c3="black"
        c4="white"
    }
    if(appSettings.tema===4){
        c1="#62DA06"
        c2="#8DF73B"
        c3="black"
        c4="white"
    }
    prepMod()
}
'
        txt8.text=js

        //Parrafos
        var at='¿Que conocimientos previos se requiere para este Curso?

Como mìnimo debes saber leer, escribir y realizar operaciones matemàticas bàsicas. Dedicarse a la Programaciòn requiere entender Lògica o tener un razonamiento analìtico combinado con la curiosidad, interès pleno en lo que se realiza, voluntad, paciencia y perceverancia.

Para avanzar con comodidad en este curso, es necesario poseer algun conocimiento previo sobre JavaScript, cierto dominio de algun procesador de texto y nociones sobre el manejo de bases de datos.

Si desconoces sobre estos asuntos mencionados, asì mismo puedes avanzar en este curso pero te recomendamos que en paralelo vayas adquiriendo alguna experiencia sobre ello en las diferentes y variadas fuentes de informaciòn que hay en internet. Para lograr objetivos contundentes en este campo de la informàtica, la programaciòn y el desarrollo de aplicaciones, es necesario estar siempre informado y actualizado.

Si ya tienes conocimiento sobre JavaScript, Programaciòn Orientada a Objetos (POO), Sql, HTML, CSS, UML, UX, UI, Patrones de Diseño y otros, bienvenido sea. Si este el caso, ten en cuenta que este curso està orientado para aquellas personas que recien se inician en la Programaciòn.

Este curso interactivo te permite ir saltando aquellas partes que ya conoces asì avanzas màs ràpido.

'
        xT.at=at.replace(/\n/g, ' ')

        //Ayudas
        xa.addBa('Ir al siguiente','','1')
    }
}
