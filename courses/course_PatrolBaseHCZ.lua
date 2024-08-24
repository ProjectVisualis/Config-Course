COURSE = {}
COURSE.code = "PPHCZ"
COURSE.name = "Procédure de patrouille en HCZ"
COURSE.icon = "icon16/user.png"
COURSE.description = "Procédure de patrouille spécifique a la HCZ"
COURSE.requirement = {"IPB"}
COURSE.callback = function(client)
    local character = client:GetCharacter()
    if not character then return false end
    if not (client:Team() == FACTION_SECURITY) then return false end
    if character:GetRank() >7 then return true end
    if character:HasCourse("HFORM") then return true end
    return false
end


return COURSE