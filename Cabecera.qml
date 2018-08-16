import QtQuick 2.0
Rectangle {
    id: r
    color: app.c1
    radius: app.fs*0.1
    border.width: 2
    border.color: 'black'
    width: app.an
    height: app.al*0.1
    property alias tit: subTit.text
    //x:subTit.text!==""?0:0-r.width
    Behavior on x{
        NumberAnimation{
            duration: 1000
            easing.type: Easing.OutInQuad
        }
    }
    Text {
        id: txt
        text: "<b>Qmlandia</b>:\\>"
        width: contentWidth
        font.pixelSize: r.height*0.65
        color: app.c3
        anchors.verticalCenter: parent.verticalCenter
    }
    Text {
        id: subTit
        text: ""
        font.pixelSize: r.height*0.65
        color: app.c3
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: txt.right
        onTextChanged: {
            if(text===""){
                 r.x=0-r.width
            }else{
                r.x=0
                t.start()
             }
        }
    }
    Timer{
        id: t
        running: false
        repeat: false
        interval: 5000
        onTriggered: {
            r.x=0-r.width
            if(r.visible){
                //app.mp.play()
            }

        }
    }
}
