COURSE = {}
COURSE.code = "HARM"
COURSE.name = "Habilitation d'armurier"
COURSE.icon = "icon16/user.png"
COURSE.description = "Habilitation pour être armurier."
COURSE.requirement = {}
COURSE.callback = function(client)
    local character = client:GetCharacter()
    if not character then return false end
    if not (client:Team() == FACTION_SECURITY) then return false end

    if character:GetRank() >1 then return true end -- Pas de recrue.
    return false
end

return COURSE