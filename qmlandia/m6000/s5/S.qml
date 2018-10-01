import QtQuick 2.0
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0
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

    //1
    Item{
        id:x1
        anchors.centerIn: r
        width: app.fs*20
        height: app.fs*8
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>¿Còmo Depurar<br>o Encontrar Errores<br>en el Còdigo?</b>'
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
        width: app.fs*10
        height: app.fs*8
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            id:txt9
            text:'<b>funciones.jpg"</b>'
            anchors.centerIn: parent
            font.pixelSize: app.fs
            color: app.c2
            font.family: 'FontAwesome'
            Text{
                text:'<b> as MiJS</b>'
                anchors.verticalCenter: txt9.verticalCenter
                anchors.left: txt9.right
                anchors.leftMargin: app.fs*0.5
                font.pixelSize: app.fs
                color: app.c2
                font.family: 'FontAwesome'
            }
            Text{
                id:txtImport
                text:'<b> import "carpetaX/</b>'
                anchors.verticalCenter: txt9.verticalCenter
                anchors.right: txt9.left
                //anchors.rightMargin: app.fs*0.5
                font.pixelSize: app.fs
                color: app.c2
                font.family: 'FontAwesome'
            }
            Text{
                text:'/*<br><b>Este còdigo tiene errores </b><br>Unicamente puedes importar<br>archivos del tipo (.js), (.qml), mòdulos o plugins.<br>*/'
                anchors.left: txtImport.left
                anchors.bottom: txt9.top
                anchors.bottomMargin: app.fs*0.5
                font.pixelSize: app.fs
                color: app.c2
                font.family: 'FontAwesome'
            }
            Text{
                text:'Item{\n   width:300\n     height:300\n}'
                anchors.left: txtImport.left
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
                    duration: 2500
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    target: xLupa
                    property: "x"
                    from: xLupa.parent.width/2-app.fs*0.5
                    to:0-xLupa.width+xLupa.parent.width/2-app.fs*0.5
                    duration: 2500
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
                    text:'<b>funciones.jpg"</b>'
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
                            duration: 2500
                            easing.type: Easing.InOutQuad
                        }
                        NumberAnimation {
                            target: txt10
                            property: "x"
                            from: 0-txt10.contentWidth+txt10.parent.width
                            to: 0
                            duration: 2500
                            easing.type: Easing.InOutQuad
                        }
                    }
                }

                Text{
                    id:txtBug
                    text:'\uf188'
                    anchors.centerIn: parent
                    font.pixelSize: app.fs*2
                    color: 'red'
                    font.family: 'FontAwesome'
                    SequentialAnimation{
                        running: true
                        loops: Animation.Infinite
                        NumberAnimation {
                            target: txtBug
                            property: "opacity"
                            from: 0.0
                            to:1.0
                            duration: 1000
                        }
                    }

                }
            }

        }
    }

    //3
    Column{
        id:x3
        anchors.centerIn: r
        spacing: app.fs
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'Provocaremos un Error!'
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: app.fs*2
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
        Text{
            id:txtQmlandia
            text:'<b>1) Carpeta Principal:</b><br>'+appsDir+'/qmlandia'
            width: r.width*0.8
            wrapMode: Text.WrapAnywhere
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: app.fs
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
        Text{
            id:txtRutaJS
            text:'<b>2) Archivo JavaScript Existente:</b><br>'+appsDir+'/qmlandia/'+xP.am[app.mod]+'/'+xP.ars[app.s]+'/funciones.js'
            width: r.width*0.8
            wrapMode: Text.WrapAnywhere
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: app.fs
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
            Timer{
                running: x3.opacity===1.0
                repeat: true
                interval: 750
                onTriggered: txtRutaJS.opacity=txtRutaJS.opacity===1.0?0.65:1.0
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
        Text{
            text:'LogView.qml'
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: app.fs*2
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
        Text{
            id:txtRutaLogView
            text:'<b>1) Ubicaciòn LogView.qml:</b><br>'+appsDir+'/qmlandia/LogView.qml'
            width: r.width*0.8
            wrapMode: Text.WrapAnywhere
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: app.fs
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
    }


    //5
    Column{
        id:x5
        width: r.width-app.fs
        anchors.centerIn: r
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text {
            id: txt1
            text: "<b>Còmo importar un Archivo JavaScript</b><br>"
            font.pixelSize: app.fs
            color: app.c2
            textFormat: Text.RichText
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            id: txt2
            width: r.width*0.9
            wrapMode: Text.WrapAnywhere
            text:'import "../../funciones.js" as MiJS'
            font.pixelSize: app.fs
            color: app.c4
            textFormat: Text.RichText
            Marco{
                id:m1
                opacity:app.mp.position>1000*5 ? 1.0 : 0.0
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


    //6
    Column{
        id:x6
        width: r.width-app.fs
        height: r.height
        anchors.centerIn: r
        opacity: 0.0
        spacing:app.fs*0.1
        Behavior on opacity{NumberAnimation{duration:500}}
        property var ac: []
        Row{
            Text{
                text: 'Codigo Correcto'
                font.pixelSize: app.fs
                color:app.c2
            }
            RadioButton{
                id:rb1
                checked: true
                onCheckedChanged: {
                    if(checked){
                        rb2.checked=false
                        ti1.text=x6.ac[0]
                        for(var i=0;i<area.children.length;i++){
                            area.children[i].destroy(10)
                        }
                    }
                }
            }
            Item{width: app.fs*3;height: 2}
            Text{
                text: 'Codigo Incorrecto'
                font.pixelSize: app.fs
                color:app.c2
            }
            RadioButton{
                id:rb2
                onCheckedChanged: {
                    if(checked){
                        rb1.checked=false
                        ti1.text=x6.ac[1]
                        for(var i=0;i<area.children.length;i++){
                            area.children[i].destroy(10)
                        }
                    }
                }
            }
        }
        Row{
            width: r.width-app.fs
            height: parent.height-logView.height-app.fs-app.fs*0.3-xT.height
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: app.fs

            Item{
                id:xC1
                width: r.width*0.7-app.fs
                height: parent.height
                Marco{padding:app.fs*0.1}
                TextEdit{
                    id:ti1
                    width: parent.width-app.fs*0.1
                    height: parent.height-app.fs*0.1
                    font.pixelSize: app.fs*0.65
                    color: app.c2
                    anchors.centerIn: parent
                    wrapMode: Text.WordWrap
                    function runCode(){
                        for(var i=0;i<area.children.length;i++){
                            area.children[i].destroy(10)
                        }
                        var obj = Qt.createQmlObject(ti1.text, area, 'tuqml')
                        if(obj){
                            console.log('El còdigo qml ejecutado correctamente: Còdigo:\n'+ti1.text)
                        }
                    }
                }
                Boton{
                    id:btnRun
                    w:app.fs
                    h: w
                    t: '\uf04b'
                    b: app.c2
                    c: app.c3
                    d:'Ejecutar'
                    tp:1
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: app.fs*0.1
                    anchors.right: parent.right
                    anchors.rightMargin: app.fs*0.1
                    onClicking: {
                        ti1.runCode()
                    }
                    Rectangle{
                        id:marca2
                        width: parent.width+app.fs*0.4
                        height: parent.height+app.fs*0.4
                        anchors.centerIn: parent
                        color:'transparent'
                        border.width: app.fs*0.25
                        border.color: 'red'
                        SequentialAnimation{
                            running: x6.opacity===1.0
                            loops:Animation.Infinite
                            NumberAnimation {
                                target: marca2
                                property: "opacity"
                                duration: 500
                                from:1.0
                                to:0.0
                                easing.type: Easing.InOutQuad
                            }
                            NumberAnimation {
                                target: marca2
                                property: "opacity"
                                duration: 500
                                from:0.0
                                to:1.0
                                easing.type: Easing.InOutQuad
                            }
                        }
                    }

                }

            }
            Item{
                id:xC2
                width: r.width*0.3-app.fs
                height: parent.height
                Marco{padding:app.fs*0.1}
                Text{
                    text:'<b>Resultado</b>'
                    font.pixelSize: app.fs
                    color: app.c2
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.top
                    anchors.bottomMargin: app.fs*0.1
                }
                Item{
                    id:area
                    anchors.fill: parent
                }
            }
        }
        LogView{
            id:logView
            width: x6.width
            height: app.fs*6
            anchors.horizontalCenter: parent.horizontalCenter
            fontColor: app.c2
            bgColor: app.c3
            fontSize: app.fs*0.75
            showUnikInitMessages:false
            Rectangle{
                id:marca1
                anchors.fill: parent
                color:'transparent'
                border.width: app.fs*0.25
                border.color: 'red'
                Text{
                    text:'<b>LogView</b>'
                    font.pixelSize: app.fs*2
                    color: 'red'
                    anchors.centerIn: parent
                }
                SequentialAnimation{
                    running: x6.opacity===1.0
                    loops:Animation.Infinite
                    NumberAnimation {
                        target: marca1
                        property: "opacity"
                        duration: 500
                        from:1.0
                        to:0.0
                        easing.type: Easing.InOutQuad
                    }
                    NumberAnimation {
                        target: marca1
                        property: "opacity"
                        duration: 500
                        from:0.0
                        to:1.0
                        easing.type: Easing.InOutQuad
                    }
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
            x1.opacity=app.lnl(0, 6)==='activo'?1.0:0.0
            x2.opacity=app.lnl(6, 27)==='activo'?1.0:0.0
            x3.opacity=app.lnl(27, 66)==='activo'?1.0:0.0
            x4.opacity=app.lnl(66, 95)==='activo'?1.0:0.0

            x5.opacity=app.lnl(95, 126)==='activo'?1.0:0.0
            txt2.text=app.lnl(95, 110)==='activo'?'import "'+appsDir+'/qmlandia/'+xP.am[app.mod]+'/'+xP.ars[app.s]+'/funciones.js" as MiJS"':'import "'+appsDir+'/qmlandia/'+xP.am[app.mod]+'/'+xP.ars[app.s]+'/Misfunciones.js" as MiJS //NO EXISTE!'


            x6.opacity=app.lnl(126, 216)==='activo'?1.0:0.0
            marca1.visible=app.lnl(163, 170)==='activo'
            marca2.visible=app.lnl(170, 176)==='activo'
        }
    }
    Component.onCompleted: {
        var at='Còmo Depurar o Encontrar Errores'
        at+='Para continuar avanzando hacia las pròximas secciones, en este u otro mòdulo, ademàs de contar con la posibilidad de modificar el còdigo con el cuàl ejercitamos, necesitamos ir comprobando si ha ocurrido algùn error en el mismo.

En esta secciòn provocaremos o forzaremos un error para aprender còmo o de què modo tu puedes enterarte de lo ocurrido. Para provocar el error ten en cuenta 2 cosas que estamos viendo en pantalla. 1 La carpeta principal donde està alojado todo el còdigo fuente de este curso, 2 La ubicaciòn de un archivo llamado funciones.js que hemos creado para probar en esta secciòn.

En la carpeta principal de este curso hemos incluido un archivo llamado LogView.qml. Este archivo nos permite que tu puedas ver en pantalla un area de texto con los mensajes de errores, de informaciòn o de otros tipos que tu aplicaciòn emite segun ocurra un error, evento o se requiera informar algo.

En las secciones anteriores hemos aprendido còmo importar por ejemplo un archivo JavaScript. Supongamos que el archivo que intentamos importar no existe, entonces nos preguntamos ¿De què manera me entero o me doy cuenta que hay un error en nuestro còdigo? Ahora te mostramos còmo ver o encontrar los errores.

En la parte superior puedes elegir para ejercitar con 2 còdigos disponibles.  Elije la primer opciòn si quieres ejecutar un còdigo el cuàl funcionarà de manera correcta. Al elegir la segunda opciòn podràs provocar un error ya que este segundo còdigo tiene un fallo. El fallo consiste en que se intenta importar un archivo JavaScript que no existe. En la parte inferior, LogView.qml ya està funcionando y emitiendo mensajes. Presiona el boton situado abajo a la derecha y puedes ver los mensajes resultantes dentro del objeto Qml creado con LogView.qml.

En cualquiera de los casos puedes editar el còdigo. Intenta reparar el error del còdigo fallido. Recuerda que està intentando importar un archivo inexistente. Debes corregirlo importando un archivo JavaScript existente que ya te hemos indicado como se llama y donde està ubicado.
'
        xT.at=at.replace(/\n/g, ' ')

        //Ayudas
        xa.addBa('Ir al siguiente','','1')

        logView.clear()
        console.log('Este es LogView.qml!')


        x6.ac.push('import QtQuick 2.0\nimport "'+appsDir+'/qmlandia/'+xP.am[app.mod]+'/'+xP.ars[app.s]+'/funciones.js" as MiJS\nRectangle{\n    width:50\n    height:100\n    color:\'red\'\n}')
        x6.ac.push('import QtQuick 2.0\nimport "'+appsDir+'/qmlandia/'+xP.am[app.mod]+'/'+xP.ars[app.s]+'/Misfunciones.js" as MiJS\nRectangle{\n    width:10\n    height:70\n    color:\'blue\'\n}')
        ti1.text=x6.ac[0]
    }
}
