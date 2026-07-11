$scoreboard players set @s BaseStrength $(st)
$scoreboard players set @s BaseDexterity $(dx)
$scoreboard players set @s BaseResolve $(rs)
$scoreboard players set @s BaseVitality $(vt)
$scoreboard players set @s BaseMind $(md)
$scoreboard players set @s BaseTact $(tc)
$scoreboard players set @s BaseSoul $(sl)

$scoreboard players set @s Strength $(st)
$scoreboard players set @s Dexterity $(dx)
$scoreboard players set @s Resolve $(rs)
$scoreboard players set @s Vitality $(vt)
$scoreboard players set @s MindSigned $(md)
$scoreboard players set @s Tact $(tc)
$scoreboard players set @s SoulSigned $(sl)

scoreboard players operation @s Soul = @s SoulSigned
execute as @s[scores={Soul=..-1}] run scoreboard players operation @s Soul *= @s -1
scoreboard players operation @s Mind = @s MindSigned
execute as @s[scores={Mind=..-1}] run scoreboard players operation @s Mind *= @s -1

function ec_dev:auto_set_difficulty

function rp:check_stats