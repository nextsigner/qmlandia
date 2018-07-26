import QtQuick 2.0
import QtQuick.Controls 2.0
import LogView 1.0

ApplicationWindow {
    id: app
    objectName: 'qmlandia'
    visible: true
    visibility: 'Maximized'

    Rectangle{
        anchors.fill: parent
        color: 'blue'
        LogView{
            id: logView
            width: 500
            height: 300
        }
    }

}
