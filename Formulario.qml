import QtQuick 2.15
import QtQuick.Controls 2.15


Item {
    property alias name: name
    property alias nameText: name.text
    property alias colorCodeText: colorCode.text
    property alias colorCode: colorCode
    property alias cerrar: cerrar
    property alias eliminar: eliminar
    property bool editing: false
    property int editIndex : -1


    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Button {
            id: cerrar
            x: 244
            y: 236
            width: 122
            height: 40
            text: qsTr("Crear/Editar")
            font.pointSize: 11
            font.bold: true
        }
        Button {
            id: eliminar
            x: 381
            y: 236
            width: 122
            height: 40
            text: qsTr("Eliminar")
            font.pointSize: 11
            font.bold: true
        }

        Text {
            id: text1
            x: 156
            y: 8
            width: 143
            height: 32
            text: qsTr("Editar Gastos")
            font.pixelSize: 17
            font.bold: true
        }

        TextField {
            id: name
            x: 260
            y: 46
            width: 239
            height: 41
            placeholderText: qsTr("")
        }

        TextField {
            id: colorCode
            x: 256
            y: 116
            width: 247
            height: 44
            placeholderText: qsTr("")
        }

        Text {
            id: text2
            x: 144
            y: 71
            width: 88
            height: 16
            text: qsTr("Descripción")
            font.pixelSize: 14
            font.bold: true
        }

        Text {
            id: text3
            x: 144
            y: 133
            width: 98
            height: 27
            text: qsTr("Valor")
            font.pixelSize: 14
            font.bold: true
        }
    }

}



/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
