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

	// Initialize interactive colliders
	orangebird_on = false;

	//Set camera position
	App->renderer->camera.x = 0;
	App->renderer->camera.y = 0;

	//Set to 0 launcher speed force
	bouncerSpeed = 0.0f;

	// Load textures
	balls = App->textures->Load("assets/Player_control/ball.png"); 
	background = App->textures->Load("assets/Background/Background_finished.png");
	launcherText = App->textures->Load("assets/Player_control/bouncer.png");
	HUD = App->textures->Load("assets/HUD/HUD.png");
	rightFlipperText = App->textures->Load("assets/Player_control/flipper1.png");
	leftFlipperText = App->textures->Load("assets/Player_control/flipper1.png"); //flip texture

	// Load interactive textures
	orangebird = App->textures->Load("assets/Interactive/orange_bird_on_.png");

	// Load audio and fx
	bonus_fx = App->audio->LoadFx("pinball/bonus.wav");

	// Create colliders map
	Physbackground = App->physics->CreateChain(0, 0, backgroundChain, 144);
	Physbackground->body->SetType(b2_staticBody);
	Physbottomleft = App->physics->CreateChain(0, 0, Bottom_left, 18);
	Physbottomleft->body->SetType(b2_staticBody);
	Physbottomright = App->physics->CreateChain(0, 0, Bottom_right, 18);
	Physbottomright->body->SetType(b2_staticBody);
	Physrighttriangle = App->physics->CreateChain(0, 0, Right_triangle, 12);
	Physrighttriangle->body->SetType(b2_staticBody);
	Physlefttriangle = App->physics->CreateChain(0, 0, Left_triangle, 12);
	Physlefttriangle->body->SetType(b2_staticBody);
	Physlefttunnel = App->physics->CreateChain(0, 0, Left_tunnel, 86);
	Physlefttunnel->body->SetType(b2_staticBody);

	// Colliders interactive
	Physyellowbird = App->physics->CreateRectangleSensor(186, 738, 74, 74);
	Physgreenbird = App->physics->CreateRectangleSensor(374, 914, 74, 74);
	Physredbird = App->physics->CreateRectangleSensor(462, 737, 74, 74);
	Physbluebird = App->physics->CreateRectangleSensor(239, 915, 74, 74);
	Physpinkbird = App->physics->CreateRectangleSensor(323, 705, 74, 74);
	Physorangebird = App->physics->CreateRectangleSensor(307, 1039, 74, 74);
	Physninja = App->physics->CreateRectangleSensor(86, 942, 74, 74);
	Physgirl = App->physics->CreateRectangleSensor(522, 934, 74, 74);
	Physsquare1 = App->physics->CreateRectangleSensor(349, 375, 70, 70);
	Physsquare2 = App->physics->CreateRectangleSensor(481, 161, 70, 70);
	Physactred1 = App->physics->CreateRectangleSensor(125, 630, 20, 20);
	Physactred2 = App->physics->CreateRectangleSensor(104, 449, 20, 20);
	Physactred3 = App->physics->CreateRectangleSensor(104, 389, 20, 20);
	Physactred4 = App->physics->CreateRectangleSensor(121, 265, 20, 20);
	Physactred5 = App->physics->CreateRectangleSensor(390, 69, 20, 20);
	Physactred6 = App->physics->CreateRectangleSensor(576, 73, 20, 20);
	Physactred7 = App->physics->CreateRectangleSensor(607, 348, 20, 20);
	Physactred8 = App->physics->CreateRectangleSensor(607, 566, 20, 20);

	// Colliders bumper
	Physbumper1 = App->physics->CreateCircle(375, 567, 43);
	Physbumper1->body->SetType(b2_staticBody);
	Physbumper2 = App->physics->CreateCircle(537, 430, 43);
	Physbumper2->body->SetType(b2_staticBody);
	Physlittlebumper1 = App->physics->CreateCircle(542, 867, 15);
	Physlittlebumper1->body->SetType(b2_staticBody);
	Physlittlebumper2 = App->physics->CreateCircle(148, 339, 15);
	Physlittlebumper2->body->SetType(b2_staticBody);
	Physlittlebumper3 = App->physics->CreateCircle(303, 176, 15);
	Physlittlebumper3->body->SetType(b2_staticBody);
	Physlittlebumper4 = App->physics->CreateCircle(398, 165, 15);
	Physlittlebumper4->body->SetType(b2_staticBody);
	Physlittlebumper5 = App->physics->CreateCircle(477, 88, 15);
	Physlittlebumper5->body->SetType(b2_staticBody);
	Physlittlebumper6 = App->physics->CreateCircle(548, 165, 15);
	Physlittlebumper6->body->SetType(b2_staticBody);
	Physlittlebumper7 = App->physics->CreateCircle(586, 291, 15);
	Physlittlebumper7->body->SetType(b2_staticBody);
	
	// Create colliders bouncer
	launcher = App->physics->CreateLauncher(585 + 14.5, 999 + 90.5 - 15.5, 29, 150, launcher_joint);
	launcher->listener = this;

	// Create ball
	ball = App->physics->CreateCircle(585, 800, 13);
	ball->listener = this;

	//Create flipper
	int left_flipper2[8]
	{
		0,  12,
		0 ,-12,
		70,  7,
		70 ,-7
	};
	flipper_rect_l = { 0, 86, 92, 42 };
	//0,86,92,42
	left_flipper_joint = App->physics->CreateRectangle(200, 1080, 20, 8);
	left_flipper_joint->body->SetType(b2_staticBody);
	left_flipper = App->physics->CreateFlipper(b2Vec2(212, 1090), left_flipper2, 8, b2Vec2(200, 1100), -30, 10, flipper_l_joint);
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
	App->textures->Unload(leftFlipperText);

	return true;
}

