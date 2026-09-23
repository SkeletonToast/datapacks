scoreboard players set @a[scores={TimeSinceDeath=1}] in_combat 0
scoreboard players set @a[scores={in_combat=..-2}] in_combat 0

execute as @a[tag=InCombat] run function ss_lib:fetch/item_selected {s:"@s"}
execute as @a[tag=InCombat,scores={ItemSelected=0}] run attribute @s attack_damage modifier add echoes:unarmed.attack_damage 1 add_value
execute as @a[tag=!InCombat] run attribute @s attack_damage modifier remove echoes:unarmed.attack_damage
execute as @a[scores={ItemSelected=1}] run attribute @s attack_damage modifier remove echoes:unarmed.attack_damage

# smooth sprinting
# execute as @a[tag=InCombat] run trigger smoothSprinting set 0
# execute as @a[tag=!InCombat] run trigger smoothSprinting set 1

# dealing damage to enter combat
    # execute as @a[scores={DamageDealt=1..,in_combat=0}] run scoreboard players operation @s in_combat -= @s Initiative

execute as @a[scores={DamageDealt=1..,in_combat=0}] run function echoes:player/combat/enter_combat_damage
scoreboard players add @a[scores={DamageDealt=1..,in_combat=0}] in_combat 20000
scoreboard players add @a[scores={DamageDealt=1..,in_combat=0..10000}] in_combat 10000

scoreboard players add @a[scores={UsingShield=1..,in_combat=0}] in_combat 10000
scoreboard players add @a[scores={UsingBow=1..,in_combat=0}] in_combat 10000
execute as @a[scores={used_goat_horn=1..}] at @s run scoreboard players add @a[distance=..30,scores={in_combat=0}] in_combat 20000
scoreboard players add @a[scores={in_combat=0},advancements={ss_armory:gun/shot_crossbow=true}] in_combat 10000

# taking damage to enter combat
execute as @a[scores={DamageTaken=1..,in_combat=0..29999}] at @s on attacker if entity @s[type=player] run scoreboard players set @p[distance=0] in_combat 30000
    # execute as @a[scores={DamageTaken=1..}] at @s on attacker if entity @s[type=player] run scoreboard players operation @p[distance=0] in_combat += @s Initiative
execute as @a[scores={DamageTaken=1..,in_combat=0..19999}] at @s on attacker if entity @s[type=!player] run scoreboard players set @p[distance=0] in_combat 20000

# hostile mob combat targeting
execute as @a[scores={in_combat=1..4999}] at @s as @e[type=#ss_lib:hostile,distance=..10] on target if entity @s[type=player] run scoreboard players set @s in_combat 5000
execute as @a[scores={in_combat=1..4999}] at @s if entity @e[type=#ss_lib:hostile,distance=..5] run scoreboard players set @s in_combat 5000

# function echoes:player/combat/arts/_main