scoreboard players add @a AttackSpeedCapTimer 0

execute as @a store result score @s AttackSpeed run attribute @s attack_speed get 100
scoreboard players set @a AttackSpeedCap 50
    # value that attack speed will be capped at, scaled by 10, so that it's easy to change

execute as @a run attribute @s attack_speed modifier remove attack_speed_cap
execute as @a[scores={DamageDealt=1..,AttackSpeedCapTimer=0}] at @s anchored eyes run playsound block.stone.break player @s ^ ^ ^ 0.7 1.2

scoreboard players set @a[scores={DamageDealt=1..}] AttackSpeedCapTimer 200
execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s AttackSpeedCapTimer /= @s AttackSpeedCap

execute as @a[scores={DamageDealt=1..,AttackSpeedCapTimer=1..}] at @s anchored eyes run playsound minecraft:entity.player.attack.weak player @s ^ ^ ^ 2 1.3

execute as @a[scores={AttackSpeedCapTimer=1..}] unless items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ss_enchants:barrage"}]] run attribute @s attack_damage modifier add attack_damage_speed_cap -1 add_multiplied_total
execute as @a[scores={AttackSpeedCapTimer=1..}] run function ss_armory:attack_speed_cap/main {"sign":"-"}

# old - would double excess attack speed if it was over the threshold
    # execute as @a[scores={AttackSpeedCapTimer=0}] run function ss_armory:attack_speed_cap/main {"sign":""}

execute as @a[scores={AttackSpeedCapTimer=0}] run attribute @s attack_damage modifier remove attack_damage_speed_cap

scoreboard players remove @a[scores={AttackSpeedCapTimer=1..}] AttackSpeedCapTimer 1

# this institutes the cap but doesn't update the damage indicator, im just going to leave it as is for now