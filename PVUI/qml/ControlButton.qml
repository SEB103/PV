import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
  id: _button

  topInset: 4
  leftInset: 2
  rightInset: 2
  bottomInset: 0
  width: buttonsPanel.width
  height: buttonsPanel.width / 2

  //    text: qsTr("Button")

  //    contentItem: Text {
  //        text: _button.text
  //        font: _button.font
  //        opacity: enabled ? 1.0 : 0.3
  //        color: _button.down ? "#17a81a" : "#21be2b"
  //        horizontalAlignment: Text.AlignHCenter
  //        verticalAlignment: Text.AlignVCenter
  //        elide: Text.ElideRight
  //    }

  //    background: Rectangle {
  //        implicitWidth: 100
  //        implicitHeight: 40
  //        opacity: enabled ? 1 : 0.3
  //        border.color: _button.down ? "#17a81a" : "#21be2b"
  //        border.width: 1
  //        radius: 2
  //    }
}
