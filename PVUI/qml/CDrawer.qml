import QtQuick 2.15
import QtQuick.Controls 2.15

Drawer {
    id: _drawer
    interactive: true //swipeView.depth === 1

    ListView {
        id: _listView

        focus: true
        currentIndex: -1
        anchors.fill: parent

        model: ListModel {
            ListElement {
                icon: "\uf275"
                title: qsTr("Plant")
                source: "qrc:/qml/MainWindow.qml"
            }
            ListElement {
                icon: "\ue811"
                title: qsTr("Login")
                source: "qrc:/qml/MainWindow.qml"
            }
            ListElement {
                icon: "\ue801"
                title: qsTr("Settings")
                source: "qrc:/qml/Settings.qml"
            }
            ListElement {
                icon: "\ue808"
                title: qsTr("Options")
                source: "qrc:/qml/Options.qml"
            }
            ListElement {
                icon: "\uf201"
                title: qsTr("Statistic")
                source: "qrc:/qml/Statistic.qml"
            }
            ListElement {
                icon: "\ue802"
                title: qsTr("Users")
                source: "qrc:/qml/Users.qml"
            }
            ListElement {
                icon: "\uf1c0"
                title: qsTr("Database")
                source: "qrc:/qml/Database.qml"
            }
            ListElement {
                icon: "\ue812"
                title: qsTr(" Info")
                source: "qrc:/qml/Info.qml"
            }
            ListElement {
                icon: "\uf128"
                title: qsTr(" Help")
                source: "qrc:/qml/Help.qml"
            }
        }

        delegate: ItemDelegate {
            width: _listView.width
            text: _listView.width > 150 ? model.icon + "    " + model.title : model.icon
            font.family: "fontello"
            highlighted: ListView.isCurrentItem
            onClicked: {
                _listView.currentIndex = index
                _stackView.push(model.source)
                _drawer.close()
            }
        }

        ScrollIndicator.vertical: ScrollIndicator {}
    }
}
