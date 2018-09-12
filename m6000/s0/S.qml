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

    //1
    Item{
        id:x1
        anchors.centerIn: r
        width: app.fs*20
        height: app.fs*8
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>¿Què es QML?</b>'
            anchors.centerIn: parent
            font.pixelSize: app.fs*3
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
    }

    //2
    Column{
        id:x2
        anchors.centerIn: r
        width: app.fs*20
        height: app.fs*8
        spacing: app.fs
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>Es parte de Qt</b>'
            font.pixelSize: app.fs*3
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
        Image{
            width: app.fs*10
            source:"../../h/qt-icon.png"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    //3
    Column{
        id:x3
        anchors.centerIn: r
        width: app.fs*20
        height: app.fs*8
        spacing: app.fs*0.25
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Row{
            Text{
                id:t1
                text:'<b>Q</b>'
                font.pixelSize: app.fs*3
                color: app.c2
                font.family: 'FontAwesome'
                horizontalAlignment: Text.AlignHCenter
                textFormat: Text.RichText
            }
            Text{
                id:t2
                text:'<b>t</b>'
                font.pixelSize: app.fs*3
                color: app.c2
                font.family: 'FontAwesome'
                horizontalAlignment: Text.AlignHCenter
                textFormat: Text.RichText
            }
        }
        Row{
            Text{
                id:t3
                text:'<b>M</b>'
                font.pixelSize: app.fs*3
                color: app.c2
                font.family: 'FontAwesome'
                horizontalAlignment: Text.AlignHCenter
                textFormat: Text.RichText
            }
            Text{
                id:t4
                text:'<b>eta</b>'
                font.pixelSize: app.fs*3
                color: app.c2
                font.family: 'FontAwesome'
                horizontalAlignment: Text.AlignHCenter
                textFormat: Text.RichText
            }
        }
        Row{
            Text{
                id:t5
                text:'<b>L</b>'
                font.pixelSize: app.fs*3
                color: app.c2
                font.family: 'FontAwesome'
                horizontalAlignment: Text.AlignHCenter
                textFormat: Text.RichText
            }
            Text{
                id:t6
                text:'<b>anjuage</b>'
                font.pixelSize: app.fs*3
                color: app.c2
                font.family: 'FontAwesome'
                horizontalAlignment: Text.AlignHCenter
                textFormat: Text.RichText
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
            text:'<b>2 Entornos de Desarrollo de Qt</b>'
            font.pixelSize: app.fs
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: app.fs*3
            Text{
                text:'<b>QtWidgets</b>'
                font.pixelSize: app.fs*2
                color: app.c2
                Marco{
                    id:marco1
                    bc:'red'
                    bw:app.fs*0.4
                    Behavior on opacity{NumberAnimation{duration:500}}
                }
            }
            Text{
                text:'<b>QtQuick</b>'
                font.pixelSize: app.fs*2
                color: app.c2
                Marco{
                    id:marco2
                    bc:'red'
                    bw:app.fs*0.4
                    Behavior on opacity{NumberAnimation{duration:500}}
                }
            }
        }

    }


    //5
    Column{
        id:x5
        anchors.centerIn: r
        spacing: app.fs
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Image{
            width: app.fs*10
            source:"../../h/qml.png"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text{
            text:'<b>Lenguaje Principal de QtQuick</b>'
            font.pixelSize: app.fs
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }

    }

    //6
    Column{
        id:x6
        anchors.centerIn: r
        spacing: app.fs
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>Qt 5.3 o superior</b>'
            font.pixelSize: app.fs
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image{
            width: app.fs*10
            source:"../../h/qt-icon.png"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text{
            text:'Puedes programar en QML<br>para QtWidgets y QtQuick<br>con el componente <b>QQuickWidget</b>'
            font.pixelSize: app.fs
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
        }

    }


    //7
    Column{
        id:x7
        anchors.centerIn: r
        spacing: app.fs
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            id:tx71
            font.pixelSize: app.fs*2
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
            textFormat: Text.RichText
        }
        Text{
            id:tx72
            text:'Quick significa <b>Ràpido</b>'
            font.pixelSize: app.fs
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            Behavior on opacity{NumberAnimation{duration:1000}}
        }
        Text{
            id:tx73
            text:'QtQuick significa <b>Qt Ràpido</b>'
            font.pixelSize: app.fs
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            Behavior on opacity{NumberAnimation{duration:1000}}
        }
    }

    //8
    Column{
        id:x8
        anchors.centerIn: r
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>PRODUCTIVIDAD</b>'
            font.pixelSize: app.fs
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text{
            text:'GUI (Interfaz Gràfica de Usuario)'
            font.pixelSize: app.fs
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Image{
            id:imgApp1
            width: app.fs*10
            source:"../../h/touch1.png"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
            visible:false
        }
        ColorOverlay{
            source:imgApp1
            width: imgApp1.width
            height:imgApp1.height
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text{
            text:'Usabilidad++ ExperienciadeUsuario++<br>Modernidad++ Funcionalidad++'
            font.pixelSize: app.fs
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
        }

    }


    //9
    Column{
        id:x9
        anchors.centerIn: r
        opacity: 0.0
        spacing:app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>Sistemas Embebidos</b>'
            font.pixelSize: app.fs
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image{
            id:img22
            width: app.fs*8
            source:"embedded_1.jpg"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text{
            text:'Sistemas Empotrados o Incrustados'
            font.pixelSize: app.fs
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

    //10
    Column{
        id:x10
        anchors.centerIn: r
        opacity: 0.0
        spacing:app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>QtQuick</b>'
            font.pixelSize: app.fs*2
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text{
            text:'<b>+</b>'
            font.pixelSize: app.fs*2
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text{
            text:'<b>QML</b>'
            font.pixelSize: app.fs*2
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }


    //11
    Item{
        id:x11
        anchors.centerIn: r
        opacity: 0.0
        width: app.fs*16
        height:  app.fs*10
        Behavior on opacity{NumberAnimation{duration:500}}
        Image{
            id:imgApp33
            width: app.fs*16
            source:"mundo.png"
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            visible:false
        }
        ColorOverlay{
            source:imgApp33
            width: imgApp33.width
            height:imgApp33.height
            anchors.centerIn: parent
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image{
            id:imgApp44
            width: app.fs*16
            source:"europa.png"
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            visible:false
        }
        ColorOverlay{
            id:imgApp44O
            source:imgApp44
            width: imgApp44.width
            height:imgApp44.height
            anchors.centerIn: parent
            color: 'red'
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image{
            id:imgApp55
            width: app.fs*16
            source:"rusia.png"
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            visible:false
        }
        ColorOverlay{
            id:imgApp55O
            source:imgApp55
            width: imgApp55.width
            height:imgApp55.height
            anchors.centerIn: parent
            color: 'red'
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image{
            id:imgApp66
            width: app.fs*16
            source:"china.png"
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            visible:false
        }
        ColorOverlay{
            id:imgApp66O
            source:imgApp66
            width: imgApp66.width
            height:imgApp66.height
            anchors.centerIn: parent
            color: 'red'
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image{
            id:imgApp77
            width: app.fs*16
            source:"india.png"
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            visible:false
        }
        ColorOverlay{
            id:imgApp77O
            source:imgApp77
            width: imgApp77.width
            height:imgApp77.height
            anchors.centerIn: parent
            color: 'red'
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image{
            id:imgApp88
            width: app.fs*16
            source:"japon.png"
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            visible:false
        }
        ColorOverlay{
            id:imgApp88O
            source:imgApp88
            width: imgApp88.width
            height:imgApp88.height
            anchors.centerIn: parent
            color: 'red'
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }


    //12
    Column{
        id:x12
        anchors.centerIn: r
        opacity: 0.0
        spacing:app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>Mercedes Benz EQ</b>'
            font.pixelSize: app.fs*2
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image{
            id:img99
            width: app.fs*16
            source:"mb_eq_1.jpg"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    //13
    Column{
        id:x13
        anchors.centerIn: r
        opacity: 0.0
        spacing:app.fs*0.5
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>Mercedes Benz EQ</b>'
            font.pixelSize: app.fs*2
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image{
            id:img100
            width: app.fs*14
            source:"mb_eq_2.jpg"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text{
            text:'<b>Autos Elèctricos Inteligentes</b>'
            font.pixelSize: app.fs
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }


    //14
    Column{
        id:x14
        anchors.centerIn: r
        opacity: 0.0
        spacing:app.fs*0.5
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>Pannasonic Avionics</b>'
            font.pixelSize: app.fs*2
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image{
            id:img101
            width: app.fs*14
            source:"pa_4.jpg"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image{
            id:img102
            width: app.fs*14
            source:"pa_2.jpg"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image{
            id:img103
            width: app.fs*14
            source:"pa_3.jpg"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image{
            id:img104
            width: app.fs*14
            source:"pa_2.jpg"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    //15
    Text{
        id:x15
        Behavior on opacity{NumberAnimation{duration:500}}
        text:'<b>"Menos Còdigo</b><br><b>y Màs depliegue por</b><br><b>por todas partes"</b>'
        font.pixelSize: app.fs*2
        color: app.c2
        horizontalAlignment: Text.AlignHCenter
        anchors.centerIn: r
    }

    //16
    Text{
        id:x16
        Behavior on opacity{NumberAnimation{duration:500}}
        text:'<b>"El futuro</b><br><b>està escrito</b><br><b>con Qt"</b>'
        font.pixelSize: app.fs*2
        color: app.c2
        horizontalAlignment: Text.AlignHCenter
        anchors.centerIn: r
    }


    Xa{id:xa}
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            x1.opacity=app.lnl(0, 6)==='activo'?1.0:0.0
            x2.opacity=app.lnl(6, 14)==='activo'?1.0:0.0


            x3.opacity=app.lnl(14, 20)==='activo'?1.0:0.0
            t2.opacity=app.lnl(16, 20)==='activo'?1.0:0.0
            t4.opacity=app.lnl(17, 20)==='activo'?1.0:0.0
            t6.opacity=app.lnl(18, 20)==='activo'?1.0:0.0
            t1.color=app.lnl(16, 20)==='activo'?'red':app.c2
            t3.color=app.lnl(17, 20)==='activo'?'red':app.c2
            t5.color=app.lnl(18, 20)==='activo'?'red':app.c2

            x4.opacity=app.lnl(20, 34)==='activo'?1.0:0.0
            marco1.opacity=app.lnl(29, 34)==='activo'?1.0:0.0
            marco2.opacity=app.lnl(32, 34)==='activo'?1.0:0.0

            x5.opacity=app.lnl(34, 44)==='activo'?1.0:0.0
            x6.opacity=app.lnl(44, 64)==='activo'?1.0:0.0

            x7.opacity=app.lnl(64, 78)==='activo'?1.0:0.0
            tx71.text=app.lnl(75, 78)==='activo'?'<b>Qt</b><b style="color:red;">Quick</b>':'<b>QtQuick</b>'
            tx72.opacity=app.lnl(75, 78)==='activo'?1.0:0.0
            tx73.opacity=app.lnl(76, 82)==='activo'?1.0:0.0

            x8.opacity=app.lnl(82, 99)==='activo'?1.0:0.0
            x9.opacity=app.lnl(99, 115)==='activo'?1.0:0.0
            x10.opacity=app.lnl(115, 122)==='activo'?1.0:0.0

            x11.opacity=app.lnl(122, 137)==='activo'?1.0:0.0
            imgApp44O.opacity=app.lnl(131, 137)==='activo'?1.0:0.0
            imgApp55O.opacity=app.lnl(132, 137)==='activo'?1.0:0.0
            imgApp66O.opacity=app.lnl(133, 137)==='activo'?1.0:0.0
            imgApp77O.opacity=app.lnl(134, 137)==='activo'?1.0:0.0
            imgApp88O.opacity=app.lnl(135, 137)==='activo'?1.0:0.0

            x12.opacity=app.lnl(137, 157)==='activo'?1.0:0.0
            x13.opacity=app.lnl(157, 167)==='activo'?1.0:0.0

            x14.opacity=app.lnl(167, 205)==='activo'?1.0:0.0
            img101.visible=app.lnl(167, 175)==='activo'
            img102.visible=app.lnl(175, 183)==='activo'
            img103.visible=app.lnl(183, 191)==='activo'
            img104.visible=app.lnl(191, 205)==='activo'

            x15.opacity=app.lnl(205, 218)==='activo'?1.0:0.0
            x16.opacity=app.lnl(218, 224)==='activo'?1.0:0.0
        }
    }
    Component.onCompleted: {
        var at='¿Que es QML?

QML es un Lenguaje de Programaciòn. Pertenece y es parte del Entorno  de Desarrollo Qt. En tal sentido, su nombre deriva de las siglas Qt Meta Lenguaje.

Qt tiene dos entornos o contextos en los cuales se pueden desarrollar aplicaciones. Uno llamado QtWidgets y el otro QtQuick. Qml inicialmente fue creado como lenguaje principal para el entorno de desarrollo de aplicaciones QtQuick. A partir de la versiòn Qt 5.3 ya es posible crear aplicaciones combinando ambos frameworks, utilizar conjuntamente QtWidgets y QtQuick mediante el objeto QQuickWidget de Qt.

Los desarrolladores del Qt Project han creado el entorno QtQuick, tal como su nombre lo indica (Quick significa ràpido), con el propòsito de poder desarrollar de manera ràpida y productiva aplicaciones orientadas al uso de interfaz gràficas o GUI dinàmicas y modernas. La manera de programar aplicaciones del tipo QtQuick es mediante el uso de QML que fuè creado a tales fines.

QtQuick està cada vez màs presente en distintos tipos de sistemas operativos y dispositivos en donde funciona en lo que se conoce como sistemas embebidos.

Todo lo que aquì aprenderàs es una tecnologìa de vanguardia, de ùltima generaciòn, si bien en el continente Americano no es muy popular, es una de las tecnologìas màs utilizadas en los Paìses Europeos, Rusia, China, la India y Japòn.

Como muestra de su gran proyecciòn, por ejemplo tenemos a Mercedes Benz que està utilizando QtQuick con QML para el desarrollo de los vehìculos màs modernos que esta empresa tiene planificado fabricar hasta 2022. Se trata de los nuevos modelos Mercedes Benz EQ, autos elèctricos inteligentes.

Otro ejemplo es Pannasonic. Su filial Pannasonic Avionics utiliza QtQuick y QML para los mandos, controles y dispositivos de entretenimiento que se utilizan en las naves, satèlites y transporte aeronàuticos. Pannasonic provee tecnologìa de ultima generaciòn a Boeing, Airbus y otras, todo el software proveido està creado con el mismo lenguaje de programaciòn que utilizamos y aprendemos en este curso.

El por estos motivos y por muchos màs que el slogan de Qt antes era -Menos Còdigo y Despliegue por todos partes- y ahora es -El Futuro està escrito en Qt-'
        xT.at=at.replace(/\n/g, ' ')

        var h1= 'La palabra o tèrmino <b>META</b> significa que QML es un lenguaje que està màs allà de preexistente, algo que apareciò luego, algo posterior, superador o de otra forma distinta a lo anterior'
        xa.addBa('¿Que significa META?', h1,'./h/sobre_metta.m4a')
        xa.addBa('Ir al siguiente','','1')
    }
}
