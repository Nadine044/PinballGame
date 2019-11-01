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
	SDL_Texture* rightFlipperText = nullptr;
	SDL_Texture* leftFlipperText = nullptr;

	// Load interactive textures
	SDL_Texture* orangebird = nullptr;

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
	PhysBody* right_flipper = nullptr;
	PhysBody* left_flipper = nullptr;

	//Joints
	b2PrismaticJoint* launcher_joint = NULL;
	b2RevoluteJoint* flipper_r_joint = NULL;
	b2RevoluteJoint* flipper_l_joint = NULL;

	SDL_Rect flipper_rect;
	SDL_Rect flipper_rect_r;

	// Fx
	uint bonus_fx = 0;

	// Make interactive appear
	bool orangebird_on = false;

	//Flipper actions ===============================
	void engageFlipper(PhysBody *flipper, float impulse);
};
