import QtQuick 2.0
import QtGraphicalEffects 1.0
import '../../'
Item {
    id: r
    width: app.width
    height: app.height*0.9
    onVisibleChanged: {
        if(visible){
            app.mp.source="./a1.m4a"
            app.pa=pa
        }
    }
    Column{
        width: r.width-app.fs
        anchors.centerIn: r
        Row{
            id:r0
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: app.fs*20
            visible:opacity>0.0
            Behavior on opacity {
                NumberAnimation{
                    duration: 700
                }
            }
            Repeater{
                model:["Q", "m", "l", "a", "n", "d", "i", "a"]
                Text {
                    text: "<b>"+modelData+"</b>"
                    font.pixelSize: app.fs*4
                    color: app.c2
                    textFormat: Text.RichText
                }
            }
        }

        Text {
            id: txt12
            text: "<b>Curso Interactivo de<br>Qml en Español<br>"
            font.pixelSize: app.fs*2
            color: app.c2
            textFormat: Text.RichText
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            opacity: 0.0
            Behavior on opacity {
                NumberAnimation{
                    duration: 700
                }
            }
        }
        Text {
            id: txt13
            text: "<b>Este curso es posible gracias</b><br><b>GNU/Linux</b><br><b>Qt OpenSource</b><br><b>GitHub.com</b><br><b>y Google</b>"
            font.pixelSize: app.fs
            color: app.c2
            textFormat: Text.RichText
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            opacity: 0.0
            visible:opacity>0.0
            Behavior on opacity {
                NumberAnimation{
                    duration: 700
                }
            }
        }
    }
    Timer{
        running: r.visible&&v<240000
        repeat: true
        interval: 10
        property int v: 0
        onTriggered: {
            if(v>2000&&v<5000){
                if(r0.spacing>=app.fs*0.5){
                    r0.spacing-=app.fs
                }else{
                    tap2.opacity=1.0
                }

                //txt1.text="<b>Qml       a</b><br>"
            }else if(v>6000&&v<7000){
                na1.duration=100
                tap2.opacity=0.0
            }else if(v>12000&&v<15000){
                txt12.opacity=1.0
            }else if(v>50000&&v<70000){
                r0.opacity=0.0
                txt12.opacity=0.0
           }else if(v>80000&&v<120000){
                txt13.opacity=1.0
            }else if(v>180000&&v<220000){
                txt13.opacity=0.0
            }else if(v>220000&&v<240000){
                app.cp.visible=true
                app.cp.rb.opacity=1.0
                app.s++
            }
            v+=100
        }
    }
    Rectangle{
        id:tap1
        anchors.fill: r
        color: 'black'
        Behavior on opacity {
            NumberAnimation{
                duration: 1500
            }
        }
    }
    Rectangle{
        id:tap2
        anchors.fill: r
        color: 'white'
        opacity:0.0
        Behavior on opacity {
            NumberAnimation{
                id:na1
                duration: 700
            }
        }
    }
    MouseArea{
        anchors.fill: r
        onClicked: app.s++
    }
    Component.onCompleted: {
        tap1.opacity=0.0
        app.cp.visible=false
    }
}
