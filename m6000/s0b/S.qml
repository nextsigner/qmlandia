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

    //1
    Text{
        id:x1
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        text:'<b>Caracterìsticas</b><br><b>Tècnicas</b><br><b>de QML</b>'
        anchors.centerIn: r
        font.pixelSize: app.fs*2
        color: app.c2
        font.family: 'FontAwesome'
        horizontalAlignment: Text.AlignHCenter
        textFormat: Text.RichText
    }

    //bgx2
    Grid{
        id:bgx2
        anchors.centerIn: r
        columns: 30
        spacing: app.fs*0.5
        visible:x2.opacity>0.0
        SequentialAnimation{
            running:bgx2.visible&&x3.opacity<1.0
            loops: Animation.Infinite
            NumberAnimation {
                target: bgx2
                from:0.25
                to:0.65
                property: "opacity"
                duration: 1500
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                target: bgx2
                from:0.65
                to:0.25
                property: "opacity"
                duration: 1500
                easing.type: Easing.InOutQuad
            }
        }
        Repeater{
            model:300
            Item{
                id:xbg
                width: children[0].contentWidth
                height: app.fs*1.4
                Text{
                    text:'<b>¿ ?</b>'
                    anchors.centerIn: parent
                    font.pixelSize: app.fs
                    color: app.c2
                    font.family: 'FontAwesome'
                }
                Component.onCompleted: {
                    var a =   Math.floor((Math.random()*index));
                    xbg.rotation=a
                }
            }
        }
    }

    //2
    Grid{
        id:x2
        anchors.centerIn: r
        columns: 3
        spacing: app.fs*0.5
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Repeater{
            model:["Declarativo", "Imperativo", "Reactivo", "Señales", "Ranuras", "Otras"]
            Rectangle{
                width: app.fs*10
                height: app.fs*1.4
                color:app.c3
                border.width: 2
                border.color: app.c2
                Text{
                    text:'<b>'+modelData+'</b>'
                    anchors.centerIn: parent
                    font.pixelSize: app.fs
                    color: app.c2
                    font.family: 'FontAwesome'
                }
                Item{
                    width: 2
                    height: app.fs*20
                    anchors.centerIn: parent
                    Rectangle{
                        visible:index<=2
                        width: parent.width
                        height: parent.parent.color===app.c3?0:parent.height/2
                        anchors.bottom: parent.verticalCenter
                        anchors.bottomMargin: parent.parent.height/2
                        color:app.c2
                        Behavior on height{NumberAnimation{duration:500}}
                    }
                    Rectangle{
                        visible:index>2
                        width: parent.width
                        height: parent.parent.color===app.c3?0:parent.height/2
                        anchors.top: parent.verticalCenter
                        anchors.topMargin: parent.parent.height/2
                        color:app.c2
                        Behavior on height{NumberAnimation{duration:500}}
                    }
                }
            }
        }
    }

    //3
    Text{
        id:x3
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        text:'<b>Tranquilos!</b>'
        anchors.horizontalCenter: r.horizontalCenter
        anchors.top: r.top
        anchors.topMargin: app.fs
        font.pixelSize: app.fs*3
        color: app.c2
        font.family: 'FontAwesome'
        horizontalAlignment: Text.AlignHCenter
        textFormat: Text.RichText
    }



    //4
    Text{
        id:x4
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        text:'<b>Seccion en construcciòn :)</b>'
        anchors.centerIn: r
        font.pixelSize: app.fs
        color: app.c2
        font.family: 'FontAwesome'
        horizontalAlignment: Text.AlignHCenter
        textFormat: Text.RichText
    }

    Xa{id:xa}
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            x1.opacity=app.lnl(0, 6)==='activo'?1.0:0.0

            x2.opacity=app.lnl(6, 70)==='activo'?1.0:0.0
            //Declarativo
            x2.children[0].color=app.lnl(19, 70)==='activo'?app.c2:app.c3
            x2.children[0].children[0].color=app.lnl(19, 70)==='activo'?app.c3:app.c2
            //Declarativo
            x2.children[1].color=app.lnl(21, 70)==='activo'?app.c2:app.c3
            x2.children[1].children[0].color=app.lnl(21, 70)==='activo'?app.c3:app.c2
            //Reactivo
            x2.children[2].color=app.lnl(23, 70)==='activo'?app.c2:app.c3
            x2.children[2].children[0].color=app.lnl(23, 70)==='activo'?app.c3:app.c2
            //Señales
            x2.children[3].color=app.lnl(24.5, 70)==='activo'?app.c2:app.c3
            x2.children[3].children[0].color=app.lnl(24.5, 70)==='activo'?app.c3:app.c2
            //Ranuras
            x2.children[4].color=app.lnl(26, 70)==='activo'?app.c2:app.c3
            x2.children[4].children[0].color=app.lnl(26, 70)==='activo'?app.c3:app.c2
            //Otras
            x2.children[5].color=app.lnl(27.5, 70)==='activo'?app.c2:app.c3
            x2.children[5].children[0].color=app.lnl(27.5, 70)==='activo'?app.c3:app.c2

            x3.opacity=app.lnl(36, 70)==='activo'?1.0:0.0
            x4.opacity=app.lnl(70, 200)==='activo'?1.0:0.0
        }
    }
    Component.onCompleted: {
        var at='Caractarìsticas Tècnicas de QML.

En esta secciòn, veremos tèrminos o palabras que talves nos parezcan poco relevantes o difìciles de entender. Mencionaremos palabras como ser Declarativo, Imperativo, Reactivo, Señales, Ranuras y otras.

                                                    Tambièn puede resultar algo difìcil acostumbrarnos a estas palabras. Tranquilos. No es necesario que aprendas al detalle lo que te enseñaremos a continuaciòn. Tòmalo còmo un apartado informàtivo al cuàl puedes volver en cualquier momento y repasar algunos conceptos. Te explicaremos mìnimamente, a modo de introducciòn algunos detalles tècnicos sobre QML que siempre es bueno conocerlos o tenerlos en cuenta.

QML es un lenguage de Programaciòn Declarativo basado en JavaScript. Existen lenguajes de programaciòn Declarativos e Imperativos. Vamos a explicar la diferencia entre ellos para entender mejor en que consiste QML.

                                                Para ver la diferencia, es muy importante que entendamos que el lenguaje Declarativo està orientado a resolver problemas o alcanzar objetivos, ambos pre existentes y el lenguaje Imperativo està orientado a resolver en general todo tipo de problemas, incluso uno que nadie antes haya tenido y el programador utilizando el lenguaje imperativo tiene el desafìo de resolver programando funciones y objetos desde cero debido a que antes nunca se programò còdigo para resolver un problema similar.

Tambièn existe el caso en el cuàl ya exista còdigo para resolver un determinado problema pero no cuentas con èl, no quieres utilizarlo para no tener que pagar derechos de autor, no quieres pagar licencias o simplemente lo quieres hacer tu mismo desde cero. En estos casos se utiliza habitualmente un lenguaje imperativo.

                                                                            Ejemplos de Lenguajes Imperativos son C++, JavaScript o PHP.
                                                                            Ejemplos de lenguajes Declarativos son QML, SQL, HTML o XSL.

                                                                Un lenguaje Imperativo es aquel que nos permite crear y ejecutar procesos informàticos creando desde cero, objetos, funciones, tipos de datos y todo tipo de recursos programables para dar ordenes a un dispositivo electrònico. Ya sea para resolver o cumplir, problemas u objetivos, comunes o atìpicos.

                                Un lenguaje Declarativo està orientado a resolver o cumplir objetivos pre existentes. Esto significa que el lenguaje de programaciòn declarativo ya cuenta con objetos y funciones pre programadas las cuales son llamadas e instanciadas al momento de escribir en el còdigo la palabra clave que identifica cada objeto o funciòn, reiteramos, pre programados. Este proceso se lo denomina como Declaraciòn de Objeto o Elemento.

                                                Al ser basado en JavaScript, dentro de QML podemos incluir como parte del còdigo todo el còdigo JavaScript que querramos. Si bien, una de las caracterìsticas principales de QML, decimos que es un lenguaje declarativo, debido a que està basado en JavaScript el cuàl es un lenguaje imperativo, esto significa que programar en QML es algo tan particular y potente que estamos utilizando un lenguaje declarativo e imperativo en simultàneo.

                                                Eso no es todo. QML es un lenguaje tan moderno y poderoso que ademàs de abordar conceptos multiparadigmas, estados, animaciòn, controladores de señales y otros que lo definen tanto como un lenguaje declarativo e imperativo, QML ademàs se asocia, se vincula, se conecta y se integra con C++, el lenguaje imperativo màs potente por excelencia. Esto mismo lo hace mediante lo que se denominan signals y slots en castellano señales y ranuras, este concepto creado por Qt lo ejercitaremos a futuro y veràs cuàn ùtil y valioso es para programar aplicaciones potentes a todo nivel.

                                                Por ùltimo mencionaremos la caracterìstica màs innovadora y revolucionaria que tiene QML, son las Property Bindings en castellano Propiedad Vinculada. Este tipo de propiedades permiten que el còdigo QML que escribamos, actualice automàticamente los valores de sus propiedades asignados implìcitamente. ¿Que significa esto?. Significa que tu còdigo calcularà por tì aquellos valores que tu no le hayas explicado plenamente como se deben calcular. Nos referimos a valores de cualquier tipo, no necesariamente matemàticos.

Las propiedades vinculadas dotan a QML de la siguiente caracterìstica. Ademàs de ser Declarativo, Imperativo tambièn es Reactivo.

'
        xT.at=at.replace(/\n/g,' ')

        /*var h1= 'La palabra o tèrmino <b>META</b> significa que QML es un lenguaje que està màs allà de preexistente, algo que apareciò luego, algo posterior, superador o de otra forma distinta a lo anterior'
        xa.addBa('¿Que significa META?', h1,'./h/sobre_metta.m4a')
        xa.addBa('Ir al siguiente','','1')*/
    }
}
