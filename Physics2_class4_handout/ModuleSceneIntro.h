#pragma once
#include "Module.h"
#include "p2List.h"
#include "p2Point.h"
#include "Globals.h"

class PhysBody;

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
	void pushBouncer(float speed);

public:
	p2List<PhysBody*> circles;
	p2List<PhysBody*> backgrounds;

	p2List_item<PhysBody*>* ballPos;
	

	//PhysBody* sensor;
	bool sensed = false;

	SDL_Texture* balls = nullptr;
	SDL_Texture* background = nullptr;
	SDL_Texture* bouncerText = nullptr;
	SDL_Texture* HUD = nullptr;

	PhysBody* Physbackground = nullptr;
	PhysBody* bouncer = nullptr;
	PhysBody* ball = nullptr;

	float rotate;
	float bouncerSpeed = 2;

	uint bonus_fx = 0;
};
