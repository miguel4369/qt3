import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Gestor de Presupuesto")

    ListModel {
        id: modelo
    }

    StackView {
        id: stack
        anchors.fill: parent
        initialItem: lista1

        Component {
            id: lista1
            Lista {
                eliminar1.onClicked: {
                modelo.remove(listado.editIndex)
                }
                anyadir.onClicked: {
                stack.push(form1, {editing: false})
                }
                listado.model: modelo
                test.onClicked: {
                modelo.append({name: "Blue", colorCode: "blue"})
                }

                listado.onCurrentIndexChanged: {
                    // Cambia nombre del botón del elemento que seleccionamos en la lista
                    // modelo.remove(listado.currentIndex) borraría el elemento que pulsas
                    // test.text = "Indice " + listado.currentIndex Muestra en el botón el índice de la lista
                    var dato = modelo.get(listado.currentIndex)
                    stack.push(form1, {nameText: dato.name, colorCodeText: dato.colorCode, editing: true, editIndex: listado.currentIndex})
                }
            }
        }

        Component {
            id: form1
            Formulario {
                eliminar.onClicked: {
                modelo.remove(editIndex) // borrar un item pero falla
                    stack.pop()
                }
                cerrar.onClicked: {


                    if (editing == true) {
                        modelo.set(editIndex, {name: name.text, colorCode: colorCode.text})

                    } else {
                        modelo.append({name: name.text, colorCode: colorCode.text})


                    }
                    stack.pop()
                    }
            }
        }
    }
}

