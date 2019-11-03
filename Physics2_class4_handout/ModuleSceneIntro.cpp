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
#include "ModuleWinScreen.h"

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

	// Load flipper textures
	clipper_left = App->textures->Load("assets/Player_control/clipper_1_left.png");
	clipper_right = App->textures->Load("assets/Player_control/clipper_1_right.png");
	little_clipper_left = App->textures->Load("assets/Player_control/clipper_2_left.png");
	little_clipper_right = App->textures->Load("assets/Player_control/clipper_2_right.png");

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
	hit_fx = App->audio->LoadFx("assets/Sounds/Fx/ball_hit.wav");
	dead_fx = App->audio->LoadFx("assets/Sounds/Fx/ball_dead.wav");
	flippers_left_fx = App->audio->LoadFx("assets/Sounds/Fx/flipper_left.wav");
	flippers_right_fx = App->audio->LoadFx("assets/Sounds/Fx/flipper_right.wav");
	bird_bird_fx = App->audio->LoadFx("assets/Sounds/Fx/hit_bird_bird.wav");
	bird_girl_fx = App->audio->LoadFx("assets/Sounds/Fx/hit_bird_girl.wav");
	ninjagirl_fx = App->audio->LoadFx("assets/Sounds/Fx/ninjagirl_hit.wav");
	bouncer_fx = App->audio->LoadFx("assets/Sounds/Fx/hit_bouncer.wav");
	square_fx = App->audio->LoadFx("assets/Sounds/Fx/square_hit.wav");
	actred_fx = App->audio->LoadFx("assets/Sounds/Fx/hit_dog.wav");
	bonustunnel_fx = App->audio->LoadFx("assets/Sounds/Fx/left_tunnel_bonus.wav");
	birdsbonus_fx = App->audio->LoadFx("assets/Sounds/Fx/bird_bonus.wav");
	squarebonus_fx = App->audio->LoadFx("assets/Sounds/Fx/square_bonus.wav");
	ninjagirlbonus_fx = App->audio->LoadFx("assets/Sounds/Fx/ninjagirl_bonus.wav");
	springpull_fx = App->audio->LoadFx("assets/Sounds/Fx/spring_pull.wav");
	springrelease_fx = App->audio->LoadFx("assets/Sounds/Fx/spring_release.wav");
	
	// Load number for score
	font_score = App->fonts->Load("assets/HUD/numbers.png", "1234567890", 1);

	// Create colliders map
	Physbackground_1 = App->physics->CreateChain(0, 0, BackgroundChain_1, 54);
	Physbackground_1->body->SetType(b2_staticBody);
	Physbackground_2 = App->physics->CreateChain(0, 0, BackgroundChain_2, 70);
	Physbackground_2->body->SetType(b2_staticBody);
	Physbottomleft = App->physics->CreateChain(0, 0, Bottom_left, 16);
	Physbottomleft->body->SetType(b2_staticBody);
	Physbottomright = App->physics->CreateChain(0, 0, Bottom_right, 16);
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
	Physdead = App->physics->CreateRectangleSensor(306, 1200, 250, 10);
	
	// Collider clippers
	clipper_left_axis = App->physics->CreateCircle(210, 1100, 10);
	clipper_left_axis->body->SetType(b2_staticBody);
	clipper_right_axis = App->physics->CreateCircle(410, 1100, 10);
	clipper_right_axis->body->SetType(b2_staticBody);
	clipper_left_collider = App->physics->CreatePolygon(210, 1100, clipper_left_form, 16);
	clipper_right_collider = App->physics->CreatePolygon(410, 1100, clipper_right_form, 16);
	
	// Collider little clippers
	little_clipper_left_axis = App->physics->CreateCircle(141, 562, 8);
	little_clipper_left_axis->body->SetType(b2_staticBody);
	little_clipper_right_axis = App->physics->CreateCircle(580, 675, 8);
	little_clipper_right_axis->body->SetType(b2_staticBody);
	little_clipper_left_collider = App->physics->CreatePolygon(141, 562, little_clipper_left_form, 16);
	little_clipper_right_collider = App->physics->CreatePolygon(570, 675, little_clipper_right_form, 16);
	
	// Collider top little clippers
	top_little_clipper_left_axis = App->physics->CreateCircle(420, 260, 8);
	top_little_clipper_left_axis->body->SetType(b2_staticBody);
	top_little_clipper_right_axis = App->physics->CreateCircle(577, 236, 8);
	top_little_clipper_right_axis->body->SetType(b2_staticBody);
	top_little_clipper_left_collider = App->physics->CreatePolygon(420, 260, little_clipper_left_form, 16);
	top_little_clipper_right_collider = App->physics->CreatePolygon(540, 243, little_clipper_right_form, 16);

	// Create colliders bouncer
	launcher = App->physics->CreateLauncher(585 + 14.5, 999 + 90.5 - 15.5, 29, 150, launcher_joint);
	launcher->listener = this;

	// Create clippers
	clipper_left_joint = App->physics->Createclipper(clipper_left_collider->body, clipper_left_axis->body, 20, 24, -10, 40);
	clipper_right_joint = App->physics->Createclipper(clipper_right_collider->body, clipper_right_axis->body, 83, 19, -40, 10);

	// Create little clippers
	little_clipper_left_joint = App->physics->Createclipper(little_clipper_left_collider->body, little_clipper_left_axis->body, 20, 24, -60, 10);
	little_clipper_right_joint = App->physics->Createclipper(little_clipper_right_collider->body, little_clipper_right_axis->body, 83, 19, 20, 60);

	// Create top little clippers
	top_little_clipper_left_joint = App->physics->Createclipper(top_little_clipper_left_collider->body, top_little_clipper_left_axis->body, 20, 24, -20, 10);
	top_little_clipper_right_joint = App->physics->Createclipper(top_little_clipper_right_collider->body, top_little_clipper_right_axis->body, 83, 19, -10, 30);

	// Play music
	App->audio->PlayMusic("assets/Sounds/Music/pinball_music.ogg");

	return ret;
}

