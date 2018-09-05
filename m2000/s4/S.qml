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
    Xa{id:xa}
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            x1.opacity=app.lnl(0, 4)==='activo'?1.0:0.0
            x2.opacity=app.lnl(4, 20)==='activo'?1.0:0.0
            txt1.opacity=app.lnl(7, 8)==='activo'?1.0:0.0
            txt2.opacity=app.lnl(8, 9)==='activo'?1.0:0.0
            txt3.opacity=app.lnl(9, 20)==='activo'?1.0:0.0

            if(app.lnl(10, 15)==='activo'){
                xT.ex=app.fs*5
            }
        }
    }



    Component.onCompleted: {
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
        var h1= 'Qt es un Framework, Entorno Multiplataforma de Trabajo para el desarrollo de aplicaciones informàticas. Està orientado a objetos para la creaciòn de aplicaciones  multiplataforma que requieran una GUI (Interfaz Gràfica de Usuario) o tambieǹ para aplicaciones del tipo consola que no lo requieran. Qt es desarrollado por la Comunidad Qt Project conjuntamente con Digia y otras empresas. Qt es distribuido de manera libre bajo la licencia LGPL, LGPL2 y tambièn es distribuido en la modalidad Enterprise. Puedes conocer màs sobre Qt en www.qt.io.'
        var h2= 'Unik es una aplicaciòn desarrollada por @nextsigner con el Entorno de Desarrollo Qt Open Source. El proyecto es distribuido libremente bajo la licencia LGPL y su còdigo fuente està publicado en GitHub.com.  Unik se caracteriza por ser la ùnica aplicaciòn diseñada para descargar proyectos QML directamente desde GitHub.com, asì mismo hacer correr proyectos QML desde carpetas locales o remotas. La documentaciòn està disponible en el sitio oficial de unik llamado www.unikode.org y en el repositorio oficial en GitHub.com cuya url es https://www.github.com/nextsigner/unik.'
        xa.addBa('Màs informaciòn Sobre Qt',h1,'./h/sobre_qt.m4a')
        xa.addBa('Màs informaciòn Unik', h2,'./h/sobre_unik.m4a')
        xa.addBa('Ir al siguiente','','1')
    }
}
