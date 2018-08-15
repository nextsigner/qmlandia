import QtQuick 2.0
import  "../../"
Item {
    id: r
    width: app.an
    height: app.al-app.fs*2
    onVisibleChanged: {
        if(visible){
            app.mp.source="./a1.m4a"
            app.pa=pa
            //app.mp.play()
        }
    }
    Column{
        Text {
            id: txt1
            width: r.width*0.6
            font.pixelSize: app.fs*0.5
            color: app.c2
            textFormat: Text.RichText
            wrapMode: Text.WordWrap
        }
    }
    property var ai: ["qml.png","qt-icon.png"]
    Image{
        width: r.width*0.4-app.fs
        source:"./"+ai[0]
        anchors.verticalCenter: r.verticalCenter
        anchors.right: r.right
        fillMode: Image.PreserveAspectFit
        visible:app.mp.position<12&&app.mp.position>22
    }
    Text{
        id:txtQML
        anchors.verticalCenter: r.verticalCenter
        anchors.right: r.right
        anchors.rightMargin: (r.width*0.4-contentWidth)/2
        font.pixelSize: app.fs*2
        horizontalAlignment: Text.AlignHCenter
        color: app.c2
        textFormat: Text.RichText
    }
    Tap{}
    Rectangle{
        id:xA
        width: app.fs*4
        height: pa.height+app.fs
        color: app.c3
        border.color: app.c2
        border.width: 2
        radius: app.fs*0.5
        visible: app.verAyuda
        anchors.right: r.right
        anchors.bottom: r.bottom
        onVisibleChanged: {
            var w=0;
            for(var i=0;i<pa.children.length;i++){
                if(pa.children[i].width>w){
                    w=pa.children[i].width
                }
            }
            xA.width=w+app.fs
            if(visible){
                app.verAyuda=true
            }
        }
        Column{
            id:pa
            anchors.centerIn: parent
            spacing: app.fs*0.5
            BotonA{id: ba1; t1:'¿Que significa META?';s:'./h/sobre_meta.m4a'}
            BotonA{id: ba3; t1:'Ir al siguiente';s:'1'}
        }
    }
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            var c1='<html><head><style>\n.activo{\nfont-size:'+parseInt(app.fs*0.65)+'px;\nbackground-color:'+app.c2+';\ncolor:'+app.c3+';\n}\n.inactivo{\nbackground-color:'+app.c3+';\ncolor:'+app.c2+';\n}</style></head><body>'
            var c3='</body></html>'

            var c2 ='<h2 class="'+app.lnl(0, 2)+'">¿Que es QML?</h2>'

            var p0='QML es un Lenguaje de Programaciòn. Pertenece y es parte de un Entorno  de Desarrollo Qt. En tal sentido, su nombre deriva de las siglas Qt Meta Lenguaje.'

            var p1='Qt tiene dos entornos o contextos en los cuales se pueden desarrollar aplicaciones. Uno llamado QtWidgets y el otro QtQuick. Qml fue creado como lenguaje para el entorno de desarrollo de aplicaciones QtQuick.'

            var p2='Los desarrolladores del Qt Project han creado el entorno QtQuick, tal como su nombre lo indica (Quick significa ràpido), con el propòsito de poder desarrollar de manera ràpida y productiva aplicaciones orientadas al uso de interfaz gràficas o GUI dinàmicas y modernas. La manera de programar aplicaciones del tipo QtQuick es mediante el uso de QML que fuè creado a tales fines.'

            var p3='A comienzos de 2018, QML ya se puede utilizar en combinaciòn con el entorno QtWidgets, puedes programar pàginas web con QML y su proyecciòn es tan contundente grandes empresas como Mercedes Benz lo utiliza para los mandos y controles de sus nuevos vehiculos de alta gama y Pannasonic lo utiliza con el mismo propòsito para toda la liena de productos de ùltima generaciòn. El por este motivo y por muchos màs que es slogan de Qt antes era -Menos Còdigo y Despliegue por todos lados- y ahora es -El Futuro està escrito en Qt-'

            c2+='<p class="'+app.lnl(2, 14)+'">'+p0+'</p>'
            c2+='<p class="'+app.lnl(14, 30)+'">'+p1+'</p>'
            c2+='<p class="'+app.lnl(31, 63)+'">'+p2+'</p>'
            c2+='<p class="'+app.lnl(63, 114)+'">'+p3+'</p>'

            txt1.text=c1+c2+c3

            var t1c1='<html><head><style>\n.activo{\ncolor:red;\n}\n.inactivo{\ncolor:yellow;\n}</style></head><body>'
            var t1
            if(app.lnl(4, 5)==='activo'){
                t1='<b class="activo">Q</b><span class="inactivo">t</span><br>M</b><span class="inactivo">eta</span><br><b>L</b>'
            }else if(app.lnl(5, 6)==='activo'){
                t1='<b class="activo">Q</b><span class="inactivo">t</span><br><b class="activo">M</b><span class="inactivo">eta</span><br><b>L</b>'
            }else if(app.lnl(6, 90)==='activo'){
                t1='<b class="activo">Q</b><span class="inactivo">t</span><br><b class="activo">M</b><span class="inactivo">eta</span><br><b class="activo">L</b><span class="inactivo">anguaje</span>'
            }else{
                t1='<b>Q</b><br><b>M</b><br><b>L</b>'
            }
            t1c1+=t1
            t1c1+=c3
            txtQML.text=t1c1

            var h1= 'La palabra o tèrmino <b>META</b> significa que QML es un lenguaje que està màs allà de preexistente, algo que apareciò luego, algo posterior, superador o de otra forma distinta a lo anterior'
            ba1.t2=h1


        }
    }
    Component.onCompleted: {
        app.mp.source="./a1.m4a"
        app.mp.play()
    }
}
