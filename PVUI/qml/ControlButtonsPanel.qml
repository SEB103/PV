import QtQuick 2.0

Column {
  id: buttonsPanel
  anchors.right: parent.right
  spacing: 1
  width: parent.width / 11

  ControlButton {
    id: button_0
    text: qsTr("Button_0")
  }
  ControlButton {
    id: button_1
    text: qsTr("Button_1")
  }
  ControlButton {
    id: button_2
    text: qsTr("Button_2")
  }
  ControlButton {
    id: button_3
    text: qsTr("Button_3")
  }
  ControlButton {
    id: button_4
    text: qsTr("Button_4")
  }
  ControlButton {
    id: button_5
    text: qsTr("Button_5")
  }
  ControlButton {
    id: button_6
    text: qsTr("Button_6")
  }
  ControlButton {
    id: button_7
    text: qsTr("Button_7")
  }
  ControlButton {
    id: button_8
    text: qsTr("Button_8")
  }
  ControlButton {
    id: button_9
    text: qsTr("Button_9")
  }

  //  Repeater {
  //    model: 10
  //    ControlButton {
  //      id: conBut
  //      text: qsTr("Button " + index)
  //    }
  //  }
}
