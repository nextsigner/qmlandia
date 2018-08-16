import QtQuick 2.0
import  "../../"
Item {
    id: r
    width: app.an
    height: app.al-app.fs*2    
    Column{
        anchors.centerIn: parent
        Text {
            id: txt1
            font.pixelSize: app.fs*0.7
            color: app.c2
            textFormat: Text.RichText
            wrapMode: Text.WordWrap
            width: r.width*0.8
        }       
    }
    Xa{id:xa}
    Component.onCompleted: {
        var at='Hemos llegado al fin del curso. Este mòdulo solo se ha agreado para incluir informaciòn adicional, datos que consideremos te puedan interesar o resultar ùtiles.<br><br>

        Talves en el momento en que tu estàs recibiendo esta informaciòn el curso aùn està en pleno proceso de evoluciòn y crecimiento. De ser asì te invitamos a participar en este curso aportando informaciòn, ideas a las vìas de comunicaciòn y contacto que te informamos a cada momento. Entre todos podemos construir una gran comunidad y crecer en el camino del conocimiento.

<br><br>Este proyecto ha sido creado para ser distribuido de manera libre y gratuita. Es un producto pensado y diseñado para la divulgaciòn y promociòn del conocimiento y las nuevas tecnologìas, es un aporte solidario a la sociedad y sin fines de lucro.

<br><br>Este curso ha sido realizado por @nextsigner y quienes han colaborado de manera significativa. Si quieres conocer la lista completa de todas las personas y empresas que han colaborado, presiona el boton Ver Colaboradores.

'
        txt1.text=at
        //xa.addBa('Ir al siguiente','','1')
    }
}
