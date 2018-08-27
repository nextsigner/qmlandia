import QtQuick 2.0
import '../../'
Item {
    id: r
    width: app.width
    height: app.height
    property int anchomayor: 0
    property int ts: 0
    onWidthChanged: {
        r.anchomayor=0
        for(var child in lv.contentItem.children) {
            if(lv.contentItem.children[child].width>r.anchomayor){
                r.anchomayor=lv.contentItem.children[child].width
            }
        }
    }
    Item{
        id:area1
        function addTit(t,m,s){
            if((m===0&&s===0)||(m===0&&s===1)){
                return
            }
            lm.append(lm.addTit(t,m,s))
        }
    }
    Column{
        anchors.horizontalCenter: r.horizontalCenter
        height: r.height
        Rectangle{
            id:xTit
            width: r.width
            height: app.fs*1.5
            color:app.c2
            z:lv.z+1
            Text{
                id:txtTit
                text: '<b>Ìndice</b>        <b>Mòdulos:</b> '+app.cantmod+'    <b>Secciones: </b> '+r.ts
                font.pixelSize: app.fs*1.2
                color:app.c3
                anchors.left: parent.left
                anchors.leftMargin: app.fs
            }
        }
        Item{width: app.fs;height: app.fs}
        ListView{
            id:lv
            spacing: app.fs*0.5
            model: lm
            delegate: del
            width: r.width-app.fs*2
            height: r.height-app.fs*1.5-app.fs
            ListModel{
                id:lm
                function addTit(t, m, s){
                    return {
                        tit:t,
                        mo:m,
                        se:s
                    }
                }
            }
            Component{
                id:del
                Rectangle{
                    id:ri
                    width: txt11.contentWidth+app.fs
                    height: mo===-1?app.fs*1.5:app.fs*1.2
                    color:mo===-1?app.c2:'transparent'
                    border.width: mo===-1?0:0
                    border.color: app.c4
                    radius: app.fs*0.25
                    opacity:0.0
                    x:mo===-1?0:(r.width-r.anchomayor)/2
                    visible:mo!=='indice'&&mo!=='intro'
                    Behavior on opacity{
                        NumberAnimation{
                            duration:250
                        }
                    }
                    Row{
                        anchors.centerIn: parent
                        spacing: app.fs*0.25
                        Rectangle{
                            width: app.fs*0.5
                            height: width
                            radius: width*0.5
                            color:mo===-1?'transparent':app.c4
                            anchors.verticalCenter: parent.verticalCenter
                        }
                        Text{
                            id:txt11
                            text: mo===-1?'<b>'+tit+'</b>':tit
                            font.pixelSize: mo===-1?app.fs*1.2:app.fs
                            color:mo===-1?app.c3:app.c4
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        enabled: mo!==-1
                        hoverEnabled: true
                        onEntered: {
                            txt11.font.pixelSize=app.fs*1.1
                        }
                        onExited: txt11.font.pixelSize=app.fs
                        onClicked: {
                            app.mod=mo
                            if(app.s!==se){
                                app.s=se
                            }else{
                                app.s=se
                                app.prepMod()
                            }

                        }
                    }
                    function setRi(){
                        if(ri.width>r.anchomayor){
                            r.anchomayor=ri.width
                        }
                    }
                    Component.onCompleted: {
                        ri.opacity=1.0
                        setRi()
                    }
                }
            }
        }
    }
    Component.onCompleted: {
        controles.visible=false
        for(var i=0;i<xP.am.length;i++){
            listar(xP.am[i],i)
        }
    }


    function listar(m,nm){
        var code='import QtQuick 2.0\n'
        code+='import Qt.labs.folderlistmodel 2.2\n'
        code+='Item{\n'
        code+=' id:xr'+m+'\n'
        code+='         FolderListModel{\n'
        code+='         folder: Qt.platform.os!==\'windows\'?appsDir+\'/qmlandia/'+m+'\':\'file:///\'+appsDir+\'/qmlandia/'+m+'\'\n'
        code+='                 id:fl'+m+'\n'
        code+='                 showFiles: false\n'
        code+='                 sortField: FolderListModel.Name\n'
        code+='                 onCountChanged: {\n'
        code+='                     tfl'+m+'.restart()\n'
        code+='                 }\n'
        code+='             }\n'

        code+='             Timer{\n'
        code+='                     id:tfl'+m+'\n'
        code+='                     running: false\n'
        code+='                     repeat: false\n'
        code+='                     interval: 1000*'+nm+'\n'
        code+='                     onTriggered: {\n'
        code+='                     var t=unik.getFile((fl'+m+'.folder+\'/titulo\').replace(\'file://\', \'\'))\n'
        code+='                     console.log("ttt:"+t)\n'
        code+='                     lm.append(lm.addTit(t, -1, -1))\n'
        code+='                                 var v=0\n'
        code+='                                 //xP.ars=[]\n'
        code+='                                 for(var i=0;i<fl'+m+'.count;i++){\n'
        code+='                                     var t2=""+unik.getFile((fl'+m+'.folder+\'/\'+fl'+m+'.get(i, \'fileName\')+\'/titulo\').replace(\'file://\', \'\'))\n'
        code+='                                         xr'+m+'.parent.addTit(t2.replace(/\\n/g, \'\'),'+nm+',i)\n'
        code+='                                         r.ts++\n'
        code+='                                         v++\n'
        code+='                                 } \n'
        code+='                                 //app.cants=v\n'
        code+='                                 console.log("Indice El modulo "+app.mod+" tiene "+v+" secciones."+fl'+m+'.folder)\n'
        code+='                      }\n'
        code+='               }\n'
        code+='}\n'
        var obj = Qt.createQmlObject(code, area1, 'xm'+m)
    }
}
