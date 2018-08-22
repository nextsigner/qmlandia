import QtQuick 2.0
import  "../../"
Item {
    id: r
    width: app.an
    height: app.al-app.fs*2
    Component.onCompleted: {
        if(Qt.platform.os!=='android'){
            var comp = Qt.createComponent("../../Xw.qml")
            var obj = comp.createObject(r, {})
            obj.visible=true
            obj.url='https://github.com/nextsigner/qmlandia'
        }else{
            var comp = Qt.createComponent("../../Xw3.qml")
            var obj = comp.createObject(r, {})
            obj.visible=true
            obj.url='https://github.com/nextsigner/qmlandia'

        }
    }
}

