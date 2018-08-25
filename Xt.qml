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
    Item{
        width: r.width*0.33
        height: r.height
        anchors.horizontalCenter: r.horizontalCenter
        anchors.bottom:r.bottom
        clip:true
        Rectangle{
            width: r.height
            height: r.width*0.33
            anchors.centerIn: parent
            rotation:90
            gradient: Gradient {
                GradientStop {
                    position: 0.00;
                    color: app.c3;
                }
                GradientStop {
                    position: 0.25;
                    color: app.c2;
                }GradientStop {
                    position: 0.75;
                    color: app.c2;
                }
                GradientStop {
                    position: 1.00;
                    color: app.c3;
                }
            }
        }
        Text {
            id: txt2
            font.pixelSize: app.fs*0.5+(app.fs*0.5*appSettings.tamlector)
            anchors.verticalCenter: parent.verticalCenter
            color: app.c3
            x:txt.x-parent.x
            text:txt.text
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
        txt2.text=txt.text
        txt.x=(0-txt.width*px)+r.width/2
    }
}
