COURSE = {}
COURSE.code = "HFORM"
COURSE.name = "Habilitation de Formateur"
COURSE.icon = "icon16/user.png"
COURSE.description = "Habilitation pour être formateur."
COURSE.requirement = {}
COURSE.callback = function(client)
    local character = client:GetCharacter()
    if not character then return false end
    if not (client:Team() == FACTION_SECURITY) then return false end

    if character:GetRank() >3 then return true end -- Pas de soldat.
    return false
end


return COURSE