#include "Globals.h"
#include "Application.h"
#include "ModuleRender.h"
#include "ModuleSceneIntro.h"
#include "ModuleInput.h"
#include "ModuleTextures.h"
#include "ModuleAudio.h"
#include "ModulePhysics.h"
#include "ChainCoords.h"

ModuleSceneIntro::ModuleSceneIntro(Application* app, bool start_enabled) : Module(app, start_enabled)
{
	balls = background = bouncerText = HUD = NULL;
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

	// Load textures
	balls = App->textures->Load("assets/Player_control/ball.png"); 
	bonus_fx = App->audio->LoadFx("pinball/bonus.wav");
	background = App->textures->Load("assets/Background/Background_finished.png");
	bouncerText = App->textures->Load("assets/Player_control/bouncer.png");
	HUD = App->textures->Load("assets/HUD/HUD.png");

	// Create colliders map
	Physbackground = App->physics->CreateChain(0, 0, backgroundChain, 144);
	Physbackground->body->SetType(b2_staticBody);

	// Create colliders bouncer
	bouncer = App->physics->CreateBouncer(590, 1180, 22);
	bouncer->listener = this;

	// Create ball

	ball = App->physics->CreateCircle(590, 384, 12);
	ball->listener = this;

	return ret;
}

// Load assets
bool ModuleSceneIntro::CleanUp()
{
	LOG("Unloading Intro scene");

	App->textures->Unload(balls);
	App->textures->Unload(background);
	App->textures->Unload(bouncerText);
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
	int offset = 800;
	rotate = ball->GetRotation();
	App->renderer->camera.y = -y + 384;

	if (y > offset)
	{
		App->renderer->camera.y = -412;
	}

	

	// Blit to screen
	App->renderer->Blit(background, 0, 0);
	App->renderer->Blit(HUD, App->renderer->camera.x * (-1), App->renderer->camera.y * (-1));
	App->renderer->Blit(balls, x, y, NULL, 1.0f, rotate, 16, 16);

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
