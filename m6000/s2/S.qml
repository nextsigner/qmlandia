import QtQuick 2.0
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
    Column{
        anchors.centerIn: parent
        Text {
            id: txt1
            text: "<b>Còmo utilizar la Declaraciòn IMPORT</b><br>"
            font.pixelSize: app.fs
            color: app.c2
            textFormat: Text.RichText
        }
        Text {
            id: txt2
            font.pixelSize: app.fs
            color: app.c4
            textFormat: Text.RichText
            Marco{
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
    Image {
        id: img1
        source: "../../h/app_crash.png"
        width: r.width*0.3
        anchors.right: r.right
        anchors.verticalCenter: r.verticalCenter
        fillMode: Image.PreserveAspectFit
        visible: false
    }
    ColorOverlay {
        anchors.fill: img1
        source: img1
        color: app.c2
        visible:app.mp.position>124*1000
    }
    Xa{id:xa}
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            if(app.lnl(17, 30)==='activo'){
                txt2.text= '<b style="color:red;">import</b> QtQuick 2.0'
            }else  if(app.lnl(30, 37)==='activo'){
                txt2.text= '<span style="color:#14DED7;background-color:black;">//Ejempos de Mòdulos QML</span><br>import QtQuick 2.0<br>import QtWebView 1.1<br>import QtQuick.Controls 2.0<br>import QtQuick.Windos 2.2'
            }else  if(app.lnl(37, 44)==='activo'){
                txt2.text= '<span style="color:#14DED7;background-color:black;">//Ejempos Objeto de Tipo Registrado</span><br>import MiPluginsCpp 2.0<br><span style="color:#14DED7;background-color:black;">//Ejempos de Recurso JavaScript</span><br>import "carpetaJS/funciones.js" as JS'
            }else  if(app.lnl(73, 76)==='activo'){
                txt2.text= '<span style="color:red;">import</span>'
            }else  if(app.lnl(76, 79)==='activo'){
                txt2.text= 'import<span style="color:red;">[espacio]</span>'
            }else  if(app.lnl(79, 81)==='activo'){
                txt2.text= 'import[espacio]<span style="color:red;">QtQuick</span>'
            }else  if(app.lnl(81, 83)==='activo'){
                txt2.text= 'import[espacio]QtQuick<span style="color:red;">[espacio]</span>'
            }else  if(app.lnl(83, 87.5)==='activo'){
                txt2.text= 'import[espacio]QtQuick[espacio]<span style="color:red;">2.0</span>'
            }else  if(app.lnl(93, 95)==='activo'){
                txt2.text= '<span style="color:red;">import</span>'
            }else  if(app.lnl(95, 97)==='activo'){
                txt2.text= 'import<span style="color:red;"> </span>'
            }else  if(app.lnl(97, 100)==='activo'){
                txt2.text= 'import <span style="color:red;">QtQuick</span>'
            }else  if(app.lnl(100, 104)==='activo'){
                txt2.text= 'import QtQuick<span style="color:red;">  </span>'
            }else  if(app.lnl(104, 109)==='activo'){
                txt2.text= 'import QtQuick <span style="color:red;">2.0</span>'
            }else  if(app.lnl(109, 137)==='activo'){
                img1.source="../../h/app_crash.png"
            }else  if(app.lnl(137, 150)==='activo'){
                txt2.text= 'import "carpetaJS/funciones.js" as JS'
                img1.source="../../h/js.png"
                //source: "../../h/js.png"
            }else{
                txt2.text= 'import QtQuick 2.0'
            }
        }
    }


    Component.onCompleted: {
        var at='Còmo utilizar la Declaraciòn Import'
        at+='Para realizar de manera correcta una declaraciòn de importaciòn, ademàs de escribir como primer palabra, al comienzo de la lìnea, la palabra reservada import, debemos seguir las reglas de Sintàxis que este procedimiento requiere.

Podemos realizar 3 tipos de importaciones. Lo màs comùn es importar un mòdulo QML. Ademàs podemos importar Tipos de Objetos Registrados y recursos JavaScript.

Lo primero que veremos, es un ejemplo simple sobre còmo importar un mòdulo QML. Supongamos que queremos importar el mòdulo QtQuick versiòn 2.0, esto se harìa asì.

    Como QtQuick es un mòdulo QML, la sintàxis es simple y consiste en lo siguiente. Escribimos import, luego un espacio, luego el nombre del mòdulo (en este caso QtQuick), luego otro espacio y por ùltimo el nùmero de versiòn del mòdulo.

Reiteramos, primero escribimos import, espacio, luego nombre de modulo, espacio y por ùltimo nùmero de versiòndel mòdulo importado.

Podemos importar  la cantidad de recursos que sean necesarios. En el caso de que estemos importando algo que no exista o no se encuentre disponible, nuestro còdigo QML fallarà y posiblemente falle toda la aplicaciòn dependiendo en que contexto se estè ejecutando el còdigo QML.

Para importar un archivo JavaScript debemos utilizar una sintàxis diferente. Para saber còmo hacerlo, es necesario ir a la siguiente secciòn.
'
        var h1=''
        xa.addBa('...',h1,'./h/h1.m4a')
        xa.addBa('Ir al siguiente','','1')
    }
}
