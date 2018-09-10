import QtQuick 2.0
Rectangle {
    id: r
    color: "transparent"
    radius: app.fs*0.1
    border.width: 2
    border.color: app.c2
    z:parent.parent.z-1
    property int padding: app.fs
    width: parent.width+r.padding
    height: parent.height+r.padding
    anchors.centerIn: parent
}