// Update: draw background
update_status ModuleSceneIntro::Update()
{
	if(App->input->GetKey(SDL_SCANCODE_1) == KEY_DOWN)
	{
		ball = App->physics->CreateCircle(App->input->GetMouseX(), App->input->GetMouseY(), 14);
		ball->listener = this;
	}

	if (App->input->GetKey(SDL_SCANCODE_A) == KEY_DOWN)
	{
		engageFlipper(left_flipper, -10.0f);
		//	App->audio->PlayFx(flipper_fx);
	}

	// -------Flippers----------------------------------------------

	/*int RightFlipPosX, RightFlipPosY;
	right_flipper->GetPosition(RightFlipPosX, RightFlipPosY);
	App->renderer->Blit(leftFlipperText, RightFlipPosX + 8 - 100, RightFlipPosY, &flipper_rect_r, 1.0f, right_flipper->GetRotation(), 30, 0);
	*/

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
	if (orangebird_on == true)
	{
		App->renderer->Blit(orangebird, 307, 1039);
	}
	App->renderer->Blit(HUD, App->renderer->camera.x * (-1), App->renderer->camera.y * (-1));
	App->renderer->Blit(balls, x, y, NULL, 1.0f, rotate, 16, 16);
	App->renderer->Blit(launcherText, 585, 999, NULL);
	App->renderer->Blit(NULL, 200, 1080, NULL, 1.0f);
	App->renderer->Blit(leftFlipperText, SCREEN_WIDTH * 0.5 - 300, 800, &flipper_rect_l, 1.0f, left_flipper->GetRotation(), 30, 0);

	return UPDATE_CONTINUE;
}

void ModuleSceneIntro::OnCollision(PhysBody* bodyA, PhysBody* bodyB)
{
	//int x, y;

	App->audio->PlayFx(bonus_fx);

	if (bodyB == Physorangebird)
	{
		orangebird_on = true;
		App->audio->PlayFx(bonus_fx);
	}
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

void ModuleSceneIntro::engageFlipper(PhysBody *flipper, float impulse)
{
	if (flipper)
	{
		flipper->body->ApplyAngularImpulse(impulse, true);
	}
}
