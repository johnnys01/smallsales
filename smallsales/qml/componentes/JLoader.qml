import QtQuick 2.0

Loader {
    id: loader
    objectName: "loader"
    anchors.fill: parent
    asynchronous: true
    z: 1

    signal voltar();

    Connections {
        target: loader.item
        ignoreUnknownSignals: true

        onClickVoltarLogin:{
            loader.source = ""
        }

        onClickVoltar:{
            loader.source = ""
            voltar()
        }
    }

    onStatusChanged: {
        if(status === Loader.Ready && loader.source != "") {
            item.forceActiveFocus();
            item.parent=__MouseArea
            __MouseArea.visible=true
        }
        else{
            __MouseArea.visible=false
        }
    }

    MouseArea{
        id: __MouseArea
        anchors.fill: parent
        z: 2
        visible: false
    }
}

