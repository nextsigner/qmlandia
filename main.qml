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

    property int mod: 0
    property int cantmod: mods.children.length

    property int s: 0
    property int cants: 0

    property var cs

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
}
