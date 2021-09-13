import QtQuick 2.4

Item {
    width: 200
    height: 200
    property alias buttonColor: button.color
    property alias displayText: display.text
    property alias buttonRadius: button.radius

    Rectangle {
        id: button
        color: "#710909"
        radius: width * 0.5
        anchors.fill: parent

        Text {
            id: display
            x: 83
            y: 60
            color: "#fbfbfb"
            text: qsTr("Text")
            textFormat: Text.PlainText
            elide: Text.ElideNone
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 24
        }
    }
}
