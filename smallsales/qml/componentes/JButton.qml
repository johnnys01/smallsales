import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: __RectangleButton
    width: parent.width
    height: 40

    property alias text: __Text.text
    property alias textColor: __Text.color
    radius: 5

    Text{
        id: __Text
        anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        color: "white"
        font.pixelSize: 14
    }

//    DropShadow {
//        id: drop
//        anchors.fill: parent
//        cached: true
//        horizontalOffset: 2
//        verticalOffset: 2
//        radius: 6
//        samples: radius * 2 + 1
//        color: "#80000000"
//        source: parent
//    }
}
