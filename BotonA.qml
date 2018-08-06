import QtQuick 2.0
Rectangle {
    id: r
    color: app.c2
    radius: app.fs*0.1
    border.width: 2
    border.color: app.c1
    width: a.contentWidth+app.fs
    height: a.contentHeight+app.fs
    anchors.centerIn: parent
    property alias t1: a.text
    property string t2
    property string s
    Text {
        id: a
        font.pixelSize: app.fs
        color:app.c3
        anchors.centerIn: parent
    }
    MouseArea{
        anchors.fill: r
        onClicked: {
                app.addA(r.t1, r.t2, r.s)
        }
    }
}
