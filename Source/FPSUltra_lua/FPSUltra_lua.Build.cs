// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;

public class FPSUltra_lua : ModuleRules
{
	public FPSUltra_lua(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;

		PublicDependencyModuleNames.AddRange(new string[] { "Core", "CoreUObject", "Engine", "InputCore", "EnhancedInput" });
	}
}
