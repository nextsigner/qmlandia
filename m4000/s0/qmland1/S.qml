import QtQuick 2.0
import  "../../../"
Item {
    id: r
    width: app.an
    height: app.al-app.fs*2

    //1
    Text{
        id:x1
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        text:'<b>Elemento QML</b><br><b>Item{}</b>'
        anchors.centerIn: r
        font.pixelSize: app.fs*2
        color: app.c2
        horizontalAlignment: Text.AlignHCenter
    }

    //2
    Column{
        id:x2
        width: r.width-app.fs
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>Còdigo QML - Elemento Item</b>'
            font.pixelSize: app.fs
            color: app.c2
        }
        Row{
            spacing: app.fs*0.5
            Text{
                text:'import'
                font.pixelSize: app.fs
                color: app.c2
            }
            Text{
                text:'QtQuick'
                font.pixelSize: app.fs
                color: app.c2
                Marco{id:mm1;padding:app.fs*0.1}
            }
            Text{
                id:txtVer
                text:'1.4'
                font.pixelSize: app.fs
                color: app.c2
                Marco{id:mm2;padding:app.fs*0.1}
            }
        }
    }

    //3
    Column{
        id:x3
        width: r.width-app.fs
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>Còdigo QML - Elemento Item</b>'
            font.pixelSize: app.fs
            color: app.c2
        }
        Text{
            text:'import QtQuick 2.0\nItem{}\n'
            font.pixelSize: app.fs
            color: app.c2
        }
    }

    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            x1.opacity=app.p(0, 6)?1.0:0.0

            x2.opacity=app.p(6, 30)?1.0:0.0
            mm1.opacity=app.p(10, 13)?1.0:0.0
            mm2.opacity=app.p(14, 30)?1.0:0.0
            if(app.p(14, 30)){
                txtVer.text='2.0'
            }else if(app.p(16, 30)){
                txtVer.text='2.5'
            }else{
                txtVer.text='1.4'
            }
        }
    }

    Component.onCompleted: {
        controles.asec=[0,10,31]
        var at='
        Elemento QML Item


Este elemento llamado Item es el elemento principal de QML. Es muy importante conocer cuales son sus caracterìsticas y propiedades porque es el elemento base del cuàl provienen o derivan casi todos los elementos en QML.

Como QML es un lenguaje de programaciòn Orientado a Objetos, en este contexto debemos recordar siempre que todos los elementos QML que hayan sido creados utilizando este elemento Item como base principal, esto significa que dichos elementos heredan propiedades y caracterìsticas del elemente Item.

'
        //Pr
        at+='Elemento Item'
        //Req
        at+='Para utilizar este elemento es necesario importar la librerìa QtQuick. Podemos utilizar la versiòn 1.4, 2.0 hasta 2.5. Para unik recomendamos la versiòn 2.0 '
        //Q
        at+='Es un elemento posicionador y contenedor'
        //Car
        at+='Sus principales caracterìsticas son ejes de posicionamiento x e y, ancho, alto, opacidad, clip y visible.'
        //PQ
        at+='Este elemento nos permite crear un area invisible, sin bordes y con fondo transparente. Si su propiedad visible està como verdadero el elemento muestra o visualiza lo que hay en su interior, si està en falso no se visualiza nada.'
        //Co
        at+='Para utilizar el elemento Item realizamos la declaraciòn del elemento escribiendo en el còdigo QML la palabra Item seguido de las 2 llaves de apertura y cierre.'
        //Cu
        at+='Este elemento es muy ùtil para utilizar còmo contenedor de uno o varios elementos internos a los cuales los queremos controlar de manera conjunta.'
        //Ie
        at+='Este es el elemento principal de QML de cuàl dependen la mayorìa de los elementos los cuales estàn creados a partir de este elemento Item como base. Hay que recordad que la mayorìa de los elementos QML heredan propiedades y caracterìsticas del elemento Item porque derivan o fueron construidos con èl. Conocer lo màximo posible del elemento Item, nos facilitarà muchìsimo la comprensiòn casi la totalidad de los elementos de QML. Este elemento se llama Item porque es la palabra que se utiliza para hacer referencia a un artìculo, pàrrafo, cosa, objeto o  parte de un texto o escrito por ejemplo en la literatura.'
        xT.at=at.replace(/\n/g, ' ')
    }
}
