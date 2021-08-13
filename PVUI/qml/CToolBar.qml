import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ToolBar {
    id: _root
    leftPadding: 8

    CToolButton {
        id: _menuButton
        text: "\uF0C9" // icon-menu
        icon.color: "red"
        font.family: "fontello"
        onPressed: drawer.open()
        checkable: true
    }
    ToolSeparator {
        id: _menuSeparator
        anchors.left: _menuButton.right
    }

    CMessageLabel {
        width: _root.width / 2
        message: qsTr("Störung Kommunikation zur SPS (Siemens S7)")
        msgType: "critical"
        anchors.left: _menuSeparator.right
        anchors.right: _deviceButton.right
    }

    CButton {
        id: _deviceButton
        text: qsTr("Device")
        width: parent.width / 11
        anchors.right: parent.right
        anchors.rightMargin: 4
    }
}
