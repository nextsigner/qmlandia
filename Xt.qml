import QtQuick 2.0
Item {
    id: r
    width: parent.width
    height: app.fs*0.6+(app.fs*0.5*appSettings.tamlector)
    anchors.bottom: parent.bottom
    anchors.bottomMargin: app.fs*2
    clip:true

    Text {
        id: txt
        font.pixelSize: app.fs*0.5+(app.fs*0.5*appSettings.tamlector)
        anchors.verticalCenter: r.verticalCenter
        color: app.c2
        x:r.width/2
        Behavior on x{
            NumberAnimation{
                id:dur
                duration: 1000
            }
        }
    }
    Rectangle{
        width: r.width
        height: 1
        color: app.c2
    }
    Rectangle{
        width: r.width
        height: 1
        color: app.c2
        anchors.bottom:r.bottom
    }
    property alias at:txt.text

    function setPx(){
        var px=(app.mp.position/app.mp.duration).toFixed(3)
        txt.x=(0-txt.width*px)+r.width/2
    }
}
