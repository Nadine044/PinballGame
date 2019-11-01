#include "Globals.h"
#include "Application.h"
#include "ModuleRender.h"
#include "ModuleSceneIntro.h"
#include "ModuleInput.h"
#include "ModuleTextures.h"
#include "ModuleAudio.h"
#include "ModulePhysics.h"
#include "ChainCoords.h"

#define UP_OFFSET 380
#define UP_CAMERA_OFFSET 0
#define DOWN_OFFSET 800
#define DOWN_CAMERA_OFFSET -412

ModuleSceneIntro::ModuleSceneIntro(Application* app, bool start_enabled) : Module(app, start_enabled)
{
	balls = background = launcherText = HUD = NULL;
	sensed = false;
}

ModuleSceneIntro::~ModuleSceneIntro()
{}

// Load assets
bool ModuleSceneIntro::Start()
{
	LOG("Loading Intro assets");
	bool ret = true;

	App->renderer->camera.x = 0;
	App->renderer->camera.y = 0;

	bouncerSpeed = 0.0f;

	// Load textures
	balls = App->textures->Load("assets/Player_control/ball.png"); 
	bonus_fx = App->audio->LoadFx("pinball/bonus.wav");
	background = App->textures->Load("assets/Background/Background_finished.png");
	launcherText = App->textures->Load("assets/Player_control/bouncer.png");
	HUD = App->textures->Load("assets/HUD/HUD.png");

	// Create colliders map
	Physbackground = App->physics->CreateChain(0, 0, backgroundChain, 144);
	Physbackground->body->SetType(b2_staticBody);

	// Create colliders bouncer
	launcher = App->physics->CreateLauncher(585 + 14.5, 999 + 90.5 - 15.5, 29, 150, launcher_joint);
	launcher->listener = this;

	// Create ball

	ball = App->physics->CreateCircle(585, 800, 14);
	ball->listener = this;

	return ret;
}

// Load assets
bool ModuleSceneIntro::CleanUp()
{
	LOG("Unloading Intro scene");

	App->textures->Unload(balls);
	App->textures->Unload(background);
	App->textures->Unload(launcherText);
	App->textures->Unload(HUD);

	return true;
}

// Update: draw background
update_status ModuleSceneIntro::Update()
{
	/*if(App->input->GetKey(SDL_SCANCODE_1) == KEY_DOWN)
	{
		ball=App->physics->CreateCircle(App->input->GetMouseX(), App->input->GetMouseY(), 15);
		ball.getLast()->data->listener = this;
	}*/

	// All draw functions ------------------------------------------------------

	// Get ball position

	int x, y;
	ball->GetPosition(x, y);
	rotate = ball->GetRotation();
	App->renderer->camera.y = -y + (SCREEN_HEIGHT * 0.5);


	if (y < UP_OFFSET)
	{
		App->renderer->camera.y = UP_CAMERA_OFFSET;
	}

	if (y > DOWN_OFFSET)
	{
		App->renderer->camera.y = DOWN_CAMERA_OFFSET;
	}
	
	if (App->input->GetKey(SDL_SCANCODE_SPACE) == KEY_REPEAT)
	{
		launcher_joint->SetMotorSpeed(-2);
		bouncerSpeed += 1.2f;

		if (bouncerSpeed > 60)
		{
			bouncerSpeed = 60;
		}
	}
	else if (App->input->GetKey(SDL_SCANCODE_SPACE) == KEY_UP)
	{
		launcher_joint->SetMotorSpeed(bouncerSpeed);
		bouncerSpeed = 0;
	}

	int xB, yB;
	launcher->GetPosition(xB, yB);

	//bouncerSpeed = 0;

	//vector velocity 0

	// Blit to screen
	App->renderer->Blit(background, 0, 0);
	App->renderer->Blit(HUD, App->renderer->camera.x * (-1), App->renderer->camera.y * (-1));
	App->renderer->Blit(balls, x, y, NULL, 1.0f, rotate, 16, 16);
	App->renderer->Blit(launcherText, 585, 999, NULL);

	return UPDATE_CONTINUE;
}

void ModuleSceneIntro::OnCollision(PhysBody* bodyA, PhysBody* bodyB)
{
	int x, y;

	App->audio->PlayFx(bonus_fx);

	/*
	if(bodyA)
	{
		bodyA->GetPosition(x, y);
		App->renderer->DrawCircle(x, y, 50, 100, 100, 100);
	}

	if(bodyB)
	{
		bodyB->GetPosition(x, y);
		App->renderer->DrawCircle(x, y, 50, 100, 100, 100);
	}*/
}

void ModuleSceneIntro::FollowBall()
{
	
}
