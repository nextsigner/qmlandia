import QtQuick 2.0
import Qt.labs.folderlistmodel 2.2
Item{
    id:r
    width: r.parent.width
    height: app.al-app.fs*2
    visible: app.verAyuda&&r.parent.visible
    property alias folder: fl.folder
    FolderListModel{
        id:fl
        showFiles: false
        sortField: FolderListModel.Name
        onFolderChanged:  {
            var v=0;
            var code='import QtQuick 2.0\n'
            var ci=''
            var cc=''
            for(var i=0;i<count;i++){
                if(''+fl.get(i, 'fileName')!=='h'){
                    ci+='import "'+fl.get(i, 'fileName')+'" as Mod'+fl.get(i, 'fileName')+'\n'
                    cc+='     Mod'+fl.get(i, 'fileName')+'.Mod{visible:app.mod==='+v+'}\n'
                    v++
                    console.log('Carpeta Modulo: '+fl.get(i, 'fileName'))
                }
            }
            code+=ci
            code+='Item{\n'
            code+='anchors.fill:parent\n'
            code+=cc
            code+='}\n'
            app.addMods(code,v)
        }
    }
}
