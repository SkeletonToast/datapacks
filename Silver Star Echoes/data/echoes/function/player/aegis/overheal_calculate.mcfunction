scoreboard players operation @s overheal_limit = @s Resolve
scoreboard players operation @s overheal_limit *= @s sse.difficulty.health_regeneration_limit
function math:divide/int {score:overheal_limit,div:100}

execute if score @s overheal_limit < @s Tenacity run scoreboard players operation @s overheal_limit = @s Tenacity

scoreboard players operation @s[scores={TimeSinceRest=0}] overheal_limit = @s Resolve
scoreboard players set @s[scores={Vitality=0}] overheal_limit 0