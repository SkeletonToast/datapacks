scoreboard players set @s sse.respawn.retention_level 50
execute as @s if score @s BaseVitality matches 1.. if score @s BaseVitality < @s sse.respawn.retention_level run \
    scoreboard players operation @s sse.respawn.retention_level = @s BaseVitality
    function math:absolute_value {score:sse.respawn.retention_level}
    function math:percentage {base_score:sse.respawn.retention_level,percentage:150}
    scoreboard players add @s sse.respawn.retention_level 25