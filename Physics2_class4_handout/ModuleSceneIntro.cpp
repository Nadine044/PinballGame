#include "Globals.h"
#include "Application.h"
#include "ModuleRender.h"
#include "ModuleSceneIntro.h"
#include "ModuleInput.h"
#include "ModuleTextures.h"
#include "ModuleAudio.h"
#include "ModulePhysics.h"
#include "ChainCoords.h"
#include "ModuleFonts.h"

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

	App->renderer->camera.x = 0;
	App->renderer->camera.y = 0;

	bouncerSpeed = 0.0f;

	// Load textures
	balls = App->textures->Load("assets/Player_control/ball.png"); 
	background = App->textures->Load("assets/Background/Background_finished.png");
	launcherText = App->textures->Load("assets/Player_control/bouncer.png");
	HUD = App->textures->Load("assets/HUD/HUD.png");

	// Load interactive textures
	yellowbird = App->textures->Load("assets/Interactive/yellow_bird_on_.png");
	greenbird = App->textures->Load("assets/Interactive/green_bird_on_.png");
	orangebird = App->textures->Load("assets/Interactive/orange_bird_on_.png");
	bluebird = App->textures->Load("assets/Interactive/blue_bird_on_.png");
	pinkbird = App->textures->Load("assets/Interactive/pink_bird_on_.png");
	redbird = App->textures->Load("assets/Interactive/red_bird_on_.png");
	ninja = App->textures->Load("assets/Interactive/ninja_on_.png");
	girl = App->textures->Load("assets/Interactive/girl_on_.png");
	square = App->textures->Load("assets/Interactive/green_square_on_.png");
	actred = App->textures->Load("assets/Interactive/red_ball_on_.png");
	bumper = App->textures->Load("assets/Interactive/green_bumper_on_.png");
	littlebumper = App->textures->Load("assets/Interactive/red_bumper_on_.png");

	// Load audio and fx
	hit_fx = App->audio->LoadFx("pinball/bonus.wav");

	// Load number for score
	font_score = App->fonts->Load("assets/HUD/numbers.png", "1234567890", 1);

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
	Physlefttunnel = App->physics->CreateChain(0, 0, Left_tunnel, 70);
	Physlefttunnel->body->SetType(b2_staticBody);
	Physlefttunnelbonus = App->physics->CreateRectangleSensor(100, 746, 50, 20);

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

	// Collider dead
	Physdead = App->physics->CreateRectangleSensor(306, 1175, 250, 10);
	
	// Create colliders bouncer
	launcher = App->physics->CreateLauncher(585 + 14.5, 999 + 90.5 - 15.5, 29, 150, launcher_joint);
	launcher->listener = this;

	// Play music
	App->audio->PlayMusic("assets/Sounds/Music/pinball_music.ogg");

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
	if(App->input->GetKey(SDL_SCANCODE_1) == KEY_DOWN)
	{
		ball = App->physics->CreateCircle(App->input->GetMouseX(), App->input->GetMouseY(), 14);
		ball->listener = this;
	}

	// All draw functions ------------------------------------------------------


	// Create ball
	if (ballIsCreated == false || dead_on == true)
	{
		if (dead_on == true || firstBall == true)
		{
			ball = App->physics->CreateCircle(585 + 14.5, 999 + 90.5 - 15.5 - 100, 13);
			ball->listener = this;
			firstBall = false;
		}
		ballIsCreated = true;		
	}

	// Get ball position

	ball->GetPosition(ballPositionX, ballPositionY);
	rotate = ball->GetRotation();
	App->renderer->camera.y = -ballPositionY + (SCREEN_HEIGHT * 0.5);


	if (ballPositionY < UP_OFFSET)
	{
		App->renderer->camera.y = UP_CAMERA_OFFSET;
	}

	if (ballPositionY > DOWN_OFFSET)
	{
		App->renderer->camera.y = DOWN_CAMERA_OFFSET;
	}

	//create game ball
	
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
	
	// Check all interactive blit
	CheckBlit();
	
	// if all birds activated +15000
	
	App->renderer->Blit(HUD, App->renderer->camera.x * (-1), App->renderer->camera.y * (-1));

	// Check score and balls for blit
	ScoreBlit();

	// Check bonus points
	BonusBlit();

	addscore = false;
	BallsBlit();

	App->renderer->Blit(balls, ballPositionX, ballPositionY, NULL, 1.0f, rotate, 16, 16);
	App->renderer->Blit(launcherText, 585, 999, NULL);

	return UPDATE_CONTINUE;
}

