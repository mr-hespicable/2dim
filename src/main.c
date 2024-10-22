#include <SDL3/SDL.h>
#include <SDL3/SDL_events.h>
#include <SDL3/SDL_mouse.h>
#include <SDL3/SDL_oldnames.h>
#include <SDL3/SDL_pixels.h>
#include <SDL3/SDL_rect.h>
#include <SDL3/SDL_render.h>
#include <SDL3/SDL_video.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdio.h>
#include <

const int WINDOW_WIDTH = 512;
const int WINDOW_HEIGHT = 284;

SDL_Window *window;
SDL_Renderer *renderer;

struct Point {
    float coordinates[3]; // x, y, z
};

struct Triangle {
    struct Point points[3]; // p1, p2, p3
};

static bool init(int argc, char *argv[]) {
    // init sdl
    if (SDL_Init(SDL_INIT_VIDEO) == 0) {
        printf("SDL_INIT_ERROR: %s\n", SDL_GetError());
        return true;
    }

    window = SDL_CreateWindow("game", WINDOW_WIDTH, WINDOW_HEIGHT,
                              SDL_WINDOW_RESIZABLE);
    renderer = SDL_CreateRenderer(window, SDL_GetRenderDriver(1));

    if (window == NULL) {
        printf("SDL_CreateWindow ERROR: %s\n", SDL_GetError());
        SDL_Quit();
        return true;
    }

    return true;
}

void shutdown() {
    if (window != NULL) {
        SDL_DestroyWindow(window);
        window = NULL;
    }

    if (renderer != NULL) {
        SDL_DestroyRenderer(renderer);
        renderer = NULL;
    }
}

int main(int argc, char *argv[]) {
    if (init(argc, argv) == false) {
        shutdown();
    }

    bool running = true;
    while (running) {
        SDL_Event event;
        while (SDL_PollEvent(&event)) {
            switch (event.type) {
            case SDL_EVENT_QUIT:
                running = false;
                break;
            }
        }

        float mouse_x, mouse_y;

        SDL_SetRenderDrawColor(renderer, 0, 0, 0, SDL_ALPHA_OPAQUE);
        SDL_RenderClear(renderer);
        SDL_FRect rect = {mouse_x - 50.0f, mouse_y - 50.0f, 100.0f, 100.0f};

        SDL_SetRenderDrawColor(renderer, 0, 255, 0, SDL_ALPHA_OPAQUE);
        SDL_RenderFillRect(renderer, &rect);

        SDL_GetMouseState(&mouse_x, &mouse_y);

        SDL_RenderPresent(renderer);
    }

    // SDL_Quit();
    shutdown();

    // struct Point p1 = {{0.0f, 0.0f, 0.0f}};
    // struct Point p2 = {{1.0f, 0.0f, 0.0f}};
    // struct Point p3 = {{0.0f, 1.0f, 0.0f}};

    // struct Triangle tri = {{p1, p2, p3}};

    printf("\n");
    return 0;
}
