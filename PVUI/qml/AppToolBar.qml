import QtQuick 2.15
import QtQuick.Controls 2.15

ToolBar {
    leftPadding: 8

    Flow {
        id: flow
        width: parent.width

        Row {
            id: menuRow
            ToolButton {
                id: menuButton
                text: "\uF0C9" // icon-folder-open-empty
                icon.color: "red"
                font.family: "fontello"
                onClicked: openDialog.open()
            }
            ToolSeparator {
                contentItem.visible: menuRow.y === fileRow.y
            }
        }

        Row {
            id: fileRow
            CcButtonMenu {
                id: openButton
                width: 60
                height: 60
                onClicked: openDialog.open()
            }
            ToolSeparator {
                contentItem.visible: fileRow.y === editRow.y
            }
        }
        Row {
            id: editRow
            ToolButton {
                id: copyButton
                text: "\uF0C5" // icon-docs
                font.family: "fontello"
                focusPolicy: Qt.TabFocus
                enabled: textArea.selectedText
                onClicked: textArea.copy()
            }
            ToolButton {
                id: cutButton
                text: "\uE802" // icon-scissors
                font.family: "fontello"
                focusPolicy: Qt.TabFocus
                enabled: textArea.selectedText
                onClicked: textArea.cut()
            }
            ToolButton {
                id: pasteButton
                text: "\uF0EA" // icon-paste
                font.family: "fontello"
                focusPolicy: Qt.TabFocus
                enabled: textArea.canPaste
                onClicked: textArea.paste()
            }
            ToolSeparator {
                contentItem.visible: editRow.y === formatRow.y
            }
        }
    }
}
