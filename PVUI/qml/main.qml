import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.12
import Imports.PVUI 1.0

ApplicationWindow {
    id: root
    width: 1920
    height: 1080
    minimumWidth: 400
    minimumHeight: 300
    visible: true
    title: qsTr("Process visualization ")

    menuBar: AppMenuBar {
        id: _appMenuBar
    }
    header: AppToolBar {
        id: _appToolBbar
    }

    Item {
        id: _windowBackground
        width: root.width
        height: root.height

        //        color: "red"
        anchors {
            margins: 5
            left: parent.left
            bottom: parent.bottom
            top: _appToolBbar.bottom
            right: _controlButtonsPanel.left
        }

        ToolBar {
            id: _toolBar
            x: 0
            y: 0
            width: 70
            height: _windowBackground.height

            CcButtonMenu {
                id: ccButtonMenu
                x: 11
                y: 24
            }
        }

        SwipeView {
            id: swipeView
            width: _windowBackground.width - _toolBar.width - 10
            height: _windowBackground.height - 10
            anchors {
                margins: 5
                top: _windowBackground.top
                left: _toolBar.right
                right: _windowBackground.right
                bottom: _windowBackground.bottom
            }

            orientation: Qt.Horizontal
            currentIndex: 0

            Item {
                Rectangle {
                    id: rectangle1
                    width: swipeView.width
                    height: swipeView.height
                    color: "yellow"
                    anchors.centerIn: swipeView
                    visible: (swipeView.currentIndex === 0) ? true : false
                }
            }

            Item {
                Rectangle {
                    id: rectangle2
                    width: swipeView.width
                    height: swipeView.height
                    color: "green"
                    anchors.centerIn: swipeView
                    visible: (swipeView.currentIndex === 1) ? true : false
                }
            }

            Item {
                Rectangle {
                    id: rectangle3
                    width: swipeView.width
                    height: swipeView.height
                    color: "blue"
                    anchors.centerIn: swipeView
                    visible: (swipeView.currentIndex === 2) ? true : false
                }
            }
        }
        PageIndicator {
            id: indicator

            count: swipeView.count
            currentIndex: swipeView.currentIndex

            anchors.bottom: swipeView.bottom
            anchors.horizontalCenter: swipeView.horizontalCenter
        }
    }

    ControlButtonsPanel {
        id: _controlButtonsPanel
    }

    Drawer {
        id: drawer
        y: _appMenuBar.height + _appToolBbar.height + 5
        width: Math.min(root.width, root.height) / 3
        height: _windowBackground.height
        interactive: true //swipeView.depth === 1

        ListView {
            id: listView

            focus: true
            currentIndex: -1
            anchors.fill: parent

            delegate: ItemDelegate {
                width: listView.width
                text: model.title
                highlighted: ListView.isCurrentItem
                onClicked: {
                    //                    listView.currentIndex = index
                    //                    stackView.push(model.source)
                    drawer.close()
                }
            }

            model: ListModel {
                ListElement {
                    title: "BusyIndicator"
                }
                ListElement {
                    title: "Button"
                }
                ListElement {
                    title: "CheckBox"
                }
                ListElement {
                    title: "ComboBox"
                }
                ListElement {
                    title: "DelayButton"
                }
                ListElement {
                    title: "Dial"
                }
                ListElement {
                    title: "Dialog"
                }
                ListElement {
                    title: "Delegates"
                }
                ListElement {
                    title: "Frame"
                }
                ListElement {
                    title: "GroupBox"
                }
                ListElement {
                    title: "PageIndicator"
                }
                ListElement {
                    title: "ProgressBar"
                }
                ListElement {
                    title: "RadioButton"
                }
                ListElement {
                    title: "RangeSlider"
                }
                ListElement {
                    title: "ScrollBar"
                }
                ListElement {
                    title: "ScrollIndicator"
                }
                ListElement {
                    title: "Slider"
                }
            }

            ScrollIndicator.vertical: ScrollIndicator {}
        }
    }
} // ApplicationWindow//    CcButtonMenu {//        id: _ccbuttonmenu//        x: _mainwindow.width / 2 - width / 2//        y: _mainwindow.height / 2 - height / 2//    }
