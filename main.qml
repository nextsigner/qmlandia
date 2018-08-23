import QtQuick 2.0
import QtQuick.Controls 2.0
import Qt.labs.settings 1.0
import QtWebView 1.1

ApplicationWindow {
    id: app
    objectName: 'qmlandia'
    visible: true
    visibility: Qt.platform.os!=='android'?'Maximized':'FullScreen'
    width: 720
    height: 480
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
        property int pcs

        property int tema
        onTemaChanged: setTema()
    }
    FontLoader {name: "FontAwesome";source: "qrc:/fontawesome-webfont.ttf";}
    Rectangle{
        id:xApp
        color: app.c3
        width: app.an
        height: app.al
        anchors.centerIn: parent
        rotation: app.width>app.height?0:-90
        ControlesPrincipales{id:controles;anchors.bottom: xApp.bottom;z:xS.z+1}
        Item{
            id:xS
            width: parent.width
            height: parent.height-app.fs*2
            clip:true
        }
        Xp{id:xP}
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

    Timer{
        id:tinit
        running: false
        repeat: true
        interval: 10
        onTriggered: {
            if(xP.cm){
                console.log('Modulos Listados...')
                console.log('Modulo a cargar: '+app.mod)
                console.log('Seccion a cargar: '+app.s)
                prepMod()
                tinit.stop()
            }
        }
    }
    onVerAyudaChanged: {
        if(pa){
            pa.visible=verAyuda
            pa.y=verAyuda?app.height-pa.height-app.fs*6:app.height+pa.height+app.fs*4
        }
    }
    onSChanged:{
        prepMod()
        appSettings.ucs=s
    }
    onModChanged: appSettings.umod=mod
    Component.onCompleted: {
        console.log('Ejecuciòn nùmero: '+appSettings.cantRun)
        appSettings.cantRun++

        //Volume
        if(appSettings.volume<0&&appSettings.volume>1){
            appSettings.volume=0.8
        }
        app.mod=appSettings.umod
        app.s=appSettings.ucs
        tinit.start()

        if(appSettings.tema<=0){
            appSettings.tema=1
        }
        setTema()
    }
    function prepMod(){
        for(var i=0;i<xS.children.length;i++){
                xS.children[i].destroy(1)
        }
        var code='import QtQuick 2.0\n'
        code+='import Qt.labs.folderlistmodel 2.2\n'
        code+='Item{\n'
        code+='         FolderListModel{\n'
        code+='         folder: Qt.platform.os!==\'windows\'?appsDir+\'/qmlandia/\'+xP.am[app.mod]:\'file:///\'+appsDir+\'/qmlandia/\'+xP.am[app.mod]\n'
        code+='                 id:fl2\n'
        code+='                 showFiles: false\n'
        code+='                 sortField: FolderListModel.Name\n'
        code+='                 onCountChanged: {\n'
        code+='                     tfl2.restart()\n'
        code+='                 }\n'
        code+='             }\n'

        code+='             Timer{\n'
        code+='                     id:tfl2\n'
        code+='                     running: false\n'
        code+='                     repeat: false\n'
        code+='                     interval: 1000\n'
        code+='                     onTriggered: {\n'
        code+='                                 var v=0\n'
        code+='                                 xP.ars=[]\n'
        code+='                                 for(var i=0;i<fl2.count;i++){\n'
        code+='                                         xP.ars.push(fl2.get(i, \'fileName\'))\n'
        code+='                                         v++\n'
        code+='                                 } \n'
        code+='                                 app.cants=v\n'
        code+='                                 console.log("El modulo "+app.mod+" tiene "+v+" secciones.")\n'
        code+='                                 showS()\n'
        code+='                      }\n'
        code+='               }\n'


        code+='}\n'



        var obj = Qt.createQmlObject(code, xS, 'xm2')
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
        //appSettings.usec=app.s
         //appSettings.umod=app.mod
    }
    function showCab(){
        app.cb.tit="Modulo "+parseInt(app.mod+1)+" de "+app.cantmod+" Secciòn "+parseInt(app.s+1)+" de "+app.cants
    }
    function addA(t1, t2, s){
        var componente = Qt.createComponent('A.qml')
        var objeto = componente.createObject(app, {"t1":t1, "t2": t2, "source": s})
    }
    function lnl(d, h){
        return app.mp.position>d*1000&&app.mp.position<h*1000? 'activo':'inactivo'
    }
    function runQml(c){
         var obj = Qt.createQmlObject(c, xS, 'xm4')
    }
    function setTema(){
        if(appSettings.tema===1){
            c1='#000'
            c2='#333'
            c3= 'white'
            c4= '#ccc'
        }
        if(appSettings.tema===2){
            c1='#333'//"#62DA06"
            c2='white'//"#8DF73B"
            c3= 'black'//"black"
            c4= '#ccc'//"white"
        }
        if(appSettings.tema===3){
            c1="#EB761D"
            c2="#ff8833"
            c3="black"
            c4="white"
        }
        if(appSettings.tema===4){
            c1="#62DA06"
            c2="#8DF73B"
            c3="black"
            c4="white"
        }
        prepMod()
    }
}
