import QtQuick 2.7
import "grid.js" as MeshGrid

Item {
    id: net
    property int gridSize: 3
    property int parentHeight: parent.height
    property var graph


    function updateNet() {
        children = [];
        MeshGrid.createGrid(gridSize, parentHeight, parentHeight, net);
    }

    Component.onCompleted: {
        updateNet();
    }

    onGridSizeChanged: updateNet()

    onParentHeightChanged: updateNet()
}