// raylib-zig (c) Nikolas Wipper 2023

const rl = @import("raylib");

pub fn main() anyerror!void {
    // Initialization
    //--------------------------------------------------------------------------------------
    const screenWidth = 800;
    const screenHeight = 450;

    rl.initWindow(screenWidth, screenHeight, "raylib-zig [core] example - basic window");
    defer rl.closeWindow(); // Close window and OpenGL context

    rl.setTargetFPS(60); // Set our game to run at 60 frames-per-second
    //--------------------------------------------------------------------------------------

    // Main game loop
    while (!rl.windowShouldClose()) { // Detect window close button or ESC key
        // Update
        //----------------------------------------------------------------------------------
        // TODO: Update your variables here
        //----------------------------------------------------------------------------------

        // Draw
        //----------------------------------------------------------------------------------
        rl.beginDrawing();
        defer rl.endDrawing();

        rl.clearBackground(rl.Color.red);

        rl.drawText("Code Synergy", 190, 200, 20, rl.Color.black);

        // Circle shapes and lines
        rl.drawCircle(screenWidth / 5, 120, 35, rl.Color.dark_blue);
        rl.drawCircleGradient(screenWidth / 5, 220, 60, rl.Color.green, rl.Color.sky_blue);
        rl.drawCircleLines(screenWidth / 5, 340, 80, rl.Color.dark_blue);
        //----------------------------------------------------------------------------------
    }
}
