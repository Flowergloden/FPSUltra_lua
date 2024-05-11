// Copyright Epic Games, Inc. All Rights Reserved.

#include "FPSUltra_luaGameMode.h"
#include "FPSUltra_luaCharacter.h"
#include "UObject/ConstructorHelpers.h"

AFPSUltra_luaGameMode::AFPSUltra_luaGameMode()
	: Super()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnClassFinder(TEXT("/Game/FirstPerson/Blueprints/BP_FirstPersonCharacter"));
	DefaultPawnClass = PlayerPawnClassFinder.Class;

}
