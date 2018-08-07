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

    property int s: 0
    property int cants: 0

    property var cs
    FontLoader {name: "FontAwesome";source: "qrc:/fontawesome-webfont.ttf";}
    Rectangle{
        color: app.c3
        anchors.fill: parent
        Column{
            Cabecera{id:cab}
            Mod0.Mod{visible:app.mod===0}
            Column{
                id: mods
                Mod1.Mod{visible:app.mod===1}
            }
            ControlesPrincipales{id:cp}
        }
    }
    function addA(t1, t2, s){
        var componente = Qt.createComponent('A.qml')
        var objeto = componente.createObject(app, {"t1":t1, "t2": t2, "source": s})
    }
}
