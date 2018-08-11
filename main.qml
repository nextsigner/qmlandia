import QtQuick 2.0
import QtQuick.Controls 2.0
import uk 1.0
import "m0" as Mod0
import "m1" as Mod1
ApplicationWindow {
    id: app
    objectName: 'qmlandia'
    visible: true
    visibility: 'Maximized'
    property int fs: app.width*0.02
    property color c1: "#c82d28"
    property color c2: "#cf7171"
    property color c3: "black"
    property color c4: "white"

    property int mod: 0
    property int cantmod: mods.children.length

    //Variables Globales
    property int s: -1
    property int cants: 0
    property bool verAyuda: false
    property var pa

    property alias cb: cab
    property alias cp: controles

    property var mp




    FontLoader {name: "FontAwesome";source: "qrc:/fontawesome-webfont.ttf";}
    Rectangle{
        id:xApp
        color: app.c3
        anchors.fill: parent
        Column{
            Mod0.Mod{visible:app.mod===0}
            Column{
                id: mods
                Mod1.Mod{visible:app.mod===1}
            }
            ControlesPrincipales{id:controles}
        }
        Cabecera{id:cab;x:0-width;visible:app.s>-1}
    }
    Component.onCompleted: {

    }
    onVerAyudaChanged: {
        pa.visible=verAyuda
        pa.y=verAyuda?app.height-pa.height-app.fs*6:app.height+pa.height+app.fs*4
    }
    onSChanged:showCab()
    onModChanged: showCab()
    function showCab(){
        app.cb.tit="Modulo "+app.mod+" de "+app.cantmod+" Secciòn "+app.s+" de "+app.cants
    }
    function addA(t1, t2, s){
        var componente = Qt.createComponent('A.qml')
        var objeto = componente.createObject(app, {"t1":t1, "t2": t2, "source": s})
    }

}
