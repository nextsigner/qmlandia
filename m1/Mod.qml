import QtQuick 2.0
import QtMultimedia 5.0
import "s0" as S0
import "s1" as S1
import "s2" as S2
Item {
    id: r
    width: app.an
    height: app.al*0.9
    onVisibleChanged: {
        if(visible){
            app.cants=ss.children.length
        }
    }
    Row{
        id: ss
        S0.S{visible:r.visible&&app.s===0}
        S1.S{visible:r.visible&&app.s===1}
        S2.S{visible:r.visible&&app.s===2}
    }    
}

