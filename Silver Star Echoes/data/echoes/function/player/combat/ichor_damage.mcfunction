function ss_lib:fetch/absorption {s:"@s",bypass_check:true}
execute as @s[scores={Absorption=0}] run return fail

$scoreboard players set @s generic_a $(value)
$execute if score @s Absorption > @s generic_a run damage @s $(value) echoes:ichor

execute if score @s Absorption <= @s generic_a run function parse:simple {score:Absorption,function:"echoes:player/combat/ichor_damage_deal"}