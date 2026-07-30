scoreboard players set @a[scores={TimeSinceDeath=1}] in_combat 0
scoreboard players set @a[scores={in_combat=..-2}] in_combat 0

execute as @a[tag=InCombat] run function ss_lib:fetch/item_selected {"s":"@s"}
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
scoreboard players add @a[scores={used_goat_horn=1..,in_combat=0}] in_combat 20000
scoreboard players add @a[scores={in_combat=0},advancements={ss_armory:gun/shot_crossbow=true}] in_combat 10000

# taking damage to enter combat
execute as @a[scores={DamageTaken=1..,in_combat=0..29999}] at @s on attacker if entity @s[type=player] run scoreboard players set @p[distance=0] in_combat 30000
    # execute as @a[scores={DamageTaken=1..}] at @s on attacker if entity @s[type=player] run scoreboard players operation @p[distance=0] in_combat += @s Initiative
execute as @a[scores={DamageTaken=1..,in_combat=0..19999}] at @s on attacker if entity @s[type=!player] run scoreboard players set @p[distance=0] in_combat 20000

# hostile mob combat targeting
execute as @a[scores={in_combat=1..4999}] at @s as @e[type=#ss_lib:hostile,distance=..10] on target if entity @s[type=player] run scoreboard players set @s in_combat 5000
execute as @a[scores={in_combat=1..4999}] at @s if entity @e[type=#ss_lib:hostile,distance=..5] run scoreboard players set @s[scores={in_combat=0..4999}] in_combat 5000

# techniques
execute as @e[tag=TechniqueProd] run attribute @s gravity modifier remove technique.prod.gravity
execute as @a[tag=InCombat,scores={proficiency=200..}] run function echoes:player/combat/techniques/_main

    execute as @a[scores={SneakTime=0}] run function echoes:player/combat/techniques/prod_disable
    execute as @a[scores={SneakTime=6}] run function echoes:player/combat/techniques/prod_disable

    execute as @a[predicate=!ss_lib:is/sprinting] run function echoes:player/combat/techniques/repel_disable
    execute as @a[predicate=!ss_lib:is/ascending] run function echoes:player/combat/techniques/repel_disable
    execute as @a[scores={OnGround=1}] run function echoes:player/combat/techniques/repel_disable

execute as @a[scores={in_combat=1..},tag=!InCombat] run function echoes:player/combat/enter_message
tag @a[scores={in_combat=1..}] add InCombat
tag @a[scores={in_combat=-1}] add InCombat
execute as @a[scores={in_combat=0},tag=InCombat] run function echoes:player/combat/exit_message
execute as @a[scores={in_combat=0},tag=InCombat] run function echoes:player/combat/techniques/disable
tag @a[scores={in_combat=0}] remove InCombat

# function echoes:player/combat/arts/_main