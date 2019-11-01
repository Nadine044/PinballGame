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
	void FollowBall();

public:
	p2List<PhysBody*> circles;
	p2List<PhysBody*> backgrounds;

	p2List_item<PhysBody*>* ballPos;
	

	//PhysBody* sensor;
	bool sensed = false;

	SDL_Texture* balls = nullptr;
	SDL_Texture* background = nullptr;
	SDL_Texture* launcherText = nullptr;
	SDL_Texture* HUD = nullptr;

	float rotate;
	float bouncerSpeed;

	b2PrismaticJoint* launcher_joint = NULL;

	uint bonus_fx = 0;
};
