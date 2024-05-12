--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--


---@type BP_FirstPersonPlayerController_C
local M = UnLua.Class()

local Screen = require "Utils.Screen"

--function M:Initialize(Initializer)
--end

-- function M:UserConstructionScript()
-- end

--function M:ReceiveBeginPlay()
--end

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

function M:Move()
    MovementVector = Screen.Print("Hello")
end

local BindAction = UnLua.EnhancedInput.BindAction

BindAction(M, '/Game/FirstPerson/Input/Actions/IA_Jump', "Triggered", M.Move)

return M
