import QtQuick 2.0
import QtQuick.Controls 2.0
import Qt.labs.settings 1.0
import QtWebView 1.1

ApplicationWindow {
    id: app
    objectName: 'qmlandia'
    visible: true
    visibility: 'FullScreen'
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
    property string gitfolder

    //Variables Globales
    property bool iniciada: false
    property bool gd: false //Git Downloaded

    property int s: 0
    property int cants: 0
    property bool verAyuda: false
    property var pa
    property alias cp: controles

    property var mp:controles.mp

    onClosing: close.accepted = Qt.platform.os!=='android'

    Settings{
        id: appSettings
        category: 'conf-qmlandia'
        property int cantRun
        property bool fullScreen
        property real volume
        property int tamlector

        //Variables de Actualizaciòn
        property string uRS
        property string ucs: ''

        //Variables de Estado
        property int usec
        property int umod
        property int pcs

        property int tema
        //onTemaChanged: setTema()
    }
    FontLoader {name: "FontAwesome";source: "qrc:/fontawesome-webfont.ttf";}
    Rectangle{
        id:xApp
        color: app.c3
        width: app.an
        height: app.al
        anchors.centerIn: parent
        rotation: app.width>app.height?0:-90
        MouseArea{
            anchors.fill: parent
            onDoubleClicked: app.visibility="FullScreen"
        }
        Item{
            id:xS
            width: parent.width
            height: controles.visible?parent.height-app.fs*2:parent.height
            clip:true
        }
        Rectangle{
            anchors.fill: parent
            color:app.c3
            visible:xEstado.text!==''
            Text {
                id: xEstado
                text: 'Qmlandia'
                font.pixelSize: app.fs
                anchors.centerIn: parent
                color:app.c2
                width: parent.width*0.6
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
            }
        }
        Xp{id:xP}
        Xt{id:xT;visible:appSettings.tamlector!==-1&&at!==''}
        ControlesPrincipales{id:controles;anchors.bottom: xApp.bottom;}
        Xc{id:xC}
        Xu{id:xU}
        focus: true
        Keys.onSpacePressed:  {
            if(!app.mp.p){
                app.mp.play()
            }else{
                app.mp.pause()
            }
        }
        Keys.onRightPressed: {
            app.mp.seek(app.mp.position+1000)
        }
        Keys.onLeftPressed:  {
            app.mp.seek(app.mp.position-1000)
        }
        Keys.onEscapePressed: {
            if(app.visibility===ApplicationWindow.FullScreen){
                app.visibility="Windowed"
            }else{
                Qt.quit()
            }

        }
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
            if(appSettings.uRS!==ur&&appSettings.cantRun>0){
                appSettings.uRS = ur
                xU.visible=true
                if(ur.indexOf('[')>-1){
                    xU.commit=ur
                }
                app.mp.pause()
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
                app.iniciada=true
                tinit.stop()
                prepMod()
            }
        }
    }
    Timer{
        id:tshowGit
        running: false
        repeat: true
        interval: 500
        onTriggered: {
            if(app.gd){
                console.log('Git Downloaded!')
                tshowGit.stop()
                showS()
            }else{
                console.log('Git No Downloaded!')
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
        //if(app.iniciada){
            prepMod()
            appSettings.ucs=s
        //}
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

        if(appSettings.tema<=0){
            appSettings.tema=1
        }
        tinit.start()
        //setTema()
        //unik.downloadGit('https://github.com/nextsigner/qmlandiamod1.git', '/home/nextsigner/aaa')
    }
    function prepMod(){
        xT.at=''
        xT.ex=0
        xEstado.text='Preparando '+appsDir+'/qmlandia/'+xP.am[app.mod]
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
        code+='                                 //console.log("El modulo "+app.mod+" tiene "+v+" secciones.")\n'
        code+='                                 prepShowS()\n'
        code+='                      }\n'
        code+='               }\n'


        code+='}\n'



        var obj = Qt.createQmlObject(code, xS, 'xm2')
        controles.visible=true
    }
    function prepShowS(){
        app.gd=false
        app.gitfolder=''

        var f=''+xP.am[app.mod]+'/'+xP.ars[app.s]
        var uf=appsDir+'/qmlandia/'+xP.am[app.mod]+'/'+xP.ars[app.s]+'/url'
        var url=(''+unik.getFile(uf)).replace(/\n/g, '')


        var eg=unik.fileExist(uf)
        if(eg){
            var m0=url.split('/')
            var m1=''+m0[m0.length-1]
            var m2=m1.replace('.git', '')
            app.gitfolder=m2
            f+='/'+m2
            var sf=appsDir+'/qmlandia/'+xP.am[app.mod]+'/'+xP.ars[app.s]+'/'+app.gitfolder+'/S.qml'
            //console.log('Descargando Mòdulo desde '+url)
            var folder=appsDir+'/qmlandia/'+xP.am[app.mod]+'/'+xP.ars[app.s]
            xEstado.text='Cargando secciòn '+folder
            //console.log('Descargando Mòdulo en '+folder)

            var uf2=f+'/S.qml'
            var fe=unik.fileExist(sf)
            if(!fe){
                console.log('app.gitfolder: '+app.gitfolder)
                xEstado.text='Descargando '+url
                app.gd= unik.downloadGit(url, folder)
                tshowGit.start()
            }else{
                showS()
            }
        }else{
            showS()
        }
    }

    function showS(){

        for(var i=0;i<xS.children.length;i++){
            xS.children[i].destroy(1)
        }
        var f=''+xP.am[app.mod]+'/'+xP.ars[app.s]
        if(app.gitfolder!==''){
            f+='/'+app.gitfolder
        }
        xEstado.text='Renderizando...  '+f
        var code='import QtQuick 2.0\n'
        code+='import "'+f+'" as SX\n'
        code+='Item{\n'
        code+='anchors.fill:parent\n'
        code+='     SX.S{}\n'
        code+='}\n'
        app.mp.source=''+f+'/a1.m4a'
        app.mp.play()
        console.log('Code: '+code)
        var obj = Qt.createQmlObject(code, xS, 'xm2')
        xC.z=xS.z+1
        xEstado.text=''
        //console.log('Mostrando Secciòn desde carpeta: '+xP.am[app.mod]+'/'+xP.ars[app.s])
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
    function p(d, h){
        return app.mp.position>d*1000&&app.mp.position<h*1000 ? true : false
    }
    function runQml(c){
        var obj = Qt.createQmlObject(c, xS, 'xm4')
    }
    function setTema(){
        if(appSettings.tema===1){
            c1='#000'
            c2='#333'
            c3= 'white'
            c4= 'black'
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
    }
}
