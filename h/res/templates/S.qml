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

    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            x1.opacity=app.p(0, 6)?1.0:0.0
        }
    }

    Component.onCompleted: {
        controles.asec=[0,10,31]
        var at=''
        //Pr
        at+='Elemento Item'
        //Req
        at+='Para utilizar este elemento es necesario importar la librerìa QtQuick. Podemos utilizar la versiòn 1.4, 2.0 hasta 2.5. Para unik recomendamos la versiòn 2.0 '
        //Q
        at+='Es un elemento posicionador y contenedor'
        //PP
        at+='Sus propiedades principales son ejes de posicionamiento x e y, ancho, alto, visible y opacidad'
        //PN
        at+='Las propiedades X e Y se utilizan para definir la posiciòn del elemento. Las propiedes ancho y alto se utilizan para definir el tamaño, las dimensiones del elemento. Tanto las propiedades de posiciòn y de dimensiòn, ambos requieren un valor del tipo nùmero entero.
'
        //PQ
        at+='Este elemento nos permite...'
        //Cu
        at+='Este elemento es muy ùtil para...'
        //Ie
        at+=''
        xT.at=at.replace(/\n/g, ' ')
    }
}
