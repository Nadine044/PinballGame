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
	
	// Score
	int actualscore = 0;
	int previousscore = 0;
	int highscore = 0;

	bool prevscore = false;

	char score_textend[10];
};
