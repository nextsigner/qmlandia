import QtQuick 2.0
Rectangle {
    id: r
    color: "#930c0c"
    radius: app.fs*0.1
    border.width: 2
    border.color: 'black'
    width: app.width
    height: app.height*0.1
    property alias tit: subTit.text
    Text {
        id: txt
        text: "<b>Qmlandia</b>"
        width: contentWidth
        font.pixelSize: r.height*0.65
        color: 'white'
        anchors.verticalCenter: parent.verticalCenter
    }
    Text {
        id: subTit
        text: ":\\>Tutorial Qml"
        font.pixelSize: r.height*0.65
        color: 'white'
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: txt.right
    }
}
