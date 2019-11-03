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

	if (App->input->GetKey(SDL_SCANCODE_R) == KEY_DOWN && endgame == true)
	{
		App->scene_intro->score = 0;
		App->scene_intro->balls_number = 3;

		// Play fx one time
		App->scene_intro->yellow_bird_fx = false;
		App->scene_intro->green_bird_fx = false;
		App->scene_intro->orange_bird_fx = false;
		App->scene_intro->blue_bird_fx = false;
		App->scene_intro->pink_bird_fx = false;
		App->scene_intro->red_bird_fx = false;
		App->scene_intro->ninja_one_fx = false;
		App->scene_intro->girl_one_fx = false;
		App->scene_intro->square1_one_fx = false;
		App->scene_intro->square2_one_fx = false;
		App->scene_intro->actred1_one_fx = false;
		App->scene_intro->actred2_one_fx = false;
		App->scene_intro->actred3_one_fx = false;
		App->scene_intro->actred4_one_fx = false;
		App->scene_intro->actred5_one_fx = false;
		App->scene_intro->actred6_one_fx = false;
		App->scene_intro->actred7_one_fx = false;
		App->scene_intro->actred8_one_fx = false;
		App->scene_intro->spring_fx = false;

		// Make interactive appear
		App->scene_intro->yellowbird_on = false;
		App->scene_intro->greenbird_on = false;
		App->scene_intro->orangebird_on = false;
		App->scene_intro->bluebird_on = false;
		App->scene_intro->pinkbird_on = false;
		App->scene_intro->redbird_on = false;
		App->scene_intro->ninja_on = false;
		App->scene_intro->girl_on = false;
		App->scene_intro->square1_on = false;
		App->scene_intro->square2_on = false;
		App->scene_intro->actred1_on = false;
		App->scene_intro->actred2_on = false;
		App->scene_intro->actred3_on = false;
		App->scene_intro->actred4_on = false;
		App->scene_intro->actred5_on = false;
		App->scene_intro->actred6_on = false;
		App->scene_intro->actred7_on = false;
		App->scene_intro->actred8_on = false;

		// Bumpers
		App->scene_intro->bumper1_on = false;
		App->scene_intro->bumper2_on = false;
		App->scene_intro->littlebumper1_on = false;
		App->scene_intro->littlebumper2_on = false;
		App->scene_intro->littlebumper3_on = false;
		App->scene_intro->littlebumper4_on = false;
		App->scene_intro->littlebumper5_on = false;
		App->scene_intro->littlebumper6_on = false;
		App->scene_intro->littlebumper7_on = false;

		// Tunnel bonus
		App->scene_intro->lefttunnelbonus_on = false;

		// Dead
		App->scene_intro->dead_on = false;

		App->scene_intro->bonusbird = false;
		App->scene_intro->bonussquare = false;
		App->scene_intro->bonusninjagirl = false;
		endgame = false;
		prevscore = false;
	}

	return UPDATE_CONTINUE;
}

