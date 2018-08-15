import QtQuick 2.0
import QtQuick.Controls 2.0
import Qt.labs.settings 1.0
ApplicationWindow {
    id: app
    objectName: 'qmlandia'
    visible: true
    visibility: Qt.platform.os!=='android'?'Maximized':'FullScreen'
    color: app.c3
    property real ffs: Qt.platform.os!=='android'?0.027:0.03
    property int fs: app.width>app.height?app.width*ffs:app.height*ffs
    property int an: app.width>app.height?app.width:app.height
    property int al: app.width>app.height?app.height:app.width

    property color c1: "#62DA06"
    property color c2: "#8DF73B"
    property color c3: "black"
    property color c4: "white"

    property int mod: 0
    property int cantmod//: mods.children.length

    //Variables Globales
    property int s: 0
    property int cants: 0
    property bool verAyuda: false
    property var pa
    //property var ma//Mod Activo

    property alias cb: cab
    property alias cp: controles

    property var mp:controles.mp

    Settings{
        id: appSettings
        category: 'conf-qmlandia'
        property int cantRun
        property bool fullScreen
        property real volume

        //Variables de Actualizaciòn
        property string uRS
        property string ucs: ''

        //Variables de Estado
        property int usec
        property int umod
    }
    FontLoader {name: "FontAwesome";source: "qrc:/fontawesome-webfont.ttf";}
    Rectangle{
        id:xApp
        color: app.c3
        width: app.an
        height: app.al
        anchors.centerIn: parent
        //anchors.fill: parent
        rotation: app.width>app.height?0:-90
        ControlesPrincipales{id:controles;anchors.bottom: xApp.bottom;z:xP.z+1}
        Item{
            id:xS
            anchors.fill: parent
            clip:true
        }
        Xp{
            id:xP
            onListado: showS()
        }
        Cabecera{id:cab;x:0-width;visible:app.s>-1;anchors.bottom: xApp.bottom;anchors.bottomMargin: app.fs*2}
        Xc{id:xC}
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
                cp.btnUD.up=true
                appSettings.uRS = ur
            }else{
                cp.btnUD.up=false
            }
            unik.setDebugLog(true)
            tu.interval=1000*60*5
            tu.repeat=true
            tu.start()
        }
    }
    onVerAyudaChanged: {
        if(pa){
            pa.visible=verAyuda
            pa.y=verAyuda?app.height-pa.height-app.fs*6:app.height+pa.height+app.fs*4
        }
    }
    onSChanged:{
        showCab()
        showS()
    }
    onModChanged: {
        //xP.folder=Qt.platform.os!=='windows'?appsDir+'/qmlandia'+'/'+xP.am[app.s]:'file:///'+appsDir+'/qmlandia'+'/'+xP.am[app.s]
        showCab()
        showS()
    }
    Component.onCompleted: {
        console.log('Ejecuciòn nùmero: '+appSettings.cantRun)
        appSettings.cantRun++



        //xP.folder=Qt.platform.os!=='windows'?appsDir+'/qmlandia':'file:///'+appsDir+'/qmlandia'

        //Volume
        if(appSettings.volume<0&&appSettings.volume>1){
            appSettings.volume=0.8
        }


    }
    function showS(){
        for(var i=0;i<xS.children.length;i++){
                xS.children[i].destroy(1)
        }
        var code='import QtQuick 2.0\n'
        code+='import "'+xP.am[app.mod]+'/'+xP.ars[app.s]+'" as SX\n'
        code+='Item{\n'
        code+='anchors.fill:parent\n'
        code+='     SX.S{}\n'
        code+='}\n'
        app.mp.source=''+xP.am[app.mod]+'/'+xP.ars[app.s]+'/a1.m4a'
        app.mp.play()
        console.log('Code: '+code)
        var obj = Qt.createQmlObject(code, xS, 'xm2')
        xC.z=xS.z+1
        console.log('Mostrando Secciòn desde carpeta: '+xP.am[app.mod]+'/'+xP.ars[app.s])
        appSettings.usec=app.s
         appSettings.umod=app.mod
    }
    function showCab(){
        //appSettings.usec=app.s
        //appSettings.umod=app.mod
        //appSettings.umps=app.mp.source
        app.cb.tit="Modulo "+parseInt(app.mod+1)+" de "+app.cantmod+" Secciòn "+parseInt(app.s+1)+" de "+app.cants
    }
    function addA(t1, t2, s){
        var componente = Qt.createComponent('A.qml')
        var objeto = componente.createObject(app, {"t1":t1, "t2": t2, "source": s})
    }
    function lnl(d, h){
        return app.mp.position>d*1000&&app.mp.position<h*1000? 'activo':'inactivo'
    }
}