void ModuleSceneIntro::OnCollision(PhysBody* bodyA, PhysBody* bodyB)
{
	App->audio->PlayFx(hit_fx);

	// Birds
	if (bodyB == Physyellowbird)
	{
		yellowbird_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	if (bodyB == Physgreenbird)
	{
		greenbird_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	if (bodyB == Physorangebird)
	{
		orangebird_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	if (bodyB == Physbluebird)
	{
		bluebird_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	if (bodyB == Physpinkbird)
	{
		pinkbird_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	if (bodyB == Physredbird)
	{
		redbird_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}

	// Ninja and girl
	if (bodyB == Physninja)
	{
		ninja_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	if (bodyB == Physgirl)
	{
		girl_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}

	// Squares
	if (bodyB == Physsquare1)
	{
		square1_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	if (bodyB == Physsquare2)
	{
		square2_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}

	// Active red
	if (bodyB == Physactred1)
	{
		actred1_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	if (bodyB == Physactred2)
	{
		actred2_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	if (bodyB == Physactred3)
	{
		actred3_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	if (bodyB == Physactred4)
	{
		actred4_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	if (bodyB == Physactred5)
	{
		actred5_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	if (bodyB == Physactred6)
	{
		actred6_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	if (bodyB == Physactred7)
	{
		actred7_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	if (bodyB == Physactred8)
	{
		actred8_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}

	// Check bumpers
	if (bodyB == Physbumper1)
	{
		bumper1_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	else
	{
		bumper1_on = false;
	}
	if (bodyB == Physbumper2)
	{
		bumper2_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	else
	{
		bumper2_on = false;
	}

	// Check littlebumpers
	if (bodyB == Physlittlebumper1)
	{
		littlebumper1_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	else
	{
		littlebumper1_on = false;
	}
	if (bodyB == Physlittlebumper2)
	{
		littlebumper2_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	else
	{
		littlebumper2_on = false;
	}
	if (bodyB == Physlittlebumper3)
	{
		littlebumper3_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	else
	{
		littlebumper3_on = false;
	}
	if (bodyB == Physlittlebumper4)
	{
		littlebumper4_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	else
	{
		littlebumper4_on = false;
	}
	if (bodyB == Physlittlebumper5)
	{
		littlebumper5_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	else
	{
		littlebumper5_on = false;
	}
	if (bodyB == Physlittlebumper6)
	{
		littlebumper6_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	else
	{
		littlebumper6_on = false;
	}
	if (bodyB == Physlittlebumper7)
	{
		littlebumper7_on = true;
		addscore = true;
		//App->audio->PlayFx(bonus_fx);
	}
	else
	{
		littlebumper7_on = false;
	}

	// Bonus tunnel
	if (bodyB == Physlefttunnelbonus)
	{
		lefttunnelbonus_on = true;
		//App->audio->PlayFx(bonus_fx);
	}

	// Dead
	if (bodyB == Physdead)
	{
		dead_on = true;
		//App->audio->PlayFx(bonus_fx);
	}
}

void ModuleSceneIntro::CheckBlit()
{
	// Check bird on
	if (yellowbird_on == true)
	{
		App->renderer->Blit(yellowbird, 144, 701);
	}
	if (greenbird_on == true)
	{
		App->renderer->Blit(greenbird, 334, 879);
	}
	if (orangebird_on == true)
	{
		App->renderer->Blit(orangebird, 266, 1004);
	}
	if (bluebird_on == true)
	{
		App->renderer->Blit(bluebird, 198, 879);
	}
	if (pinkbird_on == true)
	{
		App->renderer->Blit(pinkbird, 281, 670);
	}
	if (redbird_on == true)
	{
		App->renderer->Blit(redbird, 421, 701);
	}

	// Check ninja and girl on
	if (ninja_on == true)
	{
		App->renderer->Blit(ninja, 46, 890);
	}
	if (girl_on == true)
	{
		App->renderer->Blit(girl, 485, 886);
	}

	// Check squares on
	if (square1_on == true)
	{
		App->renderer->Blit(square, 311, 343);
	}
	if (square2_on == true)
	{
		App->renderer->Blit(square, 447, 129);
	}

	// Check red active on
	if (actred1_on == true)
	{
		App->renderer->Blit(actred, 133, 641);
	}
	if (actred2_on == true)
	{
		App->renderer->Blit(actred, 119, 422);
	}
	if (actred3_on == true)
	{
		App->renderer->Blit(actred, 119, 361);
	}
	if (actred4_on == true)
	{
		App->renderer->Blit(actred, 139, 263);
	}
	if (actred5_on == true)
	{
		App->renderer->Blit(actred, 394, 77);
	}
	if (actred6_on == true)
	{
		App->renderer->Blit(actred, 510, 77);
	}
	if (actred7_on == true)
	{
		App->renderer->Blit(actred, 534, 323);
	}
	if (actred8_on == true)
	{
		App->renderer->Blit(actred, 535, 545);
	}

	// Check bumper on
	if (bumper1_on == true)
	{
		App->renderer->Blit(bumper, 326, 516);
	}
	if (bumper2_on == true)
	{
		App->renderer->Blit(bumper, 487, 380);
	}
	if (littlebumper1_on == true)
	{
		App->renderer->Blit(littlebumper, 529, 855);
	}
	if (littlebumper2_on == true)
	{
		App->renderer->Blit(littlebumper, 135, 328);
	}
	if (littlebumper3_on == true)
	{
		App->renderer->Blit(littlebumper, 290, 164);
	}
	if (littlebumper4_on == true)
	{
		App->renderer->Blit(littlebumper, 385, 153);
	}
	if (littlebumper5_on == true)
	{
		App->renderer->Blit(littlebumper, 464, 76);
	}
	if (littlebumper6_on == true)
	{
		App->renderer->Blit(littlebumper, 535, 153);
	}
	if (littlebumper7_on == true)
	{
		App->renderer->Blit(littlebumper, 573, 279);
	}
	
	// Check dead
	if (dead_on == true)
	{
		balls_number--;
		if (balls_number < 0)
		{

		}
		dead_on = false;
	}
}

void ModuleSceneIntro::ScoreBlit()
{
	sprintf_s(score_text, 10, "%d", score);

	if (addscore == true)
	{
		score += 100;
	}
	App->fonts->BlitText(5, 25, font_score, score_text);
}

void ModuleSceneIntro::BallsBlit()
{
	sprintf_s(score_balls, 10, "%d", balls_number);

	App->fonts->BlitText(555, 25, font_score, score_balls);
}

void ModuleSceneIntro::BonusBlit()
{
	// Pyo blocs bonus +15000 (all birds)
	if (bonusbird == false && yellowbird_on == true && greenbird_on == true && orangebird_on == true && bluebird_on == true && pinkbird_on == true && redbird_on == true)
	{
		score += 15000;
		bonusbird = true;
	}

	// Big pixel bonus +500000 (squares)
	if (bonussquare == false && square1_on == true && square2_on == true)
	{
		score += 500000;
		bonussquare = true;
	}

	// loop bonus +50000 (left tunnel)
	if (lefttunnelbonus_on == true)
	{
		score += 50000;
		lefttunnelbonus_on = false;
	}
	
	// meow meow happy fight bonus +20000 (ninja and girl)
	if (bonusninjagirl == false && ninja_on == true && girl_on == true)
	{
		score += 20000;
		bonusninjagirl = true;
	}
}
