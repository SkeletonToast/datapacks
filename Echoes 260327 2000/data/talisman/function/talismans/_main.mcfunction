$scoreboard players add @a talisman.active_talismans.$(value) 0

execute as @a run attribute @s attack_speed modifier remove talisman.1.9.attack_speed

$execute as @a unless score @s talisman.active_talismans.$(value) matches 0 run function ss_lib:bitpack/dissect {score:talisman.active_talismans.$(value),namespace_1:"talisman:talismans/bank_$(value)/_id_",namespace_2:""}

# bank 1
scoreboard players remove @a[scores={talisman.1.9.damage_timer=1..}] talisman.1.9.damage_timer 1

# $execute as @a[scores={talisman.$(value).equipped=1}] run function talisman:talismans/id/$(value)