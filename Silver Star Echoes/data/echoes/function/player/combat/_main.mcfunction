scoreboard players set @a[scores={TimeSinceDeath=1}] in_combat 0
scoreboard players set @a[scores={in_combat=..-2}] in_combat 0

execute as @a[tag=InCombat] run function ss_lib:fetch/item_selected {s:"@s"}
execute as @a[tag=InCombat,scores={ItemSelected=0}] run attribute @s attack_damage modifier add echoes:unarmed.attack_damage 1 add_value
execute as @a[tag=!InCombat] run attribute @s attack_damage modifier remove echoes:unarmed.attack_damage
execute as @a[scores={ItemSelected=1}] run attribute @s attack_damage modifier remove echoes:unarmed.attack_damage

# smooth sprinting
# execute as @a[tag=InCombat] run trigger sse.gamerule.smooth_sprinting set 0
# execute as @a[tag=!InCombat] run trigger sse.gamerule.smooth_sprinting set 1

# dealing damage to enter combat
    # execute as @a[scores={DamageDealt=1..,in_combat=0}] run scoreboard players operation @s in_combat -= @s Initiative

execute as @a[scores={DamageDealt=1..,in_combat=0}] run function echoes:player/combat/enter/damage
execute as @a[scores={DamageDealt=1..,in_combat=0}] run function echoes:player/combat/enter {value:20000,chain_distance:5,ignore_in_combat:true}
execute as @a[scores={DamageDealt=1..,in_combat=0..10000}] run function echoes:player/combat/enter {value:10000,chain_distance:0,ignore_in_combat:false}

execute as @a[scores={UsingShield=1..,in_combat=0}] run function echoes:player/combat/enter {value:10000,chain_distance:0,ignore_in_combat:true}
execute as @a[scores={UsingBow=1..,in_combat=0}] run function echoes:player/combat/enter {value:10000,chain_distance:0,ignore_in_combat:true}
execute as @a[scores={used_goat_horn=1..}] at @s as @a[distance=..30] run function echoes:player/combat/enter {value:60000,chain_distance:10,ignore_in_combat:true}
scoreboard players add @a[scores={in_combat=0},advancements={ss_armory:gun/shot_crossbow=true}] in_combat 10000

# taking damage to enter combat
execute as @a[scores={DamageTaken=1..,in_combat=0..29999}] at @s on attacker if entity @s[type=player] run scoreboard players set @p[distance=0] in_combat 30000
execute as @a[scores={DamageTaken=1..,in_combat=0..19999}] at @s on attacker if entity @s[type=!player] run scoreboard players set @p[distance=0] in_combat 20000

# hostile mob combat targeting
execute as @a[scores={in_combat=1..4999}] at @s as @e[type=#ss_lib:hostile,distance=..10] on target if entity @s[type=player] run scoreboard players set @s in_combat 5000
execute as @a[scores={in_combat=1..4999}] at @s if entity @e[type=#ss_lib:hostile,distance=..5] run scoreboard players set @s in_combat 5000

# function echoes:player/combat/arts/_main