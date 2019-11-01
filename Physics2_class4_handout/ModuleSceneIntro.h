#pragma once
#include "Module.h"
#include "p2List.h"
#include "p2Point.h"
#include "Globals.h"

class PhysBody;
class b2PrismaticJoint;

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

	float rotate;
	float bouncerSpeed;

	// Colliders map
	PhysBody* Physbackground = nullptr;
	PhysBody* launcher = nullptr;

	PhysBody * Physbottomleft = nullptr;
	PhysBody* Physbottomright = nullptr;
	PhysBody* Physrighttriangle = nullptr;
	PhysBody* Physlefttriangle = nullptr;
	PhysBody* Physlefttunnel = nullptr;

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

	PhysBody* ball = nullptr;

	b2PrismaticJoint* launcher_joint = NULL;

	// Fx
	uint bonus_fx = 0;

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
};