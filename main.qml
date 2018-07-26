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
        color: 'blue'
        UK{id:uk}
        Connections {target: uk;onUkStdChanged: log.text=(''+unik.ukStd).replace(/\n/g, ' ');}
        Connections {target: uk;onStdErrChanged: log.text=(''+unik.getStdErr()).replace(/\n/g, ' ');}

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

}
