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
        spacing: app.fs*0.2
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
        Text{
            id:txt1
            text:'Item{\n       x:10\n       y:10\n       width:100\n       height:200\n}'
            font.pixelSize: app.fs
            color: app.c2
            Behavior on opacity{NumberAnimation{duration:1500}}
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
            text:'<b>Posicionador</b><br><b>Contenedor</b>'
            font.pixelSize: app.fs
            color: app.c2
        }
        Row{
            spacing: app.fs*0.5
            Item{
                width: app.fs*8
                height: width
                Marco{}
            }
            Item{
                width: app.fs*8
                height: width
                Marco{}
            }
        }
    }

    //4
    Column{
        id:x4
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

    //Aviso
    Text{
        id:xAviso
        text:'<b>Secciòn en Construcciòn</b><br>Se modificarà audio y animaciones...'
        anchors.horizontalCenter: r.horizontalCenter
        font.pixelSize: app.fs*2
        color: 'red'
        horizontalAlignment: Text.AlignHCenter
    }
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            x1.opacity=app.p(0, 6)?1.0:0.0

            x2.opacity=app.p(6, 47)?1.0:0.0
            txt1.opacity=app.p(6, 9)?1.0:0.5
            mm1.opacity=app.p(10, 13)?1.0:0.0
            mm2.opacity=app.p(14, 47)?1.0:0.0
            if(app.p(21, 23)){
                txtVer.text='1.4'
            }else if(app.p(23, 25)){
                txtVer.text='2.0'
            }else if(app.p(25, 28)){
                txtVer.text='2.5'
            }else if(app.p(34, 38)){
                txtVer.text='2.9'
            }else if(app.p(38, 42)){
                txtVer.text='2.11'
            }else{
                txtVer.text='2.0'
            }

            x3.opacity=app.p(47, 500)?1.0:0.0
        }
    }
    function e(n){
        var sp=''
        for(var i=0;i<n;i++){
            sp+='   '
        }
        return sp
    }
    Component.onCompleted: {
        controles.asec=[0, 6,47]
        var at=''
        at+=e(10)
        //Pr
        at+='Elemento Item'

        at+=e(20)
        at+='\n' //Req
        at+='Para utilizar este elemento es necesario importar la librerìa QtQuick. Podemos utilizar la versiones compatibles con unik y este curso tales como la versiòn 1.4, 2.0 hasta 2.5. Para unik recomendamos la versiòn 2.0. Si quieres puedes experimentar e importar versiones posteriores a las mencionadas pero no te podemos garantizar su funcionalidad. '

       at+=e(2)
        at+='\n' //Q
        at+='Item Es un elemento posicionador y contenedor'

       at+=e(2)
        at+='\n' //PP
        at+='Sus propiedades principales son ejes de posicionamiento x e y, ancho, alto, visible y opacidad'

        at+=e(20)
        at+='\n'//PN
        at+='Las propiedades X e Y se utilizan para definir la posiciòn del elemento. Las propiedes ancho y alto se utilizan para definir el tamaño, es decir las dimensiones del elemento. Tanto las propiedades de posiciòn y de dimensiòn, ambos requieren un valor del tipo nùmero entero.                                      La propiedad VISIBLE se utiliza para definir si el elemento es visible o no. Èsta propiedad requiere un valor del tipo booleano, TRUE o FALSE. '

        at+=e(20)
        at+='Si la propiedad es definida como verdadero, el elemento serà visible en tanto y en cuanto contenga elementos internos visibles. Si no contiene elementos serà visible pero no veremos nada en pantalla. Si èsta propiedad es definida con el valor false, el elemento no serà visible, tampoco sus elementos internos. Por defecto la propiedad VISIBLE es verdadero.                                                                           La propiedad de opacidad se utiliza para definir el nivel de transparencia del elemento. Es        ta propiedad requiere de un valor del tipo nùmero real cuyo valor màximo es 1.0 y el valor mìnimo es 0.0. Por ejemplo si el valor es 1.0 el elemento se visualizarà con plena opacidad y cero transparencia. Si el valor es 0.5 el elemento se visualizarà semi transparente. Si el valor es 0.0, el elemento tendrà un nivel de transparencia plena, esto provocarà que el elemento sea invisible en pantalla independientemente de cuàl sea su propiedad VISIBLE.'

        at+=e(20)
        at+='\n'//PQ
        at+='Este elemento nos permite crear un area invisible, sin bordes y con fondo transparente. Dentro de esta area podemos incluir otros elementos visibles o no visibles. Item, salvo raras excepciones, contendrà otros elementos en su interios. En la pràctica tiene poco sentido que este elemento Item no tenga elementos en su interior.

Al tener elementos en su interior, este elemento Item contenedor se lo denomina Objeto o Elemento Madre. Los Items o elementos internos se denominan hijos. Dependiendo del contexto, para referirnos a el elemento Madre podemos hacerlo mediante el su propiedad id o mediante el tèrmino PARENT. Para referirnos al conjunto de elementos hijos el tèrmino a utilizar es CHILDREN.

Los cambios en las propiedades del elemento Item contenedor afectaràn a sus elementos hijos.
'
        at+='\n'//Cu
        at+='Este elemento es muy ùtil para utilizar còmo contenedor de uno o varios elementos internos a los cuales los queremos controlar de manera conjunta.'

        at+='\n'//Ie
        at+='Este es el elemento principal de QML de cuàl dependen la mayorìa de los elementos los cuales estàn creados a partir de este elemento Item como base. Hay que recordar que la mayorìa de los elementos QML heredan propiedades y caracterìsticas del elemento Item porque derivan o fueron construidos con èl.

Conocer lo màximo posible este elemento Item, nos facilitarà muchìsimo la comprensiòn de casi la totalidad de los elementos de QML. Este elemento se llama Item porque es la palabra que se utiliza para hacer referencia a un artìculo, pàrrafo, apartado, secciòn, cosa, objeto o  parte de un texto o escrito por ejemplo en la literatura.'

    xT.at=at.replace(/\n/g, ' ')
    }
}
