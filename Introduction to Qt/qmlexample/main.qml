import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    property alias sender: sender
    title: qsTr("UI Creating")

    Background {
        id: background
        anchors.fill: parent
        target: sender

        Sender {
            id: sender
            y: 135
            buttonColor: "#0000ff"
            displayText: "Sender"
            anchors.left: parent.left
            anchors.leftMargin: 60
            target: receiver
        }

        Receiver {
            id: receiver
            x: 390
            y: 135
            buttonColor: "#008000"
            displayText: "Receive"
            anchors.right: parent.right
            anchors.rightMargin: 60
            width: sender.width
        }
    }
}
