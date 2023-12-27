import QtQuick 6.2
import QtQuick.Controls 6.2
import GhostScreen

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#102330"

    states: [
        State {
            name: "clicked"
            PropertyChanges {
                target: loader
                source: "ScreenDesign.qml"
            }
        }
    ]

    Loader {
        id: loader
        anchors.fill: parent
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        z: 1

        Rectangle {
            id: rectangle1
            x: 752
            y: 0
            width: 48
            height: 600
            color: "#000000"
        }

        Label {
            id: label
            x: 343
            y: 196
            width: 114
            height: 73
            color: "#c2c2c2"
            text: qsTr("132")
            font.pointSize: 50
            z: 4
            styleColor: "#c2c2c2"
        }

        Label {
            id: label1
            x: 343
            y: 306
            width: 114
            height: 73
            color: "#c2c2c2"
            text: qsTr("777")
            z: 4
            styleColor: "#c2c2c2"
            font.pointSize: 50
        }

        Text {
            id: text2
            x: 374
            y: 379
            width: 52
            height: 38
            color: "#c2c2c2"
            text: qsTr(" km")
            font.pixelSize: 30
        }

        BusyIndicator {
            id: busyIndicator
            x: 8
            y: 8
        }
    }
    property bool lightsOn: false

    Button {
        id: lightbutton
        x: 8
        y: 512
        width: 80
        height: 80
        visible: true
        text: qsTr("Button")
        flat: true
        opacity: 0
        onClicked: {
            lightsOn = !lightsOn;
            lights_on.toggleZValue();
            lights_off.toggleZValue();
        }
    }

    Image {
        id: lights_on
        x: 8
        y: 512
        source: "images/lights_on.png"
        z: lightsOn ? 1 : 0
        visible: lightsOn
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: lights_off
        x: 8
        y: 512
        source: "images/lights_off.png"
        z: lightsOn ? 0 : 1
        visible: !lightsOn
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: info
        x: 752
        y: 54
        source: "images/info.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: settings
        x: 752
        y: 8
        source: "images/settings.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: top_curtain_drag
        x: 653
        y: 276
        source: "images/top_curtain_drag.png"
        rotation: 90
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: nav_nodir
        x: 8
        y: 426
        source: "images/nav_nodir.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: fuelIconOn
        x: 108
        y: 523
        source: "icons/fuelIconOn.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: seatbeltIcon
        x: 182
        y: 517
        source: "icons/seatbeltIcon.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: speedometer_needle_ring_195_90
        x: 254
        y: 154
        z: 1
        source: "assets/speedometer_needle_ring_195_90.png"
        fillMode: Image.PreserveAspectFit
        RotationAnimation on rotation {
            loops: Animation.Infinite
            from: 0
            to: 360
        }
    }

    Image {
        id: speed_dial_195_151
        x: 263
        y: 162
        opacity: 0.5
        z: 1
        source: "assets/speed_dial_195_151.png"
        scale: 1
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: outer_ring_195_48
        x: 268
        y: 168
        z: 1
        source: "assets/outer_ring_195_48.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: absIcon
        x: 243
        y: 522
        source: "icons/absIcon.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: iceIcon
        x: 339
        y: 521
        source: "icons/iceIcon.png"
        fillMode: Image.PreserveAspectFit
    }
    property int lSignalZValue: 1
    property int rSignalZValue: 0
    // lSignal image
    Image {
        id: lSignal
        x: 210
        y: 283
        source: "images/lSignal.png"
        fillMode: Image.PreserveAspectFit
        z: lSignalZValue

        Timer {
            id: lSignalTimer
            interval: 1000 // 1 second interval
            repeat: false
            running: false
            onTriggered: {
                lSignalZValue = 0;
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                lSignalTimer.running = true;
            }
        }
    }

    // rSignal image
    Image {
        id: rSignal
        x: 552
        y: 283
        source: "images/rSignal.png"
        fillMode: Image.PreserveAspectFit
        z: rSignalZValue

        Timer {
            id: rSignalTimer
            interval: 1000 // 1 second interval
            repeat: false
            running: false
            onTriggered: {
                rSignalZValue = 2;
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                rSignalTimer.running = true;
            }
        }
    }

    Text {
        id: text1
        x: 363
        y: 265
        width: 75
        height: 38
        color: "#c2c2c2"
        text: qsTr(" km/h")
        font.pixelSize: 30
    }
}
