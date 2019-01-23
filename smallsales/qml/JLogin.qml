import QtQuick 2.0
import QtQuick.Layouts 1.3

import "./componentes"

Rectangle {
    anchors.fill: parent
    color: colorBackGround

    JLoader{
        id: __loader
    }

    Item{
        id: __ItemIcon
        width: parent.width
        height: parent.height * 0.25
        anchors.top: parent.top

        Image {
            anchors.centerIn: parent
            source: "qrc:/icons/iconVenda.png"
            sourceSize{width: 100; height: 120}
        }
    }

    Item{
        width: parent.width
        anchors{
            top: __ItemIcon.bottom
            left: parent.left
            leftMargin: 20
            right: parent.right
            rightMargin: 20
            bottom: parent.bottom
        }

        Text{
            id: __Login
            text: "LOGAR"
            color: "white"
            font.pixelSize: 20
            font.bold: true
            anchors{
                top: parent.top
                topMargin: 5
                left: parent.left
                leftMargin: 30
            }
        }

        ColumnLayout{
            id: __Column
            anchors{
                top: __Login.bottom
                topMargin: 20
                left: parent.left
                right: parent.right
            }

            spacing: 40

            JTextField{
                id: __Email
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                placeholderText: "E-mail"
            }

            JTextField{
                id: __Senha
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                placeholderText: "Senha"

//                Image {
//                    anchors.left: parent.right
//                    verticalAlignment: parent.verticalCenter
//                    source: "qrc:/icons/senha.png"
//                    sourceSize{width: 20; height: 20}
//                }
            }
        }

        Text{
            id: __TextEsqueceiSenha
            anchors{
                top: __Column.bottom
                topMargin: 8
                right: parent.right
            }

            text: "Esqueceu sua senha?"
            font.pixelSize: 12
            color: "white"
        }

        JButton{
            anchors{
                top: __TextEsqueceiSenha.bottom
                topMargin: 40
                horizontalCenter: parent.horizontalCenter
            }

            color: "transparent"
            width: parent.width * 0.5
            border.color: "white"
            border.width: 2
            text: "Logar"

           MouseArea{
               anchors.fill: parent
               onClicked: {
                   __loader.source = "qrc:/qml/JPrincipal.qml"
               }
           }
        }

        Text{
            anchors{
                bottom: parent.bottom
                bottomMargin: 5
                horizontalCenter: parent.horizontalCenter
            }

            text: "Desenvolvido em 2018"
            font.pixelSize: 11
            color: "white"
        }
    }
}
