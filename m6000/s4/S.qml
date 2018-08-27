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
        width: r.width-app.fs
        anchors.centerIn: r
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
    Xa{id:xa}
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            if(app.lnl(50, 67)==='activo'){
                txt2.text= 'import <b style="color:red;">"./ArchivosJS/MisFunciones.js"</b> as JS'
            }else if(app.lnl(67, 70)==='activo'){
                txt2.text= '<b style="color:red;">import</b>'
            }else if(app.lnl(70, 72)==='activo'){
                txt2.text= 'import<b style="color:red;">[espacio]</b>'
            }else if(app.lnl(72, 86)==='activo'){
                txt2.text= 'import[espacio]<b style="color:red;">"./ArchivosJS/MisFunciones.js"</b>'
            }else if(app.lnl(86, 88)==='activo'){
                txt2.text= 'import[espacio]"./ArchivosJS/MisFunciones.js"<b style="color:red;">[espacio]</b>'
            }else if(app.lnl(88, 94)==='activo'){
                txt2.text= 'import[espacio]"./ArchivosJS/MisFunciones.js"[espacio]<b style="color:red;">as</b>'
            }else if(app.lnl(94, 96)==='activo'){
                txt2.text= 'import[espacio]"./ArchivosJS/MisFunciones.js"[espacio]as<b style="color:red;">[espacio]</b>'
            }else if(app.lnl(96, 109)==='activo'){
                txt2.text= 'import[espacio]"./ArchivosJS/MisFunciones.js"[espacio]as[espacio]<b style="color:red;">JS</b>'
            }else if(app.lnl(109, 113)==='activo'){
                txt2.text= '<b style="color:red;">import</b>'
            }else if(app.lnl(113, 116)==='activo'){
                txt2.text= 'import '
            }else if(app.lnl(116, 119)==='activo'){
                txt2.text= 'import <b style="color:red;">"./ArchivosJS/MisFunciones.js"</b>'
            }else if(app.lnl(119, 121)==='activo'){
                txt2.text= 'import "./ArchivosJS/MisFunciones.js" '
            }else if(app.lnl(121, 126)==='activo'){
                txt2.text= 'import "./ArchivosJS/MisFunciones.js" <b style="color:red;">as</b>'
            }else if(app.lnl(126, 129)==='activo'){
                txt2.text= 'import "./ArchivosJS/MisFunciones.js" as '
            }else if(app.lnl(129, 132)==='activo'){
                txt2.text= 'import "./ArchivosJS/MisFunciones.js" as <b style="color:red;">JS</b>'
            }else if(app.lnl(140, 147)==='activo'){
                txt2.text= 'import "./ArchivosJS/MisFunciones.js" <b style="color:red;">as</b> JS'
            }else if(app.lnl(147, 162)==='activo'){
                txt2.text= 'import "./ArchivosJS/MisFunciones.js" <b style="color:red;">COMO</b> JS'
            }else if(app.lnl(162, 174)==='activo'){
                txt2.text= 'import "./ArchivosJS/MisFunciones.js" <b style="color:red;">COMO JS</b>'
            }else if(app.lnl(174, 176)==='activo'){
                txt2.text= 'import "./ArchivosJS/MisFunciones.js" <b style="color:red;">COMO MiJS</b>'
            }else if(app.lnl(176, 178)==='activo'){
                txt2.text= 'import "./ArchivosJS/MisFunciones.js" <b style="color:red;">COMO funciones</b>'
            }else if(app.lnl(178, 180)==='activo'){
                txt2.text= 'import "./ArchivosJS/MisFunciones.js" <b style="color:red;">COMO X</b>'
            }else if(app.lnl(180, 185)==='activo'){
                txt2.text= 'import "./ArchivosJS/MisFunciones.js" <b style="color:red;">COMO CodigoJS</b>'
            }else if(app.lnl(185, 192)==='activo'){
                txt2.text= 'import <b style="color:red;">\'</b>./ArchivosJS/MisFunciones.js<b style="color:red;">\'</b> as CodigoJS'
            }else if(app.lnl(192, 194)==='activo'){
                txt2.text= 'import <b style="color:red;">"</b>./ArchivosJS/MisFunciones.js<b style="color:red;">"</b> as CodigoJS'
            }else{
                txt2.text= 'import "./ArchivosJS/MisFunciones.js" as JS'
            }
        }
    }


    Component.onCompleted: {
        var at='Còmo importar un Archivo JavaScript'
        at+='
En esta secciòn del curso explicaremos còmo importar un archivo JavaScript y en pròximas secciones vamos a explicar còmo utilizar funciones JavaScript de archivos importados o incluso còmo crear funciones JavaScript directamente en nuestro còdigo QML.

Ahora explicaremos la manera de importar un archivo JavaScript, para poder utilizar sus funciones, variables, cualquier tipo de objeto o recurso JavaScript, lo que debemos hacer es tan simple como lo que hemos hecho para importar un mòdulo QtQuick, la sintàxis es parecida pero tiene una mìnima diferencia.

Supongamos que tenemos un archivo del tipo JavaScript llamado MisFunciones.js en la carpeta ArchivosJS, en este caso la sintàxis de la declaraciòn de importaciòn debe ser de la siguiente manera.

Escribimos import, luego un espacio, luego la ruta completa, absoluta o relativa del archivo JavaScript a importar (en este caso ./ArchivosJS/MisFunciones.js), luego otro espacio, luego "as" en minùscula, luego otro espacio y por ùltimo el nombre o identificador con el cuàl queremos hacer referencia a nuestro archivo desde el còdigo QML.

Reiteramos, primero escribimos import, luego un espacio, luego la ruta del archivo, luego otro espacio, luego "as" en minùscula, luego otro espacio y por ùltimo el identificador.

Como puedes ver, en esta oportunidad hemos agregado a la declaraciòn de importaciòn el tèrmino "as", esta palabra està escrita en ingles, su significado en español es "como". Entonces aquì estamos importando el archivo JavaScript MisFunciones.js al cuàl de ahora en màs lo llamaremos como JS. Lo podemos llamar del modo que querramos, en vez de JS podemos poner por ejemplo MiJS, funciones, X, CodigosJS o el tèrmino que se nos ocurra.

Por ùltimo, ten en cuenta que la ruta del archivo JavaScript debe estar escrita entre comillas simples o dobles
'
        var h1=''
        xa.addBa('...',h1,'./h/h1.m4a')
        xa.addBa('Ir al siguiente','','1')
    }
}
