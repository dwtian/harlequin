import QtQuick 2.12
import QtQuick.Dialogs 1.3

Item {
    property url sourceUrl
    property real paintedWidth: sourceImage.paintedWidth
    property real paintedHeight: sourceImage.paintedHeight

    Image {
        id: sourceImage
        anchors.fill: parent
        source: sourceUrl
        fillMode: Image.PreserveAspectFit
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            dialog.visible = true;
        }
    }

    FileDialog {
        id: dialog
        folder: shortcuts.home
        Component.onCompleted: visible = false
        onAccepted: {
            sourceUrl = fileUrl
        }
    }
}
