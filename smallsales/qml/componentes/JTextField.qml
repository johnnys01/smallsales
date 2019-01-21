import QtQuick 2.9
import QtQuick.Controls 2.2

Item {
    width: parent.width
    height: 40

    property alias placeholderText: __TextField.placeholderText

    TextField{
        id: __TextField
        anchors.fill: parent
        placeholderText: "Text"

        background: Rectangle{
            border.color: "transparent"
        }

//        onPreeditTextChanged: {
//            console.log("aqui", text);
//        }
    }

    Rectangle{
        width: parent.width
        height: 2
        color: "#A6A6A6"
        radius: 2
        anchors.bottom: parent.bottom
    }
}
