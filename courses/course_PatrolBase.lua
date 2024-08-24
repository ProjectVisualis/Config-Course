COURSE = {}
COURSE.code = "IPB"
COURSE.name = "Introduction au Procédure de Patrouille"
COURSE.icon = "icon16/user.png"
COURSE.description = "Règles de base en patrouille"
COURSE.requirement = {}
COURSE.callback = function(client)
    local character = client:GetCharacter()
    if not character then return false end
    if not (client:Team() == FACTION_SECURITY) then return false end
    if character:GetRank() >7 then return true end
    if character:HasCourse("HFORM") then return true end
    return false
end


return COURSE