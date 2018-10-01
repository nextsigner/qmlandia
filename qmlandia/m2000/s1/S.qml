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
            width: r.width*0.4-app.fs
            font.pixelSize: app.fs*0.65
            color: app.c2
            textFormat: Text.RichText
            wrapMode: Text.WordWrap
        }
    }
    property var ai: ["qml1.png", "img1.png", "img2.png"]
    Rectangle{
        anchors.fill: r
        color: app.c3
        visible: app.mp.position>45000
        Row{
            anchors.centerIn: parent
            spacing: app.fs*0.5
            Rectangle{
                id:xCode
                width: r.width*0.5-app.fs
                height: r.height-app.fs
                border.width: 2
                border.color: app.c2
                color: app.c3
                Column{
                    anchors.centerIn: parent
                    spacing: app.fs*0.5
                    Text {
                        id: name
                        text: '<b>Tu primer Còdigo Qml!</b>'
                        font.pixelSize: app.fs
                        color:app.c2
                        height: app.fs*2
                    }
                    TextEdit{
                        id:qml
                        width: xCode.width-app.fs*2
                        height: xCode.height-app.fs*10
                        font.pixelSize: app.fs
                        color: app.c2
                        Marco{}
                    }
                    Item{height: app.fs*0.5}
                    Rectangle{
                        width: tb.contentWidth*1.05
                        height: tb.contentHeight*1.05
                        border.color: app.c2
                        radius: app.fs*0.5
                        anchors.right: parent.right
                        Text{
                            id:tb
                            font.pixelSize: app.fs
                            text:'Ejecutar'
                            anchors.centerIn: parent
                        }
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                for(var i=0;i<area.children.length;i++){
                                    area.children[i].destroy(10)
                                }
                                var c='import QtQuick 2.0\n'
                                c+=qml.text

                                var obj = Qt.createQmlObject(c, area, 'tuqml')
                            }
                        }
                    }
                }
            }
            Rectangle{
                id:xArea
                width: r.width*0.5-app.fs
                height: r.height-app.fs
                border.width: 2
                border.color: app.c2
                color:app.c3
                Rectangle{
                    id:area
                    width: parent.width-4
                    height: parent.height-4
                    color:app.c3
                    anchors.centerIn: parent
                }
                Text{
                    id:msg
                    width: parent.width-app.fs
                    font.pixelSize: app.fs*0.5
                    color: app.c2
                    text: 'Aquì se mostrarà\ntu còdigo ejecutado'
                    wrapMode: Text.WordWrap
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

        }
    }
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
            c2 ='<h2 class="'+app.lnl(0, 4)+'">Este es Un Curso Interactivo</h2>'
            c2+='<p class="'+app.lnl(4, 18)+'">'+p0+'</p>'
            c2+='<p class="'+app.lnl(18.5, 28)+'">'+p1+'</p>'
            c2+='<p class="'+app.lnl(28.5, 45)+'">'+p2+'</p>'
            txt1.text=c1+c2+c3

            if(app.lnl(4, 18)==='activo'){
                img1.visible=true
                img1.source="./"+ai[0]
                img1.width=r.width*0.6
                te1.text='<b>Edita y Prueba el Còdigo</b><br>\uf063'
                te1.font.pixelSize=app.fs
            }else  if(app.lnl(18, 28)==='activo'){
                img1.visible=false
                img2.visible=false
                te1.text='<b>Saber Còmo Hacerlo</b><br><br>\uf063<br><br><b>Ver Còdigo de Ejemplo</b><br><br>\uf063<br><br><b>Modificarlo</b><br><br>\uf063<br><br><b>Ejecutarlo</b><br>'
                te1.font.pixelSize=app.fs
                te1.horizontalAlignment=Text.AlignHCenter
                //te2.text='\uf063'
            }else  if(app.lnl(28, 36)==='activo'){
                img1.visible=true
                img1.source="./"+ai[1]
                img2.width=r.width*0.25
                te1.text='<b>Ten Paciencia!</b>'
                te1.font.pixelSize=app.fs
            }else  if(app.lnl(36, 45)==='activo'){
                img1.visible=true
                img1.source="./"+ai[2]
                img2.width=r.width*0.25
                te1.text='<b>Ten Paciencia!</b>'
                te1.font.pixelSize=app.fs
            }else{
                te1.text=''
                te2.text=''
                te3.text=''
                img1.visible=false
                img2.visible=false
            }

        }
    }

    property string c1:''
    property string c2:''
    property string c3:''
    property string p0:''
    property string p1:''
    property string p2:''
    property string p3:''
    property string p4:''
    property string p5:''

    Component.onCompleted: {
        //Partes de la Estructura Html
        c1='<html><head><style>\n.activo{\nfont-size:'+parseInt(app.fs*0.65)+'px;\nbackground-color:'+app.c2+';\ncolor:'+app.c3+';\n}\n.inactivo{\nbackground-color:'+app.c3+';\ncolor:'+app.c2+';\n}</style></head><body>'
        c3='</body></html>'

        //Parrafos
        p0='Este es un Curso Interactivo. Este contenido, cuando es ejecutado en Unik te permite ademàs de controlarlo, tambièn puedes editar el còdigo de los ejercicios para poder experimentar y probar lo que consideres necesario.'
        p1=' Este tipo de contenido, està pensado para que puedas progresar de manera màs àgil y dinàmica en cada etapa del aprendizaje.'
        p2='Talves al comienzo tu pienses que todo este curso tenga mucho contenido denso, aburrido o algo tedioso. Cuando compruebes lo que te podràs ejercitar y crear de ahora en màs, cambiaràs de opiniòn.'


        //Ayudas
        var h1= 'No. No es necesario saber Inglès. Es necesario aprender el significado de 20, 40 o 60 palàbras. Mientras màs palabras sepas, màs sencillo te resultarà aprender a programar en QML o en cualquier otro lenguaje de programaciòn. Por ejemplo, aprendiendo apenas 20 palabras, para saber como se dice ancho, alto, espacio, columna, fila, funciòn y otras, con esto ya puedes aprender y avanzar muchìsimo. Asi que Anìmate.'
        var code='import QtQuick 2.0\n'
        code+='Item{\n'
        code+='     anchors.fill:parent\n'
        code+='     Component.onCompleted:{\n'
        code+='         app.verAyuda=false;\n'
        code+='         console.log("Qmlandia: Còdigo Qml Ejecutado '+c1+' --- '+c2+'")\n'
        code+='     }\n'
        code+='}\n'

        var h2= ''
        xa.addBa('Se requiere saber Ingles?',h1,'./h/sobre_ingles.m4a')
        xa.addBa('Editar Còdigo','',code)
        xa.addBa('Ir al siguiente','','1')


        var q='Rectangle{\n'
        q+='     width:300\n'
        q+='     height:300\n'
        q+='     color:"red"\n'
        q+='}\n'
        qml.text=q
    }
}
