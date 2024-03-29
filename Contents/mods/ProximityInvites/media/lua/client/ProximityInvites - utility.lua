local proximityInvites = {}

function proximityInvites.validPlayerToPlayerDistance(playerA, playerB)
    if not playerA or not playerB then return false end
    local distanceCap = math.max(100, SandboxVars.ProximityInvites.range) or 10
    if (distanceCap == -1) or (playerA:DistTo(playerB) <= SandboxVars.ProximityInvites.range) then return true end
    return false
end

return proximityInvites