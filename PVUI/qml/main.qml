import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import Imports.PVUI 1.0

ApplicationWindow {
    id: _root
    width: 1920
    height: 1080
    minimumWidth: 400
    minimumHeight: 300
    visible: true
    title: qsTr("Process visualization ")


    /*
    menuBar: CMenuBar {
        id: _menuBar
    }
    */
    header: CToolBar {
        id: _toolBbar
    }

    StackView {
        id: _stackView
        anchors {
            left: parent.left
            leftMargin: 2
            bottom: parent.bottom
            bottomMargin: 4
            top: _toolBbar.bottom
            topMargin: 4
            right: _controlButtonsPanel.left
            rightMargin: 0
        }

        initialItem: MainWindow {
            id: _mainWindow
            //            width: _stackView.width
            //            height: _stackView.height
        }
    }

    CButtonsPanel {
        id: _controlButtonsPanel
        anchors.top: _toolBbar.bottom
        anchors.topMargin: 4
        anchors.right: parent.right
        anchors.rightMargin: 0
        width: parent.width / 11
        height: _mainWindow.height
    }

    CDrawer {
        id: drawer
        y: _toolBbar.height + 4
        width: {
            let w = Math.min(_root.width, _root.height) / 6
            return w > 150 ? w : 45
        }

        height: _root.height - _toolBbar.height
        interactive: true //swipeView.depth === 1
    }
}
