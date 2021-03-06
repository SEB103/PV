import QtQuick 2.15
import QtQuick.Templates 2.15 as T
import QtQuick.Controls 2.15
import QtQuick.Controls.impl 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Controls.Material.impl 2.15


/*
Button {
    id: _button

    topInset: 4
    leftInset: 2
    rightInset: 2
    bottomInset: 0
    width: parent.width
    height: parent.width / 2

    //    text: qsTr("Button")
    contentItem: Text {
        text: _button.text
        font: _button.font
        opacity: enabled ? 1.0 : 0.3
        color: _button.down ? "#17a81a" : "#21be2b"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    //    background: Rectangle {
    //        implicitWidth: 100
    //        implicitHeight: 40
    //        opacity: enabled ? 1 : 0.3
    //        border.color: _button.down ? "#17a81a" : "#21be2b"
    //        border.width: 1
    //        radius: 2
    //    }
}
*/
T.Button {
    id: control

    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             implicitContentHeight + topPadding + bottomPadding)

    topInset: 6
    bottomInset: 6

    padding: 12
    horizontalPadding: padding - 4
    spacing: 6

    icon.width: 24
    icon.height: 24
    icon.color: !enabled ? Material.hintTextColor : flat
                           && highlighted ? Material.accentColor : highlighted ? Material.primaryHighlightedTextColor : Material.foreground

    Material.elevation: flat ? control.down
                               || control.hovered ? 2 : 0 : control.down ? 8 : 2
    Material.background: flat ? "transparent" : undefined

    contentItem: IconLabel {
        spacing: control.spacing
        mirrored: control.mirrored
        display: control.display

        icon: control.icon
        text: control.text
        font: control.font
        color: !control.enabled ? control.Material.hintTextColor : control.flat
                                  && control.highlighted ? control.Material.accentColor : control.highlighted ? control.Material.primaryHighlightedTextColor : control.Material.foreground
    }

    background: Rectangle {
        implicitWidth: 64
        implicitHeight: control.Material.buttonHeight

        radius: 2
        color: !control.enabled ? control.Material.buttonDisabledColor : control.highlighted ? control.Material.highlightedButtonColor : control.Material.buttonColor

        PaddedRectangle {
            y: parent.height - 4
            width: parent.width
            height: 4
            radius: 2
            topPadding: -2
            clip: true
            visible: control.checkable && (!control.highlighted || control.flat)
            color: control.checked
                   && control.enabled ? control.Material.accentColor : control.Material.secondaryTextColor
        }

        // The layer is disabled when the button color is transparent so you can do
        // Material.background: "transparent" and get a proper flat button without needing
        // to set Material.elevation as well
        layer.enabled: control.enabled && control.Material.buttonColor.a > 0
        layer.effect: ElevationEffect {
            elevation: control.Material.elevation
        }

        Ripple {
            clipRadius: 2
            width: parent.width
            height: parent.height
            pressed: control.pressed
            anchor: control
            active: control.down || control.visualFocus || control.hovered
            color: control.flat
                   && control.highlighted ? control.Material.highlightedRippleColor : control.Material.rippleColor
        }
    }
}
