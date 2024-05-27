--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--


---@type BP_FirstPersonPlayerController_C
local M = UnLua.Class()

--function M:Initialize(Initializer)
--end

-- function M:UserConstructionScript()
-- end

function M:ReceiveBeginPlay()
    ---@type UEnhancedInputLocalPlayerSubsystem
    local subsystem = UE.USubsystemBlueprintLibrary.GetLocalPlayerSubsystem(self, UE.UEnhancedInputLocalPlayerSubsystem)
    if subsystem then
        subsystem:AddMappingContext(self.InputMappingContext, 0, nil)
    end
end

-- function M:ReceiveEndPlay()
-- end

--function M:ReceiveTick(DeltaSeconds)
--end

-- function M:ReceiveAnyDamage(Damage, DamageType, InstigatedBy, DamageCauser)
-- end

-- function M:ReceiveActorBeginOverlap(OtherActor)
-- end

-- function M:ReceiveActorEndOverlap(OtherActor)
-- end

---@type BPI_PlayerCharacter_C
local BPI_PlayerCharacter = UE.UClass.Load("/Game/Blueprints/Interfaces/Player/BPI_PlayerCharacter.BPI_PlayerCharacter_C")

function M:Move(value)
    if self.Pawn then
        BPI_PlayerCharacter.OnMove(self.Pawn, value)
    end
end

function M:Look(value)
    if self.Pawn then
        BPI_PlayerCharacter.OnLook(self.Pawn, value)
    end
end

function M:Jump()
    if self.Pawn then
        BPI_PlayerCharacter.OnJump(self.Pawn)
    end
end

function M:StopJumping()
    if self.Pawn then
        BPI_PlayerCharacter.OnStopJumping(self.Pawn)
    end
end

local BindAction = UnLua.EnhancedInput.BindAction

BindAction(M, '/Game/FirstPerson/Input/Actions/IA_Jump', "Started", M.Jump)
BindAction(M, '/Game/FirstPerson/Input/Actions/IA_Jump', "Completed", M.StopJumping)
BindAction(M, '/Game/FirstPerson/Input/Actions/IA_Move', "Triggered", M.Move)
BindAction(M, '/Game/FirstPerson/Input/Actions/IA_Look', "Triggered", M.Look)

return M
