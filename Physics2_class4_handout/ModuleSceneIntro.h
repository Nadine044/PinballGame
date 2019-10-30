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
	void CreateBall();

public:
	p2List<PhysBody*> circles;
	p2List<PhysBody*> boxes;
	p2List<PhysBody*> ricks;
	p2List<PhysBody*> backgrounds;
	

	PhysBody* sensor;
	bool sensed = false;

	SDL_Texture* circle = nullptr;
	SDL_Texture* box = nullptr;
	SDL_Texture* rick = nullptr;
	SDL_Texture* background = nullptr;

	PhysBody* Physbackground = nullptr;

	uint bonus_fx = 0;
};
