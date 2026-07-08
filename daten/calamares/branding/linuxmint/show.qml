/* Diashow während der Installation — sachlich, deutsch/englisch.
 * Gehört zur App "Linux Mint Snapshot" (1:1-Klon-Installation). */
import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Timer {
        interval: 15000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }

    Slide {
        anchors.fill: parent
        Image {
            id: logo1
            source: "logo.png"
            width: 128; height: 128
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -70
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: logo1.bottom; anchors.topMargin: 36
            horizontalAlignment: Text.AlignHCenter
            text: "Linux Mint wird installiert.\nJe nach Rechner dauert das 10 bis 30 Minuten.\n\nLinux Mint is being installed.\nThis takes 10 to 30 minutes depending on your computer."
            font.pixelSize: 20
        }
    }

    Slide {
        anchors.fill: parent
        Image {
            id: logo2
            source: "logo.png"
            width: 128; height: 128
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -70
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: logo2.bottom; anchors.topMargin: 36
            horizontalAlignment: Text.AlignHCenter
            text: "Nach der Installation: Neustart — und wenn der schwarze\nHinweis erscheint, den USB-Stick abziehen und Eingabe drücken.\n\nAfter installation: reboot — when the black prompt appears,\nremove the USB stick and press Enter."
            font.pixelSize: 20
        }
    }

    Slide {
        anchors.fill: parent
        Image {
            id: logo3
            source: "logo.png"
            width: 128; height: 128
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -70
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: logo3.bottom; anchors.topMargin: 36
            horizontalAlignment: Text.AlignHCenter
            text: "Das System wird 1:1 übernommen.\nAngemeldet wird wie gewohnt — mit deinem bisherigen Namen und Passwort.\n\nThe system is taken over 1:1.\nLog in as usual — with your existing name and password."
            font.pixelSize: 20
        }
    }

    function onActivate() { }
    function onLeave() { }
}
