import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: _windowBackground
    width: parent.width // 1600
    height: parent.height //900

    SwipeView {
        id: swipeView
        width: _windowBackground.width
        height: _windowBackground.height
        anchors {
            margins: 1
            top: _windowBackground.top
            left: _windowBackground.left
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
                visible: (swipeView.currentIndex === 0) ? true : false
            }
        }

        Item {
            Rectangle {
                id: rectangle2
                width: swipeView.width
                height: swipeView.height
                color: "green"
                visible: (swipeView.currentIndex === 1) ? true : false
            }
        }

        Item {
            Rectangle {
                id: rectangle3
                width: swipeView.width
                height: swipeView.height
                color: "blue"
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

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}
}
##^##*/

