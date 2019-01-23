import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Styles 1.4

Item {
    width: parent.width
    height: 50

    property alias placeholderText: __TextField.placeholderText
    property alias pixelSize: __TextField.font.pixelSize

    Text{
        id: __TextTitule
        text: __TextField.placeholderText
        visible: false
        anchors{
            top: parent.top
            left: parent.left
        }
        color: __TextField.color
        font.pixelSize: 10
    }

    TextField{
        id: __TextField
        anchors{
            top: parent.top
            topMargin: 10
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }

        color: "white"
        font.pixelSize: 16

        background: Rectangle{
            color: "transparent"
            border.color: "transparent"
        }

        onFocusChanged: {
            __TextTitule.visible = focus
        }
    }

    Rectangle{
        width: parent.width
        height: 2
        color: "#A6A6A6"
        radius: 2
        anchors.bottom: parent.bottom
    }
}
