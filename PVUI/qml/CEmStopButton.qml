import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Item {
    id: _root
    width: 100
    height: width

    Rectangle {
        id: _rectangle
        width: Math.round(_root.width * 0.8)
        height: width
        radius: Math.round(width / 6)
        color: _cRoundButton.checked ? "red" : _cRoundButton.hovered
                                       || _cRoundButton.visualFocus ? "gold" : "darkgoldenrod"
        anchors.centerIn: _root
        anchors.margins: 4

        ColorAnimation on color {
            running: _cRoundButton.checked
            from: "red"
            to: "darkred"
            duration: 1000
            loops: Animation.Infinite
        }

        Column {
            id: _column
            spacing: 0
            anchors.centerIn: _rectangle
            anchors.margins: 2

            Text {
                id: text1
                text: qsTr("EMERGENCY")
                font.pixelSize: Math.round(_rectangle.width * 12 / 100)
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                color: _cRoundButton.checked ? "yellow" : "black"
                ColorAnimation on color {
                    running: _cRoundButton.checked
                    from: "yellow"
                    to: "darkred"
                    duration: 1000
                    loops: Animation.Infinite
                }
            }

            CRoundButton {
                id: _cRoundButton
                text: !_cRoundButton.checked ? "\uf28e" : "\uf28d" // icon-Stop
                width: Math.round(_rectangle.width * 0.6)
                height: Math.round(_rectangle.width * 0.6)
                checkable: true
                font.pointSize: {
                    let w = Math.round(_rectangle.width * 38 / 100)
                    return w > 1 ? w : 1
                }

                anchors.horizontalCenter: parent.horizontalCenter
                Material.foreground: _cRoundButton.checked ? "red" : _cRoundButton.hovered
                                                             || _cRoundButton.visualFocus ? "red" : "darkred"
                Material.background: !_cRoundButton.checked ? "transparent" : "yellow"
                ColorAnimation on Material.foreground {
                    running: _cRoundButton.checked
                    from: "red"
                    to: "darkred"
                    duration: 1000
                    loops: Animation.Infinite
                }
                ColorAnimation on Material.background {
                    running: _cRoundButton.checked
                    from: "yellow"
                    to: "darkred"
                    duration: 1000
                    loops: Animation.Infinite
                }
            }
            Text {
                id: text2
                text: qsTr("STOP")
                font.pixelSize: Math.round(_rectangle.width * 12 / 100)
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                color: _cRoundButton.checked ? "yellow" : "black"
                ColorAnimation on color {
                    running: _cRoundButton.checked
                    from: "yellow"
                    to: "darkred"
                    duration: 1000
                    loops: Animation.Infinite
                }
            }
        }
    }
}
