$execute as @s[scores={frenzied_active=-1}] run function ss_lib:status/_display_status {"type":"+","color":"#ff1a7a","status":"Frenzied",append:" (+$(amplifier))"}

scoreboard players operation @s[scores={bleeding_timer=1..}] frenzied_timer += @s bleeding_timer
scoreboard players set @s[scores={bleeding_timer=1..}] bleeding_timer 0
$attribute @s minecraft:attack_damage modifier add frenzied_attack_damage $(amplifier) add_multiplied_total

$effect give @s speed 1 $(amplifier) true
$effect give @s hunger 1 $(amplifier) true

execute as @s[scores={DamageDealt=1..}] run scoreboard players operation @s frenzied_damage += @s DamageDealt
execute as @s[scores={DamageDealt=1..}] run scoreboard players operation @s bleeding_damage += @s frenzied_damage

$execute run function ss_lib:status/bleeding {"damage":"$(amplifier)"}
scoreboard players set @s bleeding_timer -1

scoreboard players set @s frenzied_active 1