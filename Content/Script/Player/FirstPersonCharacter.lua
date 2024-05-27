--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

---@type BP_FirstPersonCharacter_C
local M = UnLua.Class()

-- function M:ReceiveBeginPlay()
-- end

-- function M:ReceiveTick(DeltaSeconds)
-- end

function M:OnJump()
    self:Jump()
end

function M:OnStopJumping()
    self:StopJumping()
end

function M:OnMove(value)
    if self.Controller then
        self:AddMovementInput(self:GetActorForwardVector(), value.y)
        self:AddMovementInput(self:GetActorRightVector(), value.x)
    end
end

function M:OnLook(value)
    if self.Controller then
        self:AddControllerYawInput(value.x)
        self:AddControllerPitchInput(value.y)
    end
end

return M
