# ichor-groove dagger

execute unless score @s aegis_amplifier_max matches 0..

scoreboard players remove @s aegis_amplifier_max 1
scoreboard players operation @s generic_s = @s Soul
scoreboard players set @s[scores={generic_s=51..}] generic_s 50

function parse:score_unended {score:generic_s,function:"talisman:talismans/bank_1/ichor_groove_dagger"}