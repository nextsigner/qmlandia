import QtQuick 2.0
import QtQuick.Controls 2.0
import LogView 1.0
import uk 1.0
ApplicationWindow {
    id: app
    objectName: 'qmlandia'
    visible: true
    visibility: 'Maximized'

    Rectangle{
        anchors.fill: parent
        color: '#ff8833'
        UK{id:uk}
        Connections {target: uk;onUkStdChanged: log.text+=(''+uk.ukStd).replace(/\n/g, ' ');}
        Connections {target: uk;onStdErrChanged: log.text+=(''+uk.getStdErr()).replace(/\n/g, ' ');}

        Text{
            id:log
            color:'white'
            font.pixelSize: 20
            anchors.centerIn: parent
        }
        /*LogView{
            id: logView
            width: 500
            height: 300
        }*/
    }
    Timer{
        running: true
        repeat: true
        interval: 1000
        onTriggered: {
            var d = new Date(Date.now())
            console.log('000--->'+d.getTime())
            //uk.setUkStd('---><<>AAA'+d.getTime())
            //uk.log('---><<>'+d.getTime())
        }
    }

}
