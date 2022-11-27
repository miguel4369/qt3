import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property alias listado: listView
    property alias anyadir: anyadir
    property alias test: test
    property alias eliminar1: eliminar1


    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        ListView {
            id: listView
            x: 163
            y: 106
            width: 315
            height: 269
            currentIndex: -1
            model: ListModel {
                ListElement {
                    name: "Grey"
                    colorCode: "grey"
                }

                ListElement {
                    name: "Red"
                    colorCode: "red"
                }

                ListElement {
                    name: "Blue"
                    colorCode: "blue"
                }

                ListElement {
                    name: "Green"
                    colorCode: "green"
                }
            }
            delegate: Item {
                x: 5
                width: 80
                height: 40
                Row {
                    id: row1
                    spacing: 10
                    Rectangle {
                        width: 40
                        height: 40
                        color: colorCode
                    }

                    Text {
                        text: name
                        anchors.verticalCenter: parent.verticalCenter
                        font.bold: true
                    }
                    Button {
                        id: borraritem
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontal.Center

                        text: qsTr("Borrar Dato")
                    }
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: listView.currentIndex = index
                }
            }
        }

        Button {
            id: test
            x: 169
            y: 402
            width: 121
            height: 54
            text: qsTr("Añadir Blue")
        }
        Button {
            id: eliminar1
            x: 300
            y: 402
            width: 121
            height: 54
            text: qsTr("Eliminar Ultimo")
        }

    }

    Label {
        id: titulo; anchors.top: page.bottom;
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        text: "GESTION DE PRESUPUESTO"

    }
    Label {
        id: titulo1; anchors.top: parent.top
        horizontalAlignment: Text.AlignHCenter
        anchors.topMargin: 19
        anchors.horizontalCenter: parent.horizontalCenter
        text: "MIGUEL BAEZA NADAL"
    }

    RoundButton {

        id: anyadir
        x: 435
        y: 405
        width: 60
        height: 46
        text: qsTr("+")
        font.pointSize: 23
        highlighted: true
    }

    Text {
        id: text1
        x: 269
        y: 49
        width: 102
        height: 28
        text: qsTr("Listado")
        font.pixelSize: 18
        font.bold: true
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
