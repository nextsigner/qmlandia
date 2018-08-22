import QtQuick 2.0
import  "../../"
Item {
    id: r
    width: app.an
    height: app.al-app.fs*2
    Component.onCompleted: {
        var url='http://www.unikode.org/2018/02/unik-documentation.html'
        var comp
        var obj
        if(Qt.platform.os!=='android'){
            comp = Qt.createComponent("../../Xw.qml")
            obj = comp.createObject(r, {"url":url})
        }else{
            comp = Qt.createComponent("../../Xw2.qml")
            obj = comp.createObject(r, {"url":url})
        }
    }
}

