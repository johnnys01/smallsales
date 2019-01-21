import QtQuick 2.0
import QtQuick.Layouts 1.3

import "./componentes"

Rectangle {
    anchors.fill: parent

    Item{
        id: __ItemIcon
        width: parent.width
        height: parent.height * 0.3
        anchors.top: parent.top
    }

    Item{
        width: parent.width
        anchors{
            top: __ItemIcon.bottom
            left: parent.left
            leftMargin: 5
            right: parent.right
            rightMargin: 5
            bottom: parent.bottom
        }

        Text{
            id: __Login
            text: "LOGAR"
            color: colorText
            font.pixelSize: 18
            font.bold: true
            anchors{
                top: parent.top
                topMargin: 5
                left: parent.left
                leftMargin: 30
            }
        }

        RowLayout{
            anchors{
                top: __Login.bottom
                topMargin: 10
                left: parent.left
                leftMargin: 20
                right: parent.right
                rightMargin: 20
            }

            JTextField{
                Layout.fillWidth: true
                Layout.preferredHeight: 40
            }
        }
    }
}
