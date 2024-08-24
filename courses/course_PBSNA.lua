COURSE = {}
COURSE.code = "PBS"
COURSE.name = "Introduction et présentation de base du site."
COURSE.icon = "icon16/user.png"
COURSE.description = "Peut être dispensé par un formateur habilité ou un sergent."
COURSE.requirement = {}
COURSE.callback = function(client)
    local character = client:GetCharacter()
    if not character then return false end
    if not (client:Team() == FACTION_SECURITY) then return false end
    if character:GetRank() >5 then return true end
    if character:HasCourse("HFORM") then return true end
    return false
end

return COURSE