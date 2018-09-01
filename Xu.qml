import QtQuick 2.0
Rectangle{
    id:r
    anchors.fill: parent
    opacity: 0.65
    color:app.c3
    visible:false
    Rectangle{
        anchors.centerIn: parent
        width: app.fs*20
        height: app.fs*10
        color: app.c2
        radius: app.fs
        Text{
            width: parent.width*0.8
            wrapMode: Text.WordWrap
            anchors.centerIn: parent
            font.pixelSize: app.fs
            color:app.c3
            text:'<b>Atenciòn!</b><br>Hay novedades en los mòdulos y secciones de este curso.<br><br>¿Desea Actualizar Qmlandia? '
        }
        Row{
            anchors.right: parent.right
            anchors.rightMargin: app.fs*0.5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: app.fs*0.5
            spacing: app.fs*0.5
            Rectangle{
                id:bot1
                width: app.fs*3
                height: app.fs*1.2
                color: app.c3
                radius: app.fs*0.25
                Behavior on width{NumberAnimation{duration:150}}
                Text{
                    anchors.centerIn: parent
                    font.pixelSize: app.fs
                    color:app.c2
                    text:'<b>Si</b> '
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        var j=appsDir+'/temp_config.json'
                        var c='{"mode":"-git", "arg1": "https://github.com/nextsigner/qmlandia.git"}'
                        unik.setFile(j, c)
                        unik.restartApp()
                    }
                }
            }
            Rectangle{
                width: app.fs*3
                height: app.fs*1.2
                color: app.c3
                radius: app.fs*0.25
                Text{
                    anchors.centerIn: parent
                    font.pixelSize: app.fs
                    color:app.c2
                    text:'<b>No</b> '
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        r.visible=false
                    }
                }
            }
        }
    }

}
