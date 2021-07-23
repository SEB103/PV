import QtQuick 2.15
import QtQuick.Templates 2.15 as T

T.Button {
    id: root
    width: 50
    height: 50

    autoExclusive: false
    checkable: true

    background: buttonBackground

    //contentItem: _contentItem
    Item {
        id: buttonBackground
        width: root.width * 0.8
        height: root.height * 0.8
        anchors.centerIn: root

        Rectangle {
            id: _contentItem
            y: (buttonBackground.height / 2 - height / 2) - height - 5
            width: root.width * 0.8
            height: root.height * 0.12
            radius: 0
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle1
            y: _contentItem.height * 2 + 5
            width: _contentItem.width
            height: _contentItem.height
            radius: _contentItem.radius
            color: _contentItem.color
        }

        Rectangle {
            id: rectangle2
            y: _contentItem.height * 3 + 10
            width: _contentItem.width
            height: _contentItem.height
            radius: _contentItem.radius
            color: _contentItem.color
        }
    }

    //    Connections {
    //        target: root
    //        onClicked: {
    //            root.state = "normal"
    //        }
    //    }
    states: [
        State {
            name: "checked"
            when: root.checked

            PropertyChanges {
                target: _contentItem
                color: "lime"
            }
        },
        State {
            name: "hover"
            when: root.hovered && !root.checked && !root.pressed

            PropertyChanges {
                target: _contentItem
                color: "white"
            }
        },
        State {
            name: "normal"
            when: !root.pressed && !root.checked && !root.hovered

            PropertyChanges {
                target: _contentItem
                color: "#d4d4d4"
            }
        },
        State {
            name: "pressed"
            when: root.pressed && !root.checked

            PropertyChanges {
                target: _contentItem
                color: "cyan"
            }
        }
    ]
}
