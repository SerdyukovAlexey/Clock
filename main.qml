import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 360
    height: 400
    visible: true
    color: "#292929"
    title: qsTr("Clock")

    Text {
        id: text1
        x: 32
        y: 34
        width: 229
        height: 30
        text: qsTr("July 5, 2022")
        font.pixelSize: 12
        color: "#1dc01d"
    }
}
