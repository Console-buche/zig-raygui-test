const rl = @cImport({
    @cInclude("raylib.h");
    @cInclude("raygui.h");
});

pub fn main() void {
    rl.InitWindow(1280, 720, "yeet");
    defer rl.CloseWindow();

    rl.SetTargetFPS(60);

    while (!rl.WindowShouldClose()) {
        rl.BeginDrawing();

        rl.ClearBackground(rl.RAYWHITE);

        if (rl.GuiButton(
            rl.Rectangle{
                .x = 0,
                .y = 0,
                .width = 100,
                .height = 100,
            },
            "yeet",
        ) == 1) {
            // ...
        }

        rl.EndDrawing();
    }
}
