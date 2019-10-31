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

	balls = App->textures->Load("assets/Player_control/ball.png"); 
	bonus_fx = App->audio->LoadFx("pinball/bonus.wav");

	background = App->textures->Load("assets/Background/Background_finished.png");
	bouncerText = App->textures->Load("assets/Player_control/bouncer.png");
	HUD = App->textures->Load("assets/HUD/HUD.png");

	Physbackground = App->physics->CreateChain(0, 0, backgroundChain, 144);
	Physbackground->body->SetType(b2_staticBody);

	//597, 650, 15

	bouncer = App->physics->CreateBouncer(597, 700, 22);
	bouncer->listener = this;

	//sensor = App->physics->CreateRectangleSensor(SCREEN_WIDTH / 2, SCREEN_HEIGHT, SCREEN_WIDTH, 50, this);

	CreateBall();

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
	if(App->input->GetKey(SDL_SCANCODE_1) == KEY_DOWN)
	{
		ball.add(App->physics->CreateCircle(App->input->GetMouseX(), App->input->GetMouseY(), 15));
		ball.getLast()->data->listener = this;
	}

	if (App->input->GetKey(SDL_SCANCODE_SPACE) == KEY_DOWN)
	{
		CreateBall();
	}

	// All draw functions ------------------------------------------------------
	p2List_item<PhysBody*>* c = circles.getFirst();

	/*while(c != NULL)
	{
		int x, y;
		c->data->GetPosition(x, y);
		App->renderer->Blit(circle, x, y, NULL, 1.0f, c->data->GetRotation());
		c = c->next;
	}

	c = boxes.getFirst();

	while(c != NULL)
	{
		int x, y;
		c->data->GetPosition(x, y);
		App->renderer->Blit(box, x, y, NULL, 1.0f, c->data->GetRotation());
		c = c->next;
	}

	c = ricks.getFirst();

	while(c != NULL)
	{
		int x, y;
		c->data->GetPosition(x, y);
		App->renderer->Blit(rick, x, y, NULL, 1.0f, c->data->GetRotation());
		c = c->next;
	}*/

	c = backgrounds.getFirst();

	while (c != NULL)
	{
		int x, y;
		c->data->GetPosition(x, y);
		App->renderer->Blit(background, x, y, NULL, 1.0f);
		c = c->next;
	}

	while (c != NULL)
	{
		int x, y;
		c->data->GetPosition(x, y);
		App->renderer->Blit(balls, x, y, NULL, 1.0f, c->data->GetRotation());
		c = c->next;
	}

	// Blit to screen
	App->renderer->Blit(background, 0, 0);
	App->renderer->Blit(HUD, App->renderer->camera.x * (-1), App->renderer->camera.y * (-1));

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

void ModuleSceneIntro::CreateBall()
{
	ball.add(App->physics->CreateCircle(597, 650, 15));
	ball.getLast()->data->listener = this;
}

void ModuleSceneIntro::FollowBall()
{

}
