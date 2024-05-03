#include <iostream>
#include "input.h"
#include "render.h"
#include "gui.h"

int main() {
    Input input;
    Render render;
    GUI gui;
    bool gameRunning = true;
    
    while (gameRunning) {
        input.update();
        gui.updateGUI();
        gui.renderGUI(render);
        gameRunning = false;
    }

    return 0;
}
