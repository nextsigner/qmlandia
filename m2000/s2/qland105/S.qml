import QtQuick 2.0
import QtQuick.Controls 2.0
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

    //1
    Text{
        id:x1
        text:"<b>¿En què consiste</b><br><b>este curso?</b>"
        font.pixelSize: app.fs*2
        wrapMode: Text.WordWrap
        color: app.c2
        horizontalAlignment: Text.AlignHCenter
        anchors.centerIn: r
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
    }


    //2
    Row{
        id:x2
        anchors.centerIn: r
        opacity: 0.0
        spacing:colAr1.opacity===0.0?0:app.fs*4
        Behavior on spacing{NumberAnimation{duration:500}}
        Behavior on opacity{NumberAnimation{duration:500}}
        Image {
            source: "../../../h/qml.png"
            width: app.fs*10
            fillMode: Image.PreserveAspectFit
            anchors.verticalCenter: parent.verticalCenter
            Text{
                text:"<b>Aprender QML</b>"
                width: contentWidth
                font.pixelSize: (app.fs)*(1.6-(arbol1.opacity))
                wrapMode: Text.WordWrap
                color: app.c2
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter:  parent.horizontalCenter
                anchors.bottom: parent.top
                anchors.bottomMargin: app.fs*0.5
            }
        }
        Item{
            id:arbol1
            width: opacity===0.0?0:app.fs*10
            height: opacity===0.0?0:app.fs*10
            anchors.verticalCenter: parent.verticalCenter
            opacity: 0.0

            Behavior on width{NumberAnimation{duration:1500}}
            Behavior on height{NumberAnimation{duration:1500}}
            Behavior on opacity{NumberAnimation{duration:500}}

            Rectangle{
                width: app.fs*0.25
                height: parent.height
                color: app.c2
                Rectangle{
                    width: app.fs*2
                    height: app.fs*0.25
                    color: app.c2
                    anchors.right: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                }
                Column{
                    id:colAr1
                    anchors.left: parent.right
                    //height: parent.height
                    spacing: (arbol1.height-app.fs)/3
                    Rectangle{
                        width: app.fs*2
                        height: app.fs*0.25
                        color: app.c2
                        id:rt1
                        opacity:0.0
                        Behavior on opacity{NumberAnimation{duration:500}}
                        Text{
                            text:"<b>Que es</b>"
                            font.pixelSize: app.fs
                            wrapMode: Text.WordWrap
                            color: app.c2
                            horizontalAlignment: Text.AlignHCenter
                            anchors.verticalCenter:  parent.verticalCenter
                            anchors.left: parent.right
                            anchors.leftMargin: app.fs*0.5
                        }
                    }
                    Rectangle{
                        width: app.fs*2
                        height: app.fs*0.25
                        color: app.c2
                        id:rt2
                        opacity:0.0
                        Behavior on opacity{NumberAnimation{duration:500}}
                        Text{
                            text:"<b>De donde proviene</b>"
                            font.pixelSize: app.fs
                            wrapMode: Text.WordWrap
                            color: app.c2
                            horizontalAlignment: Text.AlignHCenter
                            anchors.verticalCenter:  parent.verticalCenter
                            anchors.left: parent.right
                            anchors.leftMargin: app.fs*0.5
                        }
                    }
                    Rectangle{
                        width: app.fs*2
                        height: app.fs*0.25
                        color: app.c2
                        id:rt3
                        opacity:0.0
                        Behavior on opacity{NumberAnimation{duration:500}}
                        Text{
                            text:"<b>Porquè se llama asì</b>"
                            font.pixelSize: app.fs
                            wrapMode: Text.WordWrap
                            color: app.c2
                            horizontalAlignment: Text.AlignHCenter
                            anchors.verticalCenter:  parent.verticalCenter
                            anchors.left: parent.right
                            anchors.leftMargin: app.fs*0.5
                        }
                    }
                    Rectangle{
                        width: app.fs*2
                        height: app.fs*0.25
                        color: app.c2
                        id:rt4
                        opacity:0.0
                        Behavior on opacity{NumberAnimation{duration:500}}
                        Text{
                            text:"<b>Para què sirve</b>"
                            font.pixelSize: app.fs
                            wrapMode: Text.WordWrap
                            color: app.c2
                            horizontalAlignment: Text.AlignHCenter
                            anchors.verticalCenter:  parent.verticalCenter
                            anchors.left: parent.right
                            anchors.leftMargin: app.fs*0.5
                        }
                    }
                }
            }
        }
    }

    //3
    Row{
        id:x3
        anchors.centerIn: r
        height: app.fs*8
        spacing: app.fs*4
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Item{
            width: children[0].contentWidth
            height: parent.height
            Text{
                text:'<b>Teorìa %'+bar1.porc
                font.pixelSize: app.fs
                wrapMode: Text.WordWrap
                color: app.c2
                horizontalAlignment: Text.AlignHCenter
            }
            Rectangle{
                id:b1
                width: app.fs*2
                height: app.fs*5
                color: 'transparent'
                border.width: 2
                border.color: app.c2
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
            }
            Rectangle{
                id:bar1
                width: app.fs*2
                height: b1.height*0.01*porc
                anchors.horizontalCenter: parent.horizontalCenter
                color:app.c2
                anchors.bottom: parent.bottom
                property int porc: 0
                Behavior on porc{NumberAnimation{duration:1000}}
                Behavior on height{NumberAnimation{duration:1000}}
            }
        }
        Item{
            width: children[0].contentWidth
            height: parent.height
            Text{
                text:'<b>Pràctica %'+bar2.porc
                font.pixelSize: app.fs
                wrapMode: Text.WordWrap
                color: app.c2
                horizontalAlignment: Text.AlignHCenter
            }
            Rectangle{
                id:b2
                width: app.fs*2
                height: app.fs*5
                color: 'transparent'
                border.width: 2
                border.color: app.c2
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
            }
            Rectangle{
                id:bar2
                width: app.fs*2
                height: b2.height*0.01*porc
                anchors.horizontalCenter: parent.horizontalCenter
                color:app.c2
                anchors.bottom: parent.bottom
                property int porc: 0
                Behavior on porc{NumberAnimation{duration:1000}}
                Behavior on height{NumberAnimation{duration:1000}}
            }

        }

    }

    //4
    Item{
        id:x4
        anchors.centerIn: r
        height: app.fs*14
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Rectangle{
            width: app.fs*100
            height: tierra1.height
            color: "#ff8833"
            y:tierra1.height*0.6
            anchors.horizontalCenter: parent.horizontalCenter
            gradient: Gradient {
                GradientStop {
                    position: 0.00;
                    color: app.c3;
                }
                GradientStop {
                    position: 0.05;
                    color: "#ff8833";
                }
                GradientStop {
                    position: 1.0;
                    color: "#ff8833";
                }
            }
        }
        Image {
            id: arbol
            source: "arbol.png"
            height: parent.height
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent

        }
        Rectangle{
            id:tierra1
            color: "transparent"
            anchors.fill: arbol
            Rectangle{
                width: app.fs*2
                height: width
                color: "transparent"
                clip:true
                anchors.bottom: parent.bottom
                anchors.bottomMargin: app.fs
                x:parent.width*0.3-width/2
                Image {
                    id: r1
                    source: "../../../h/digia-logo.png"
                    width: parent.width
                    fillMode: Image.PreserveAspectFit
                    anchors.centerIn: parent
                }
            }

            Rectangle{
                width: app.fs*2
                height: width
                color: "transparent"
                clip:true
                anchors.bottom: parent.bottom
                anchors.bottomMargin: app.fs*2
                x:parent.width*0.5-width/2
                Image {
                    id: r2
                    source: "../../../h/qt-icon.png"
                    width: parent.width
                    fillMode: Image.PreserveAspectFit
                    anchors.centerIn: parent
                }
            }

            Rectangle{
                width: app.fs*2
                height: width
                color: "transparent"
                clip:true
                anchors.bottom: parent.bottom
                anchors.bottomMargin: app.fs
                x:parent.width*0.65-width/2
                Image {
                    id: r3
                    source: "../../../h/unik.png"
                    width: parent.width
                    fillMode: Image.PreserveAspectFit
                    anchors.centerIn: parent
                }
            }


            Rectangle{
                id:fruto1
                height: width
                color: "red"
                clip:true
                anchors.top: parent.top
                anchors.topMargin: app.fs*2
                radius: width*0.5
                x:parent.width*0.5-width/2
                Behavior on width{NumberAnimation{duration: 600;easing.type: Easing.OutElastic}}
                Text {
                    text: "<b>App</b>"
                    font.pixelSize: parent.width*0.35
                    color: 'white'
                    anchors.centerIn: parent
                }
            }

            Rectangle{
                id:fruto2
                height: width
                color: "red"
                clip:true
                anchors.top: parent.top
                anchors.topMargin: app.fs*3
                radius: width*0.5
                x:parent.width*0.35-width/2
                Behavior on width{NumberAnimation{duration: 600;easing.type: Easing.OutElastic}}
                Text {
                    text: "<b>App</b>"
                    font.pixelSize: parent.width*0.35
                    color: 'white'
                    anchors.centerIn: parent
                }
            }

            Rectangle{
                id:fruto3
                height: width
                color: "red"
                clip:true
                anchors.top: parent.top
                anchors.topMargin: app.fs*3
                radius: width*0.5
                x:parent.width*0.7-width/2
                Behavior on width{NumberAnimation{duration: 600;easing.type: Easing.OutElastic}}
                Text {
                    text: "<b>App</b>"
                    font.pixelSize: parent.width*0.35
                    color: 'white'
                    anchors.centerIn: parent
                }
            }


        }

    }

    //5
    Column{
        id:x5
        anchors.centerIn: r
        height: app.fs*8
        spacing: app.fs
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Row{
            spacing: app.fs
            Text {
                text: "Toca este<br>ComboBox! -->"
                font.pixelSize: app.fs
                color:app.c2
            }
            ComboBox{
                width: app.fs*20
                font.pixelSize:app.fs
                model: ["item de combobox 1", "item de combobox 2", "item de combobox 3", "item de combobox 4"]
            }
        }
        Row{
            spacing: app.fs
            property int c: 0
            Text {
                text: parent.c===0?"Selecciona<br>una opcion! -->":parent.c>1?"Opciòn cambiada "+parent.c+" veces":"Opciòn cambiada "+parent.c+" vez"
                font.pixelSize: app.fs
                color:app.c2
            }
            RadioButton{
                id:cb1
                text:'Opciòn 1'
                font.pixelSize: app.fs
                checked: true
                onCheckedChanged: {
                    if(checked){
                        cb2.checked=false
                        parent.c++
                    }
                }
            }
            RadioButton{
                id:cb2
                text:'Opciòn 2'
                font.pixelSize: app.fs
                onCheckedChanged: {
                    if(checked){
                        cb1.checked=false
                        parent.c++
                    }
                }
            }
        }
        Row{
            spacing: app.fs*2
            Text {
                text: "Edita este<br>TextArea! -->"
                font.pixelSize: app.fs
                color:app.c2
            }
            TextEdit{
                width: contentWidth+app.fs*2
                height: app.fs*4
                clip:true
                text:'Editame :)'
                font.pixelSize: app.fs
                color:app.c2
                wrapMode: Text.WordWrap
                Marco{}
            }
        }
    }

    //6
    Row{
        id:x6
        anchors.centerIn: r
        height: app.fs*8
        spacing: app.fs*2
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Item{
            width: app.fs*6
            height: app.fs*10
            Marco{}
            Text {
                text: '<b>Mòdulo 1</b>'
                font.pixelSize: app.fs
                anchors.horizontalCenter: parent.horizontalCenter
                color:app.c2
            }
            Column{
                anchors.centerIn: parent
                Repeater{
                    model:3
                    Text {
                        text: '<b>Secciòn '+parseInt(index+1)+'</b>'
                        font.pixelSize: app.fs
                        color:app.c2
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }
        Item{
            width: app.fs*6
            height: app.fs*10
            Marco{}
            Text {
                text: '<b>Mòdulo 2</b>'
                font.pixelSize: app.fs
                anchors.horizontalCenter: parent.horizontalCenter
                color:app.c2
            }
            Column{
                id:colr4
                anchors.centerIn: parent
                Repeater{
                    model:2
                    Text {
                        text: '<b>Secciòn '+parseInt(index+1)+'</b>'
                        font.pixelSize: app.fs
                        color:app.c2
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
            Column{
                id:colr5
                anchors.centerIn: parent
                Repeater{
                    model:5
                    Text {
                        text: '<b>Secciòn '+parseInt(index+1)+'</b>'
                        font.pixelSize: app.fs
                        color:app.c2
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }
        Item{
            width: app.fs*6
            height: app.fs*10
            Marco{}
            Text {
                text: '<b>Mòdulo X</b>'
                font.pixelSize: app.fs
                anchors.horizontalCenter: parent.horizontalCenter
                color:app.c2
            }
            Column{
                id:colr2
                anchors.centerIn: parent
                Repeater{
                    id:rep2
                    model:3
                    Text {
                        text: '<b>Secciòn '+parseInt(index+1)+'</b>'
                        font.pixelSize: app.fs
                        color:app.c2
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
            Column{
                id:colr3
                anchors.centerIn: parent
                Repeater{
                    id:rep3
                    model:6
                    Text {
                        text: '<b>Secciòn '+parseInt(index+1)+'</b>'
                        font.pixelSize: app.fs
                        color:app.c2
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }

    }

    //7
   Item{
        id:x7
        anchors.centerIn: r
        width: app.fs*20
        height: app.fs*10
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Rectangle{
            width: parent.width
            height: parent.height
            color: app.c2
            radius: app.fs
            Text{
                width: parent.width*0.8
                wrapMode: Text.WordWrap
                anchors.centerIn: parent
                font.pixelSize: app.fs
                color:app.c3
                text:'<b>Atenciòn!</b><br>Hay novedades en los mòdulos y secciones de este curso.<br><br>¿Desea Actualizar Qmlandia? '
            }
            Row{
                anchors.right: parent.right
                anchors.rightMargin: app.fs*0.5
                anchors.bottom: parent.bottom
                anchors.bottomMargin: app.fs*0.5
                spacing: app.fs*0.5
                Rectangle{
                    id:bot1
                    width: app.fs*3
                    height: app.fs*1.2
                    color: app.c3
                    radius: app.fs*0.25
                    Behavior on width{NumberAnimation{duration:150}}
                    Text{
                        anchors.centerIn: parent
                        font.pixelSize: app.fs
                        color:app.c2
                        text:'<b>Si</b> '
                    }
                }
                Rectangle{
                    width: app.fs*3
                    height: app.fs*1.2
                    color: app.c3
                    radius: app.fs*0.25
                    Text{
                        anchors.centerIn: parent
                        font.pixelSize: app.fs
                        color:app.c2
                        text:'<b>No</b> '
                    }
                }
            }
        }

    }

    //8
    Column{
        id:x8
        anchors.centerIn: r
        spacing: app.fs*2
        property int porc: 0
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Behavior on porc{NumberAnimation{duration:2500}}
        Text {
            text: '<b>Descargando desde GitHub.com</b>'
            font.pixelSize: app.fs*2
            color:app.c2
        }
        Text {
            text: '<b>%'+x8.porc+'</b>'
            font.pixelSize: app.fs*2
            color:app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    //9
    Item{
        id:x9
        anchors.centerIn: r
        width: app.fs*14
        height: app.fs*8
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Marco{visible:img9.width===app.fs*2}
        Image {
            id:img9
            source: "../../../h/unik.png"
            width: app.fs*10
            Behavior on width{NumberAnimation{duration:500}}
            fillMode: Image.PreserveAspectFit

        }
        Text{
            text:img9.width!==app.fs*2?"<b>Unik Qml Engine</b>":"<b>Unik Qml Engine</b><br>Aplicaciòn Madre"
            font.pixelSize: app.fs
            wrapMode: Text.WordWrap
            color: app.c2
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter:  parent.horizontalCenter
            anchors.bottom: parent.top
            anchors.bottomMargin: app.fs*0.5
        }
        Text {
            text: '<b>Qmlandia</b>'
            font.pixelSize: app.fs
            color:app.c2
            width: contentWidth
            height: app.fs
            anchors.centerIn: parent
            opacity: img9.width===app.fs*2
            Behavior on opacity{NumberAnimation{duration:500}}
            Marco{
                Text{
                    text:"Aplicaciòn Anidada"
                    font.pixelSize: app.fs
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


    //10
    Row{
        id:x10
        anchors.centerIn: r
        opacity: 0.0
        spacing:colAr1.opacity===0.0?0:app.fs*4
        Behavior on spacing{NumberAnimation{duration:500}}
        Behavior on opacity{NumberAnimation{duration:500}}
        Image {
            source: "../../../h/qml.png"
            width: app.fs*10
            fillMode: Image.PreserveAspectFit
            anchors.verticalCenter: parent.verticalCenter
            Text{
                text:"<b>Tu Còdigo QML</b><br><b>corriendo en </b>"
                font.pixelSize: app.fs
                wrapMode: Text.WordWrap
                color: app.c2
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter:  parent.horizontalCenter
                anchors.bottom: parent.top
                anchors.bottomMargin: app.fs*0.5
            }
        }
        Item{
            id:arbol2
            width: opacity===0.0?0:app.fs*10
            height: opacity===0.0?0:app.fs*10
            anchors.verticalCenter: parent.verticalCenter
            opacity: 0.0

            Behavior on width{NumberAnimation{duration:1500}}
            Behavior on height{NumberAnimation{duration:1500}}
            Behavior on opacity{NumberAnimation{duration:500}}

            Rectangle{
                width: app.fs*0.25
                height: parent.height
                color: app.c2
                Rectangle{
                    width: app.fs*2
                    height: app.fs*0.25
                    color: app.c2
                    anchors.right: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                }
                Column{
                    id:colAr2
                    anchors.left: parent.right
                    //height: parent.height
                    spacing: (arbol2.height-app.fs)/3
                    Rectangle{
                        width: app.fs*2
                        height: app.fs*0.25
                        color: app.c2
                        id:rt11
                        opacity:0.0
                        Behavior on opacity{NumberAnimation{duration:500}}
                        Text{
                            text:"<b>GNU/Linux</b>"
                            font.pixelSize: app.fs
                            wrapMode: Text.WordWrap
                            color: app.c2
                            horizontalAlignment: Text.AlignHCenter
                            anchors.verticalCenter:  parent.verticalCenter
                            anchors.left: parent.right
                            anchors.leftMargin: app.fs*0.5
                        }
                    }
                    Rectangle{
                        width: app.fs*2
                        height: app.fs*0.25
                        color: app.c2
                        id:rt12
                        opacity:0.0
                        Behavior on opacity{NumberAnimation{duration:500}}
                        Text{
                            text:"<b>Windows</b>"
                            font.pixelSize: app.fs
                            wrapMode: Text.WordWrap
                            color: app.c2
                            horizontalAlignment: Text.AlignHCenter
                            anchors.verticalCenter:  parent.verticalCenter
                            anchors.left: parent.right
                            anchors.leftMargin: app.fs*0.5
                        }
                    }
                    Rectangle{
                        width: app.fs*2
                        height: app.fs*0.25
                        color: app.c2
                        id:rt13
                        opacity:0.0
                        Behavior on opacity{NumberAnimation{duration:500}}
                        Text{
                            text:"<b>Macos</b>"
                            font.pixelSize: app.fs
                            wrapMode: Text.WordWrap
                            color: app.c2
                            horizontalAlignment: Text.AlignHCenter
                            anchors.verticalCenter:  parent.verticalCenter
                            anchors.left: parent.right
                            anchors.leftMargin: app.fs*0.5
                        }
                    }
                    Rectangle{
                        width: app.fs*2
                        height: app.fs*0.25
                        color: app.c2
                        id:rt14
                        opacity:0.0
                        Behavior on opacity{NumberAnimation{duration:500}}
                        Text{
                            text:"<b>Android</b>"
                            font.pixelSize: app.fs
                            wrapMode: Text.WordWrap
                            color: app.c2
                            horizontalAlignment: Text.AlignHCenter
                            anchors.verticalCenter:  parent.verticalCenter
                            anchors.left: parent.right
                            anchors.leftMargin: app.fs*0.5
                        }
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
            x1.opacity=app.lnl(0, 4)==='activo'?1.0:0.0

            x2.opacity=app.lnl(4, 22)==='activo'?1.0:0.0
            arbol1.opacity=app.lnl(15, 22)==='activo'?1.0:0.0
            rt1.opacity=app.lnl(16, 22)==='activo'?1.0:0.0
            rt2.opacity=app.lnl(17, 22)==='activo'?1.0:0.0
            rt3.opacity=app.lnl(18, 22)==='activo'?1.0:0.0
            rt4.opacity=app.lnl(19, 22)==='activo'?1.0:0.0

            x3.opacity=app.lnl(22, 34)==='activo'?1.0:0.0
            if(app.lnl(22, 25)==='activo'){
                bar1.porc=70
                bar2.porc=30
            }else if(app.lnl(25, 31)==='activo'){
                bar1.porc=10
                bar2.porc=90
            }else{
                bar1.porc=50
                bar2.porc=50
            }

            x4.opacity=app.lnl(35, 51)==='activo'?1.0:0.0
            fruto1.width=app.lnl(39, 51)==='activo'?app.fs*2:0.0
            fruto2.width=app.lnl(41, 51)==='activo'?app.fs*2:0.0
            fruto3.width=app.lnl(42, 51)==='activo'?app.fs*2:0.0

            x5.opacity=app.lnl(51, 66)==='activo'?1.0:0.0
            x6.opacity=app.lnl(66, 85)==='activo'?1.0:0.0
            colr2.visible=app.lnl(70, 73)==='activo'
            colr3.visible=app.lnl(73, 85)==='activo'
            colr4.visible=app.lnl(70, 73)==='activo'
            colr5.visible=app.lnl(73, 85)==='activo'

            x7.opacity=app.lnl(85, 97)==='activo'?1.0:0.0
            bot1.width=app.lnl(94.5, 95)==='activo'?app.fs*5:app.fs*3

            x8.opacity=app.lnl(97, 100)==='activo'?1.0:0.0
            x8.porc=app.lnl(97, 101)==='activo'?100:0

            x9.opacity=app.lnl(100, 125)==='activo'?1.0:0.0
            img9.width=app.lnl(104, 125)==='activo'?app.fs*2:app.fs*10

            x10.opacity=app.lnl(125, 150)==='activo'?1.0:0.0
            arbol2.opacity=app.lnl(127, 150)==='activo'?1.0:0.0
            rt11.opacity=app.lnl(128, 150)==='activo'?1.0:0.0
            rt12.opacity=app.lnl(129, 150)==='activo'?1.0:0.0
            rt13.opacity=app.lnl(130, 150)==='activo'?1.0:0.0
            rt14.opacity=app.lnl(131, 150)==='activo'?1.0:0.0

        }
    }
    Component.onCompleted: {
        var at='¿En que consiste este curso?

        Este curso consiste principalmente en Aprender a Programar en QML. Ademàs de  aprender a utilizar este lenguaje, conoceremos què es QML, de donde proviene, porquè se llama asì y para que sirve.

        Al comienzo, explicaremos de manera breve lo màs bàsico y posteriormente aprenderemos màs en detalle sobre sus aspectos tècnicos y còmo utilizarlo.

        Para dominar una herramienta, tecnologìa o lenguaje de programaciòn, no solo es aconsejable, tambièn es de fundamental importancia conocer sus origenes y otros detalles bàsicos que debemos tener en cuenta.

        Este curso, tal como hemos dicho, es interactivo. A lo largo del curso, iremos incluyendo todo tipo de elementos y objetos que te permitan ejercitar en cada secciòn.

        El tipo de contenido que aquì se irà mostrando es variado y mientras lo estemos creando irà cambiando permanentemente. Se irà expandiendo cuando se actualicen o se le agreguen nuevos mòdulos y secciones. Recibiràs en pantalla el aviso de que el còdigo fuente de este curso ha sido mejorado en GitHub.com, de este modo tu podràs actualizarlo cuando quieras.

        Tambièn te brinderemos informaciòn sobre la aplicaciòn madre en donde està anidado este curso. Esta aplicaciòn es de uso libre y gratuito. Al comienzo del curso pondremos especial ènfasis en esta aplicaciòn por que estamos convencidos de que te servirà muchìsimo en tus comienzos, para que en apenas unos pocos dìas y de manera super fàcil ya puedas ver corriendo tu còdigo QML en todos los sistemas operativos, en todos los equipos que quieras.'
        xT.at=at.replace(/\n/g, ' ')

        //Ayudas
        var h1= 'Qt es un Framework, Entorno Multiplataforma de Trabajo para el desarrollo de aplicaciones informàticas. Està orientado a objetos para la creaciòn de aplicaciones  multiplataforma que requieran una GUI (Interfaz Gràfica de Usuario) o tambieǹ para aplicaciones del tipo consola que no lo requieran. Qt es desarrollado por la Comunidad Qt Project conjuntamente con Digia y otras empresas. Qt es distribuido de manera libre bajo la licencia LGPL, LGPL2 y tambièn es distribuido en la modalidad Enterprise. Puedes conocer màs sobre Qt en www.qt.io.'
        var h2= 'Unik es una aplicaciòn desarrollada por @nextsigner con el Entorno de Desarrollo Qt Open Source. El proyecto es distribuido libremente bajo la licencia LGPL y su còdigo fuente està publicado en GitHub.com.  Unik se caracteriza por ser la ùnica aplicaciòn diseñada para descargar proyectos QML directamente desde GitHub.com, asì mismo hacer correr proyectos QML desde carpetas locales o remotas. La documentaciòn està disponible en el sitio oficial de unik llamado www.unikode.org y en el repositorio oficial en GitHub.com cuya url es https://www.github.com/nextsigner/unik.'
        xa.addBa('Màs informaciòn Sobre Qt',h1,'./h/sobre_qt.m4a')
        xa.addBa('Màs informaciòn Unik', h2,'./h/sobre_unik.m4a')
        xa.addBa('Ir al siguiente','','1')
    }
}