// Load assets
bool ModuleSceneIntro::CleanUp()
{
	LOG("Unloading Intro scene");

	// Unload textures
	App->textures->Unload(balls);
	App->textures->Unload(background);
	App->textures->Unload(clipper_left);
	App->textures->Unload(clipper_right);
	App->textures->Unload(launcherText);
	App->textures->Unload(HUD);
	App->textures->Unload(yellowbird);
	App->textures->Unload(greenbird);
	App->textures->Unload(orangebird);
	App->textures->Unload(bluebird);
	App->textures->Unload(pinkbird);
	App->textures->Unload(redbird);
	App->textures->Unload(ninja);
	App->textures->Unload(girl);
	App->textures->Unload(square);
	App->textures->Unload(actred);
	App->textures->Unload(bumper);
	App->textures->Unload(littlebumper);

	return true;
}

// Update: draw background
update_status ModuleSceneIntro::Update()
{
	// All draw functions ------------------------------------------------------
	// Clipper motor
	clipper_left_joint->SetMotorSpeed(-1000 * DEGTORAD);
	clipper_right_joint->SetMotorSpeed(1000 * DEGTORAD);

	// Little clipper motor
	little_clipper_left_joint->SetMotorSpeed(-1000 * DEGTORAD);
	little_clipper_right_joint->SetMotorSpeed(1000 * DEGTORAD);

	// Top little clipper motor
	top_little_clipper_left_joint->SetMotorSpeed(-1000 * DEGTORAD);
	top_little_clipper_right_joint->SetMotorSpeed(1000 * DEGTORAD);

	// Create ball
	if (ballIsCreated == false || dead_on == true)
	{
		//Create ball like CreateCircle
		b2BodyDef body;
		body.type = b2_dynamicBody;
		body.position.Set(585 + 14.5, 999 + 90.5 - 15.5 - 100);

		b2Body* b = App->physics->world->CreateBody(&body);

		b2CircleShape shape;
		shape.m_radius = 13;
		b2FixtureDef fixture;
		fixture.shape = &shape;
		fixture.density = 1.0f;

		b2Fixture* f = b->CreateFixture(&fixture);

		ball = new PhysBody();
		ball->body = b;
		b->SetUserData(ball);
		ball->width = ball->height = 13;

		ball = App->physics->CreateCircle(585 + 14.5, 999 + 90.5 - 15.5 - 100, 13);
		ball->listener = this;
		firstBall = false;

		if (dead_on == true)
		{
			b->DestroyFixture(f);
			App->physics->world->DestroyBody(b);
			
			//DestroyBall();
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
	
	if (App->win->endgame == false)
	{
		if (App->input->GetKey(SDL_SCANCODE_DOWN) == KEY_REPEAT)
		{
			launcher_joint->SetMotorSpeed(-2);
			bouncerSpeed += 0.5f;

			if (bouncerSpeed > 15)
			{
				bouncerSpeed = 15;
			}

			if (spring_fx == false)
			{
				App->audio->PlayFx(springpull_fx);
				spring_fx = true;
			}
		}
		else if (App->input->GetKey(SDL_SCANCODE_DOWN) == KEY_UP)
		{
			launcher_joint->SetMotorSpeed(bouncerSpeed);
			bouncerSpeed = 0;

			App->audio->PlayFx(springrelease_fx);
			spring_fx = false;
		}
		// Flipper move
		if (App->input->GetKey(SDL_SCANCODE_LEFT) == KEY_REPEAT)
		{
			// Clipper
			clipper_left_joint->SetMotorSpeed(1000 * DEGTORAD);
			clipper_left_collider->GetPosition(clipper_left_x, clipper_left_y);
			clipper_left_rotation = clipper_left_collider->GetRotation();

			// Little clipper
			little_clipper_left_joint->SetMotorSpeed(1000 * DEGTORAD);
			little_clipper_left_collider->GetPosition(little_clipper_left_x, little_clipper_left_y);
			little_clipper_left_rotation = little_clipper_left_collider->GetRotation();

			// Top little clipper
			top_little_clipper_left_joint->SetMotorSpeed(1000 * DEGTORAD);
			top_little_clipper_left_collider->GetPosition(top_little_clipper_left_x, top_little_clipper_left_y);
			top_little_clipper_left_rotation = top_little_clipper_left_collider->GetRotation();

			if (flippers_left_one_fx == false)
			{
				App->audio->PlayFx(flippers_left_fx);
				flippers_left_one_fx = true;
			}
		}
		if (App->input->GetKey(SDL_SCANCODE_LEFT) == KEY_UP)
		{
			flippers_left_one_fx = false;
		}

		if (App->input->GetKey(SDL_SCANCODE_RIGHT) == KEY_REPEAT)
		{
			// Clipper
			clipper_right_joint->SetMotorSpeed(-1000 * DEGTORAD);
			clipper_right_collider->GetPosition(clipper_right_x, clipper_right_y);
			clipper_right_rotation = clipper_right_collider->GetRotation();

			// Little clipper
			little_clipper_right_joint->SetMotorSpeed(-1000 * DEGTORAD);
			little_clipper_right_collider->GetPosition(little_clipper_right_x, little_clipper_right_y);
			little_clipper_right_rotation = little_clipper_right_collider->GetRotation();

			// Top little clipper
			top_little_clipper_right_joint->SetMotorSpeed(-1000 * DEGTORAD);
			top_little_clipper_right_collider->GetPosition(top_little_clipper_right_x, top_little_clipper_right_y);
			top_little_clipper_right_rotation = top_little_clipper_right_collider->GetRotation();

			if (flippers_right_one_fx == false)
			{
				App->audio->PlayFx(flippers_right_fx);
				flippers_right_one_fx = true;
			}
		}
		if (App->input->GetKey(SDL_SCANCODE_RIGHT) == KEY_UP)
		{
			flippers_right_one_fx = false;
		}
	}
	int xB, yB;
	launcher->GetPosition(xB, yB);

	if (App->win->endgame == false)
	{
		// Blit to screen
		App->renderer->Blit(background, 0, 0);

		// Blit clippers
		clipper_left_rotation = clipper_left_collider->GetRotation();
		clipper_left_collider->GetPosition(clipper_left_x, clipper_left_y);
		clipper_right_rotation = clipper_right_collider->GetRotation();
		clipper_right_collider->GetPosition(clipper_right_x, clipper_right_y);
		App->renderer->Blit(clipper_left, (clipper_left_x), (clipper_left_y), NULL, 1.0f, clipper_left_rotation, -5, -5);
		App->renderer->Blit(clipper_right, (clipper_right_x), (clipper_right_y), NULL, 1.0f, clipper_right_rotation, -1, 0);

		// Blit little clippers
		little_clipper_left_rotation = little_clipper_left_collider->GetRotation();
		little_clipper_left_collider->GetPosition(little_clipper_left_x, little_clipper_left_y);
		little_clipper_right_rotation = little_clipper_right_collider->GetRotation();
		little_clipper_right_collider->GetPosition(little_clipper_right_x, little_clipper_right_y);
		App->renderer->Blit(little_clipper_left, (little_clipper_left_x), (little_clipper_left_y), NULL, 1.0f, little_clipper_left_rotation, -5, -5);
		App->renderer->Blit(little_clipper_right, (little_clipper_right_x), (little_clipper_right_y), NULL, 1.0f, little_clipper_right_rotation, -1, 0);

		// Blit top little clippers
		top_little_clipper_left_rotation = top_little_clipper_left_collider->GetRotation();
		top_little_clipper_left_collider->GetPosition(top_little_clipper_left_x, top_little_clipper_left_y);
		top_little_clipper_right_rotation = top_little_clipper_right_collider->GetRotation();
		top_little_clipper_right_collider->GetPosition(top_little_clipper_right_x, top_little_clipper_right_y);
		App->renderer->Blit(little_clipper_left, (top_little_clipper_left_x), (top_little_clipper_left_y), NULL, 1.0f, top_little_clipper_left_rotation, -5, -5);
		App->renderer->Blit(little_clipper_right, (top_little_clipper_right_x), (top_little_clipper_right_y), NULL, 1.0f, top_little_clipper_right_rotation, -1, 0);

		// Check all interactive blit
		CheckBlit();

		App->renderer->Blit(HUD, App->renderer->camera.x * (-1), App->renderer->camera.y * (-1));

		// Check score and balls for blit
		ScoreBlit();

		// Check bonus points
		BonusBlit();

		addscore = false;
		BallsBlit();

		App->renderer->Blit(balls, ballPositionX, ballPositionY, NULL, 1.0f, rotate, 16, 16);
		App->renderer->Blit(launcherText, 585, 999, NULL);
	}

	if (App->win->endgame == true)
	{
		App->renderer->Blit(App->win->winscreen, 0, 0);

		// Previous score
		if (App->win->prevscore == false)
		{
			App->win->previousscore = App->win->actualscore;
			App->win->prevscore = true;
		}
		sprintf_s(App->win->score_textend, 10, "%d", App->win->previousscore);
		App->fonts->BlitText(300, 400, font_score, App->win->score_textend);

		// Actual score
		App->win->actualscore = score;
		sprintf_s(App->win->score_textend, 10, "%d", App->win->actualscore);
		App->fonts->BlitText(300, 280, font_score, App->win->score_textend);

		// High score
		if (App->win->actualscore > App->win->highscore)
		{
			App->win->highscore = App->win->actualscore;
		}
		sprintf_s(App->win->score_textend, 10, "%d", App->win->highscore);
		App->fonts->BlitText(300, 520, font_score, App->win->score_textend);
		
	}

	return UPDATE_CONTINUE;
}

void ModuleSceneIntro::OnCollision(PhysBody* bodyA, PhysBody* bodyB)
{
	// Ball hit
	if (bodyB == Physbackground_1|| Physbackground_2 || bodyB == Physbottomleft || bodyB == Physbottomright || bodyB == Physrighttriangle || bodyB == Physlefttriangle || bodyB == Physlefttunnel)
	{
		App->audio->PlayFx(hit_fx);
	}

	// Birds
	if (bodyB == Physyellowbird)
	{
		yellowbird_on = true;
		addscore = true;
		if (yellow_bird_fx == false)
		{
			App->audio->PlayFx(bird_girl_fx);
			yellow_bird_fx = true;
		}
		
	}
	if (bodyB == Physgreenbird)
	{
		greenbird_on = true;
		addscore = true;
		if (green_bird_fx == false)
		{
			App->audio->PlayFx(bird_bird_fx);
			green_bird_fx = true;
		}
	}
	if (bodyB == Physorangebird)
	{
		orangebird_on = true;
		addscore = true;
		if (orange_bird_fx == false)
		{
			App->audio->PlayFx(bird_bird_fx);
			orange_bird_fx = true;
		}
	}
	if (bodyB == Physbluebird)
	{
		bluebird_on = true;
		addscore = true;
		if (blue_bird_fx == false)
		{
			App->audio->PlayFx(bird_girl_fx);
			blue_bird_fx = true;
		}
	}
	if (bodyB == Physpinkbird)
	{
		pinkbird_on = true;
		addscore = true;
		if (pink_bird_fx == false)
		{
			App->audio->PlayFx(bird_bird_fx);
			pink_bird_fx = true;
		}
	}
	if (bodyB == Physredbird)
	{
		redbird_on = true;
		addscore = true;
		if (red_bird_fx == false)
		{
			App->audio->PlayFx(bird_girl_fx);
			red_bird_fx = true;
		}
	}

	// Ninja and girl
	if (bodyB == Physninja)
	{
		ninja_on = true;
		addscore = true;
		if (ninja_one_fx == false)
		{
			App->audio->PlayFx(ninjagirl_fx);
			ninja_one_fx = true;
		}
	}
	if (bodyB == Physgirl)
	{
		girl_on = true;
		addscore = true;
		if (girl_one_fx == false)
		{
			App->audio->PlayFx(ninjagirl_fx);
			girl_one_fx = true;
		}
	}

	// Squares
	if (bodyB == Physsquare1)
	{
		square1_on = true;
		addscore = true;
		if (square1_one_fx == false)
		{
			App->audio->PlayFx(square_fx);
			square1_one_fx = true;
		}
	}
	if (bodyB == Physsquare2)
	{
		square2_on = true;
		addscore = true;
		if (square2_one_fx == false)
		{
			App->audio->PlayFx(square_fx);
			square2_one_fx = true;
		}
	}

	// Active red
	if (bodyB == Physactred1)
	{
		actred1_on = true;
		addscore = true;
		if (actred1_one_fx == false)
		{
			App->audio->PlayFx(actred_fx);
			actred1_one_fx = true;
		}
	}
	if (bodyB == Physactred2)
	{
		actred2_on = true;
		addscore = true;
		if (actred2_one_fx == false)
		{
			App->audio->PlayFx(actred_fx);
			actred2_one_fx = true;
		}
	}
	if (bodyB == Physactred3)
	{
		actred3_on = true;
		addscore = true;
		if (actred3_one_fx == false)
		{
			App->audio->PlayFx(actred_fx);
			actred3_one_fx = true;
		}
	}
	if (bodyB == Physactred4)
	{
		actred4_on = true;
		addscore = true;
		if (actred4_one_fx == false)
		{
			App->audio->PlayFx(actred_fx);
			actred4_one_fx = true;
		}
	}
	if (bodyB == Physactred5)
	{
		actred5_on = true;
		addscore = true;
		if (actred5_one_fx == false)
		{
			App->audio->PlayFx(actred_fx);
			actred5_one_fx = true;
		}
	}
	if (bodyB == Physactred6)
	{
		actred6_on = true;
		addscore = true;
		if (actred6_one_fx == false)
		{
			App->audio->PlayFx(actred_fx);
			actred6_one_fx = true;
		}
	}
	if (bodyB == Physactred7)
	{
		actred7_on = true;
		addscore = true;
		if (actred7_one_fx == false)
		{
			App->audio->PlayFx(actred_fx);
			actred7_one_fx = true;
		}
	}
	if (bodyB == Physactred8)
	{
		actred8_on = true;
		addscore = true;
		if (actred8_one_fx == false)
		{
			App->audio->PlayFx(actred_fx);
			actred8_one_fx = true;
		}
	}

	// Check bumpers
	if (bodyB == Physbumper1)
	{
		bumper1_on = true;
		addscore = true;
		App->audio->PlayFx(bouncer_fx);
	}
	else
	{
		bumper1_on = false;
	}
	if (bodyB == Physbumper2)
	{
		bumper2_on = true;
		addscore = true;
		App->audio->PlayFx(bouncer_fx);
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
		App->audio->PlayFx(bouncer_fx);
	}
	else
	{
		littlebumper1_on = false;
	}
	if (bodyB == Physlittlebumper2)
	{
		littlebumper2_on = true;
		addscore = true;
		App->audio->PlayFx(bouncer_fx);
	}
	else
	{
		littlebumper2_on = false;
	}
	if (bodyB == Physlittlebumper3)
	{
		littlebumper3_on = true;
		addscore = true;
		App->audio->PlayFx(bouncer_fx);
	}
	else
	{
		littlebumper3_on = false;
	}
	if (bodyB == Physlittlebumper4)
	{
		littlebumper4_on = true;
		addscore = true;
		App->audio->PlayFx(bouncer_fx);
	}
	else
	{
		littlebumper4_on = false;
	}
	if (bodyB == Physlittlebumper5)
	{
		littlebumper5_on = true;
		addscore = true;
		App->audio->PlayFx(bouncer_fx);
	}
	else
	{
		littlebumper5_on = false;
	}
	if (bodyB == Physlittlebumper6)
	{
		littlebumper6_on = true;
		addscore = true;
		App->audio->PlayFx(bouncer_fx);
	}
	else
	{
		littlebumper6_on = false;
	}
	if (bodyB == Physlittlebumper7)
	{
		littlebumper7_on = true;
		addscore = true;
		App->audio->PlayFx(bouncer_fx);
	}
	else
	{
		littlebumper7_on = false;
	}

	// Bonus tunnel
	if (bodyB == Physlefttunnelbonus)
	{
		lefttunnelbonus_on = true;
		App->audio->PlayFx(bonustunnel_fx);
	}

	// Dead
	if (bodyB == Physdead)
	{
		dead_on = true;
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
		App->audio->PlayFx(dead_fx);
		
		balls_number--;

		if (App->scene_intro->balls_number < 0)
		{
			App->win->endgame = true;
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
		App->audio->PlayFx(birdsbonus_fx);
		bonusbird = true;
	}

	// Big pixel bonus +500000 (squares)
	if (bonussquare == false && square1_on == true && square2_on == true)
	{
		score += 500000;
		App->audio->PlayFx(squarebonus_fx);
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
		App->audio->PlayFx(ninjagirlbonus_fx);
		bonusninjagirl = true;
	}
}
