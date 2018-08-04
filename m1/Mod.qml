import QtQuick 2.0
import "s1" as S1
import "s2" as S2
import "s3" as S3
Item {
    id: r
    width: app.width
    height: app.height*0.8
    onVisibleChanged: {
        if(visible){
            app.cants=ss.children.length
            app.cs=ss.children[0]
        }
    }
    Row{
        id: ss
        S1.S{visible:app.s===0}
        S2.S{visible:app.s===1}
        S3.S{visible:app.s===2}
    }
}

