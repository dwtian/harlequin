import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.0

import splash.fish.harlequin 1.0

ApplicationWindow
{
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Harlequin")
    property url sourceUrl: "file:///Users/duncan/code/personal/c++/harlequin/images/woman.jpg"
    property url clutUrl: "file:///Users/duncan/code/personal/c++/harlequin/images/Kodak_Kodachrome_64.png"

    Column {
        anchors.fill: parent
        ToolBar {
            id: toolBar
            Row {
                ComboBox {
                    id: colourSpaceCombo
                    currentIndex: 0
                    model: ListModel {
                        id: spaceItems
                        ListElement { text: "HSP"; space: ColourWheel.HSP }
                        ListElement { text: "LAB"; space: ColourWheel.LAB }
                    }
                }
            }
        }
        
        ColourWheel {
            id: wheel
            height: parent.height - y
            width: wheel.height
            brightness: 70
            space: spaceItems.get(colourSpaceCombo.currentIndex).space
            Net {
                anchors.fill: parent
            }
        }
    }
    
    /* GridLayout { */
    /*     visible: false */
    /*     id: grid */
    /*     columns: 2 */
    /*     anchors.fill: parent */

    /*     TextureImage { */
    /*         id: source */
    /*         sourceUrl: root.sourceUrl */
    /*         Layout.fillHeight: true */
    /*         Layout.fillWidth: true */
    /*         onSourceUrlChanged: root.sourceUrl = sourceUrl */
    /*     } */

    /*     TextureImage { */
    /*         id: clut */
    /*         sourceUrl: root.clutUrl */
    /*         Layout.fillHeight: true */
    /*         Layout.fillWidth: true */
    /*         onSourceUrlChanged: root.clutUrl = sourceUrl */
    /*     } */
        
    /*     ResultImage { */
    /*         Layout.fillHeight: true */
    /*         Layout.fillWidth: true */
    /*         Layout.columnSpan: 2 */
    /*         sourceUrl: root.sourceUrl */
    /*         clutUrl: root.clutUrl */
    /*         sourceWidth: source.paintedWidth */
    /*         sourceHeight: source.paintedHeight */
    /*    } */
    /* } */
}
