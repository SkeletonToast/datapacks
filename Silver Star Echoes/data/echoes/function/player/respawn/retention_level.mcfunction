scoreboard players operation @s sse.respawn.retention_level = @s BaseVitality
    function math:absolute_value {score:sse.respawn.retention_level}
    function math:percentage {base_score:sse.respawn.retention_level,percentage:150}
    scoreboard players add @s sse.respawn.retention_level 25