import QtQuick 2.12
import QtQuick.Templates 2.12 as T
import QtQuick.Controls 2.12
import QtQuick.Controls.impl 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Material.impl 2.12

T.ToolButton {
    id: control

    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             implicitContentHeight + topPadding + bottomPadding)

    padding: 6
    spacing: 6

    icon.width: 24
    icon.height: 24
    icon.color: !enabled ? Material.hintTextColor : checked
                           || highlighted ? Material.accent : Material.foreground

    font.pointSize: 14
    font.weight: Font.Bold

    contentItem: IconLabel {
        id: _contentItem
        spacing: control.spacing
        mirrored: control.mirrored
        display: control.display

        icon: control.icon
        text: control.text
        font: control.font
        color: !control.enabled ? control.Material.hintTextColor : control.checked
                                  || control.highlighted ? control.Material.accent : control.Material.foreground
    }

    background: Ripple {
        implicitWidth: control.Material.touchTarget
        implicitHeight: control.Material.touchTarget

        readonly property bool square: control.contentItem.width <= control.contentItem.height

        x: (parent.width - width) / 2
        y: (parent.height - height) / 2
        clip: !square
        width: square ? parent.height / 2 : parent.width
        height: square ? parent.height / 2 : parent.height
        pressed: control.pressed
        anchor: control
        active: control.enabled && (control.down || control.visualFocus
                                    || control.hovered)
        color: control.Material.rippleColor //"#3300ffff"
    }

    states: [
        State {
            name: "checked"
            when: control.checked

            PropertyChanges {
                target: _contentItem
                color: "lime"
                font.pointSize: 14
            }
        },
        State {
            name: "pressed"
            when: control.pressed

            PropertyChanges {
                target: _contentItem
                font.pointSize: 13
            }
        }
    ]
}

/*
ToolButton {
    id: root

    //  property alias colorText: Material.foreground
    Material.foreground: "red"
}
*/


/*
T.ToolButton {

    id: control
    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             implicitContentHeight + topPadding + bottomPadding)
    padding: 6
    spacing: 6
    icon.width: 40
    icon.height: 40
    layer.effect: toolButton

    icon.color: visualFocus ? control.palette.highlight : control.palette.buttonText

    property alias internalText: contentButton

    contentItem: IconLabel {
        id: contentButton
        spacing: control.spacing
        mirrored: control.mirrored
        display: control.display

        icon: control.icon
        text: control.text
        font: control.font
        color: control.visualFocus ? control.palette.highlight : control.palette.buttonText
    }

    background: Rectangle {
        implicitWidth: 40
        implicitHeight: 40
        radius: 20

        opacity: control.down ? 1.0 : 0.5
        color: control.down || control.checked
               || control.highlighted ? control.palette.mid : control.palette.button
    }
}
*/


/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

