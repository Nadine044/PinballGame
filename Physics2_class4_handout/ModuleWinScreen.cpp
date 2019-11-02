#include "Globals.h"
#include "Application.h"
#include "ModuleRender.h"
#include "ModuleSceneIntro.h"
#include "ModuleInput.h"
#include "ModuleTextures.h"
#include "ModuleAudio.h"
#include "ModulePhysics.h"
#include "ModuleFonts.h"
#include "ModuleWinScreen.h"

ModuleWinScreen::ModuleWinScreen(Application* app, bool start_enabled) : Module(app, start_enabled)
{
}

ModuleWinScreen::~ModuleWinScreen()
{}

// Load assets
bool ModuleWinScreen::Start()
{
	LOG("Loading win screen");

	winscreen = App->textures->Load("assets/Background/Background_score.png");

	return true;
}

// Unload assets
bool ModuleWinScreen::CleanUp()
{
	LOG("Unloading player");

	App->textures->Unload(winscreen);

	return true;
}

// Update: draw background
update_status ModuleWinScreen::Update()
{
	if (App->scene_intro->balls_number < 0 && endgame == true)
	{
		App->scene_intro->CleanUp();
		App->win->endgame = false;
	}

	if (App->input->GetKey(SDL_SCANCODE_R) == KEY_DOWN && endgame == true)
	{
		App->scene_intro->Start();
		endgame = false;
	}

	return UPDATE_CONTINUE;
}

