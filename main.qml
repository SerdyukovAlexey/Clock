import QtQuick 2.15
import QtQuick.Window 2.15

import Backend 1.0

Window {
    width: 360
    height: 400
    opacity: 1
    visible: true
    color: "#323232"
    property alias rectangle: rectangle
    title: qsTr("Clock")

    Backend {
        id: backend
    }

    Text {
        id: text1
        x: 20
        y: 20
        width: 229
        height: 30
        text: backend.dateString //qsTr("July 5, 2022")
        font.pixelSize: 28
        color: "#1dc01d"
    }

    Rectangle {
        id: rectangle
        x: 20
        y: 66
        width: 110
        height: 136
        color: "#191919"
        radius: 6

        Text {
            id: text2
            x: 0
            y: 0
            width: 110
            height: 136
            color: "#2aef2a"
            text: qsTr("21")
            font.pixelSize: 96
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Ropa Sans"
        }
    }

    Rectangle {
        id: rectangle1
        x: 140
        y: 66
        width: 108
        height: 136
        color: "#191919"
        radius: 6

        Text {
            id: text3
            x: 0
            y: 0
            width: 110
            height: 136
            color: "#2aef2a"
            text: qsTr("59")
            font.pixelSize: 96
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            lineHeight: 1
            font.family: "Ropa Sans"
        }
    }
}
