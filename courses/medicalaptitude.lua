COURSE = {}
COURSE.code = "AMS"
COURSE.name = "Aptitude Médical au Service"
COURSE.icon = "icon16/user.png"
COURSE.description = "Decerné par un medecin"
COURSE.requirement = {}
COURSE.callback = function(client)
    local character = client:GetCharacter()
    if not character then return end
    if client:Team() == FACTION_MEDIC then
        return character:GetRank() > 3
    elseif client:Team() == FACTION_SECURITY then
        return character:GetRank() > 12
    else
        return false
    end
end

return COURSE