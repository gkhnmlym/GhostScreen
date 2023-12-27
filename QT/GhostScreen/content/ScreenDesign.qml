import QtQuick 2.15
import QtQuick.Controls 2.15
import GhostScreen 1.0

Item {
    width: Constants.width
    height: Constants.height

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 800
        height: 600
        color: "#a51d2d"
    }
    Button {
        id: button
        x: 608
        y: 522
        width: 184
        height: 78
        text: qsTr("HOME")

        onClicked: {
            loadScreenDesign()
        }
    }

    function loadScreenDesign() {
        loader.source = "Screen01.ui.qml"
        rectangle.state = "clicked"
    }

    states: [
        State {
            name: "clicked"
            PropertyChanges {
                target: loader
                source: "Screen01.ui.qml"
            }
        }
    ]

    Loader {
        id: loader
        anchors.fill: parent
    }
}

