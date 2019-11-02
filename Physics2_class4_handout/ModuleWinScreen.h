#pragma once
#include "Module.h"
#include "p2List.h"
#include "p2Point.h"
#include "Globals.h"

class ModuleWinScreen : public Module
{
public:
	ModuleWinScreen(Application* app, bool start_enabled = true);
	virtual ~ModuleWinScreen();

	bool Start();
	update_status Update();
	bool CleanUp();

public:

	SDL_Texture* winscreen = nullptr;

	bool endgame = false;


};
