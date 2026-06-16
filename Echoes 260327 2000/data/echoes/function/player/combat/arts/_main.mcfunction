scoreboard objectives add test_used_iron_hoe dummy

scoreboard players add @a[advancements={echoes:using_iron_hoe=true}] test_used_iron_hoe 5
# execute as @a[advancements={echoes:using_iron_hoe=true}] at @s anchored eyes facing ^ ^ ^1 run function echoes:player/combat/arts/dash
execute as @a[advancements={echoes:using_iron_hoe=false},scores={test_used_iron_hoe=1..}] at @s anchored eyes facing ^ ^ ^1 run function parse:score_unended {"function":"echoes:player/combat/arts/dash","score":"test_used_iron_hoe"}
# execute as @a[advancements={echoes:using_iron_hoe=false},scores={test_used_iron_hoe=1..}] at @s anchored eyes facing ^ ^ ^1 run function echoes:player/combat/arts/dash
scoreboard players set @a[advancements={echoes:using_iron_hoe=false}] test_used_iron_hoe 0
advancement revoke @a[advancements={echoes:using_iron_hoe=true}] only echoes:using_iron_hoe