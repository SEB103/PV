import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Item {
    id: _root
    width: 120
    height: 600

    Pane {
        anchors.fill: parent
    }

    Column {
        id: _column
        spacing: _root.width > 120 ? 4 : 1
        anchors {
            left: parent.left
            leftMargin: 4
            bottom: parent.bottom
            bottomMargin: 0
            top: parent.top
            topMargin: 0
            right: parent.right
            rightMargin: 4
        }

        Row {
            id: _row
            spacing: 0
            anchors.left: _column.left
            anchors.leftMargin: 0

            CRoundButton {
                id: _buttonLeft
                text: "\ue851" // icon-left-open
                font.pointSize: {
                    let w = Math.round(_root.width * 12 / 100)
                    return w > 1 ? w : 1
                }
                width: Math.round(_root.width / 2 - 10)
                height: width
            }
            Label {
                height: _buttonLeft.height
                text: "1"
                font.pixelSize: 22
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
            }
            CRoundButton {
                id: _buttonRight
                text: "\ue852" // icon-right-open
                font.pointSize: {
                    let w = Math.round(_root.width * 12 / 100)
                    return w > 1 ? w : 1
                }
                width: Math.round(_root.width / 2 - 10)
                height: width
            }
        }

        Repeater {
            model: 8
            anchors.top: _row.bottom
            CButton {
                id: _conButton
                text: qsTr("Button " + index)
                topInset: 0
                leftInset: 2
                rightInset: 2
                bottomInset: 4
                width: parent.width
                height: parent.width / 2
            }
        }

        CEmStopButton {
            id: _emergencyStopButton
            anchors.horizontalCenter: parent.horizontalCenter
            width: Math.round(parent.width * 0.85)
        }

        CButton {
            id: _parameterButton
            text: qsTr("Paremeters")
            topInset: 4
            leftInset: 2
            rightInset: 2
            bottomInset: 4
            width: parent.width
            height: parent.width / 2
        }
    }
}
