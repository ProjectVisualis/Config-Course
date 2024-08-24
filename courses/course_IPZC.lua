COURSE = {}
COURSE.code = "IPZC"
COURSE.name = "Introduction au Procédure de la Zone Carcérale"
COURSE.icon = "icon16/user.png"
COURSE.description = "https://docs.google.com/document/d/16tq0mm8Nqnxcn0JWGyubRbqmXoO5qBOD57-k4trznFA/edit"
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