COURSE = {}
COURSE.code = "PPLCZ"
COURSE.name = "Procédure de patrouille en LCZ"
COURSE.icon = "icon16/user.png"
COURSE.description = "Procédure de patrouille spécifgique a la LCZ"
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