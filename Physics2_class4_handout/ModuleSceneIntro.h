#pragma once
#include "Module.h"
#include "p2List.h"
#include "p2Point.h"
#include "Globals.h"

class PhysBody;
class b2PrismaticJoint;
class b2RevoluteJoint;

class ModuleSceneIntro : public Module
{
public:
	ModuleSceneIntro(Application* app, bool start_enabled = true);
	~ModuleSceneIntro();

	bool Start();
	update_status Update();
	bool CleanUp();
	void OnCollision(PhysBody* bodyA, PhysBody* bodyB);
	void CheckBlit();
	void ScoreBlit();
	void BallsBlit();
	void BonusBlit();

public:
	p2List<PhysBody*> circles;
	p2List<PhysBody*> backgrounds;

	p2List_item<PhysBody*>* ballPos;
	

	//PhysBody* sensor;
	bool sensed = false;

	// Load textures
	SDL_Texture* balls = nullptr;
	SDL_Texture* background = nullptr;
	SDL_Texture* launcherText = nullptr;
	SDL_Texture* HUD = nullptr;

	// Load clippers textures
	SDL_Texture* clipper_left = nullptr;
	SDL_Texture* clipper_right = nullptr;

	// Load interactive textures
	SDL_Texture* yellowbird = nullptr;
	SDL_Texture* greenbird = nullptr;
	SDL_Texture* orangebird = nullptr;
	SDL_Texture* bluebird = nullptr;
	SDL_Texture* pinkbird = nullptr;
	SDL_Texture* redbird = nullptr;
	SDL_Texture* ninja = nullptr;
	SDL_Texture* girl = nullptr;
	SDL_Texture* square = nullptr;
	SDL_Texture* actred = nullptr;
	SDL_Texture* bumper = nullptr;
	SDL_Texture* littlebumper = nullptr;

	// Colliders map
	PhysBody* Physbackground_1 = nullptr;
	PhysBody* Physbackground_2 = nullptr;
	PhysBody* launcher = nullptr;
	PhysBody* Physbottomleft = nullptr;
	PhysBody* Physbottomright = nullptr;
	PhysBody* Physrighttriangle = nullptr;
	PhysBody* Physlefttriangle = nullptr;
	PhysBody* Physlefttunnel = nullptr;
	PhysBody* Physlefttunnelbonus = nullptr;

	// Colliders clippers and his axis
	PhysBody* clipper_left_axis;
	PhysBody* clipper_right_axis;
	PhysBody* clipper_left_collider;
	PhysBody* clipper_right_collider;

	// Colliders interactive
	PhysBody* Physyellowbird = nullptr;
	PhysBody* Physgreenbird = nullptr;
	PhysBody* Physorangebird = nullptr;
	PhysBody* Physbluebird = nullptr;
	PhysBody* Physpinkbird = nullptr;
	PhysBody* Physredbird = nullptr;
	PhysBody* Physninja = nullptr;
	PhysBody* Physgirl = nullptr;
	PhysBody* Physsquare1 = nullptr;
	PhysBody* Physsquare2 = nullptr;
	PhysBody* Physactred1 = nullptr;
	PhysBody* Physactred2 = nullptr;
	PhysBody* Physactred3 = nullptr;
	PhysBody* Physactred4 = nullptr;
	PhysBody* Physactred5 = nullptr;
	PhysBody* Physactred6 = nullptr;
	PhysBody* Physactred7 = nullptr;
	PhysBody* Physactred8 = nullptr;

	// Colliders bumper
	PhysBody* Physbumper1 = nullptr;
	PhysBody* Physbumper2 = nullptr;
	PhysBody* Physlittlebumper1 = nullptr;
	PhysBody* Physlittlebumper2 = nullptr;
	PhysBody* Physlittlebumper3 = nullptr;
	PhysBody* Physlittlebumper4 = nullptr;
	PhysBody* Physlittlebumper5 = nullptr;
	PhysBody* Physlittlebumper6 = nullptr;
	PhysBody* Physlittlebumper7 = nullptr;

	// Collider dead
	PhysBody* Physdead = nullptr;

	// Collider ball
	PhysBody* ball = nullptr;

	//Joints
	b2PrismaticJoint* launcher_joint = NULL;
	b2RevoluteJoint* clipper_left_joint;
	b2RevoluteJoint* clipper_right_joint;

	// Ball props
	bool ballIsCreated = false;
	bool firstBall = true;
	float rotate;
	int ballPositionX;
	int ballPositionY;

	// Flipper props
	// Right
	float clipper_right_rotation = 0;
	int clipper_right_x = 0;
	int clipper_right_y = 0;
	// Left
	float clipper_left_rotation = 0;
	int clipper_left_x = 0;
	int clipper_left_y = 0;

	// Music
	uint music = 0;

	// Fx
	uint hit_fx = 0;
	uint dead_fx = 0;
	uint flippers_left_fx = 0;
	uint flippers_right_fx = 0;
	uint bird_bird_fx = 0;
	uint bird_girl_fx = 0;
	uint ninjagirl_fx = 0;
	uint bouncer_fx = 0;
	uint square_fx = 0;
	uint actred_fx = 0;
	uint bonustunnel_fx = 0;
	uint birdsbonus_fx = 0;
	uint squarebonus_fx = 0;
	uint ninjagirlbonus_fx = 0;
	uint springpull_fx = 0;
	uint springrelease_fx = 0;

	// Play fx one time
	bool yellow_bird_fx = false;
	bool green_bird_fx = false;
	bool orange_bird_fx = false;
	bool blue_bird_fx = false;
	bool pink_bird_fx = false;
	bool red_bird_fx = false;
	bool ninja_one_fx = false;
	bool girl_one_fx = false;
	bool square1_one_fx = false;
	bool square2_one_fx = false;
	bool actred1_one_fx = false;
	bool actred2_one_fx = false;
	bool actred3_one_fx = false;
	bool actred4_one_fx = false;
	bool actred5_one_fx = false;
	bool actred6_one_fx = false;
	bool actred7_one_fx = false;
	bool actred8_one_fx = false;
	bool flippers_left_one_fx = false;
	bool flippers_right_one_fx = false;
	bool spring_fx = false;
	
	// Make interactive appear
	bool yellowbird_on = false;
	bool greenbird_on = false;
	bool orangebird_on = false;
	bool bluebird_on = false;
	bool pinkbird_on = false;
	bool redbird_on = false;
	bool ninja_on = false;
	bool girl_on = false;
	bool square1_on = false;
	bool square2_on = false;
	bool actred1_on = false;
	bool actred2_on = false;
	bool actred3_on = false;
	bool actred4_on = false;
	bool actred5_on = false;
	bool actred6_on = false;
	bool actred7_on = false;
	bool actred8_on = false;
	
	// Bumpers
	bool bumper1_on = false;
	bool bumper2_on = false;
	bool littlebumper1_on = false;
	bool littlebumper2_on = false;
	bool littlebumper3_on = false;
	bool littlebumper4_on = false;
	bool littlebumper5_on = false;
	bool littlebumper6_on = false;
	bool littlebumper7_on = false;
	float bouncerSpeed;

	// Tunnel bonus
	bool lefttunnelbonus_on = false;

	// Dead
	bool dead_on = false;

	// Score
	int font_score = -1;
	char score_text[10];
	uint score = 0;
	bool addscore = false;

	// Balls
	char score_balls[10];
	int balls_number = 3;

	// Bonus
	bool bonusbird = false;
	bool bonussquare = false;
	bool bonusninjagirl = false;
};