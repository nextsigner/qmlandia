import QtQuick 2.0
import QtQuick.Controls 2.0
import Qt.labs.settings 1.0
import "m0" as Mod0
import "m1" as Mod1
ApplicationWindow {
    id: app
    objectName: 'qmlandia'
    visible: true
    visibility: 'Maximized'
    color: app.c3
    property int fs: app.width>app.height?app.width*0.02:app.height*0.02
    property color c1: "#c82d28"
    property color c2: "#cf7171"
    property color c3: "black"
    property color c4: "white"

    property int mod: 0
    property int cantmod: mods.children.length

    //Variables Globales
    property int s: -1
    property int cants: 0
    property bool verAyuda: false
    property var pa

    property alias cb: cab
    property alias cp: controles

    property var mp

    Settings{
        id: appSettings
        category: 'conf-qmlandia'
        property int cantRun
        property bool fullScreen
        property string uRS
        property string ucs: ''
    }

    FontLoader {name: "FontAwesome";source: "qrc:/fontawesome-webfont.ttf";}
    Rectangle{
        id:xApp
        color: app.c3
        width: app.width>app.height?app.width:app.height
        height: app.width>app.height?app.height:app.width
        anchors.centerIn: parent
        //anchors.fill: parent
        rotation: app.width>app.height?0:-90
        Column{
            Mod0.Mod{visible:app.mod===0}
            Column{
                id: mods
                Mod1.Mod{visible:app.mod===1}
            }
            ControlesPrincipales{id:controles}
        }
        Cabecera{id:cab;x:0-width;visible:app.s>-1}
    }
    Timer{
        id:tu
        running: true
        repeat: false
        interval: 1000*5
        property int v: 0
        onTriggered: {
            tu.v++
            var d = new Date(Date.now())
            unik.setDebugLog(false)
            var ur0 = ''+unik.getHttpFile('https://github.com/nextsigner/qmlandia/commits/master?r='+d.getTime())
            var m0=ur0.split("commit-title")
            var m1=(''+m0[1]).split('</p>')
            var m2=(''+m1[0]).split('\">')
            var m3=(''+m2[2]).split('<')
            var ur = ''+m3[0]
            if(appSettings.uRS===''){
                appSettings.uRS=ur
            }
            //unik.log("Update key control nª"+tu.v+": "+ur+" urs: "+appSettings.uRS)
            if(appSettings.uRS!==ur&&appSettings.cantRun>0){
                unik.setDebugLog(true)
                unik.log("Updating Qmlandia")
                appSettings.uRS = ur
                var fd=appsDir
                var downloaded = unik.downloadGit('https://github.com/nextsigner/unik-tools', fd)
                appSettings.uRS=''
                tu.stop()
                if(downloaded){
                    cp.btnUD.up=true
                }else{
                    tu.start()
                }
            }else{
                //appSettings.uRS=ur
            }
            unik.setDebugLog(true)
            tu.interval=1000*60*5
            tu.repeat=true
            tu.start()
        }
    }


    onVerAyudaChanged: {
        pa.visible=verAyuda
        pa.y=verAyuda?app.height-pa.height-app.fs*6:app.height+pa.height+app.fs*4
    }
    onSChanged:showCab()
    onModChanged: showCab()
    Component.onCompleted: {
        console.log('Ejecuciòn nùmero: '+appSettings.cantRun)
        appSettings.cantRun++

    }
    function showCab(){
        app.cb.tit="Modulo "+app.mod+" de "+app.cantmod+" Secciòn "+app.s+" de "+app.cants
    }
    function addA(t1, t2, s){
        var componente = Qt.createComponent('A.qml')
        var objeto = componente.createObject(app, {"t1":t1, "t2": t2, "source": s})
    }
    function lnl(d, h){
        return app.mp.position>d*1000&&app.mp.position<h*1000? 'activo':'inactivo'
    }
}
