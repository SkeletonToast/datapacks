# sounds
execute at @s if predicate ss_lib:random_1_percent if predicate ss_lib:random_50_percent run function oakfall:monsters/fogtouched_cry

# effects
effect give @s resistance 1 1 true
effect give @s fire_resistance 1 2 true
execute at @s on target if entity @s[distance=20..] run effect give @n[tag=Fogtouched] speed 1 1 true
execute at @s on target if entity @s[scores={TotalHealth=..4}] run effect give @n[tag=Fogtouched] speed 1 1 true
scoreboard players set @s[scores={frozen_timer=11..}] frozen_timer 10
execute as @s[scores={frozen_timer=1..}] if predicate ss_lib:random_1_percent run scoreboard players set @s frozen_timer 1
scoreboard players set @s[scores={shocked_timer=51..}] shocked_timer 50
execute as @s[scores={shocked_timer=1..}] if predicate ss_lib:random_1_percent run scoreboard players set @s shocked_timer 1

execute as @s if predicate ss_lib:random_1_percent if predicate ss_lib:random_50_percent if predicate ss_lib:random_50_percent if predicate ss_lib:random_50_percent run function oakfall:monsters/fogtouched_teleport
execute as @s at @s on target if entity @s[distance=15..25] as @n[tag=Fogtouched] if predicate ss_lib:random_1_percent if predicate ss_lib:random_50_percent if predicate ss_lib:random_50_percent if predicate ss_lib:random_50_percent run function oakfall:monsters/fogtouched_teleport

# fear
execute on target run scoreboard players set @s of_bravery 0
execute on target run scoreboard players add @s of_fear 5

# taking damage
execute at @s if entity @a[distance=..10,scores={DamageDealt=1..}] on attacker run playsound entity.ender_dragon.hurt hostile @a ~ ~ ~ 1 0.7
execute at @s if entity @a[distance=..10,scores={DamageDealt=1..}] on attacker run playsound entity.allay.death hostile @a ~ ~ ~ 1 0.5
execute at @s if entity @a[distance=..10,scores={DamageDealt=1..}] on attacker at @n[type=minecraft:interaction,tag=Campfire,distance=..10] if block ~ ~ ~ campfire run setblock ~ ~ ~ campfire[lit=false]
execute at @s if entity @a[distance=..10,scores={DamageDealt=1..}] on attacker at @n[type=minecraft:interaction,tag=Campfire,distance=..10] if block ~ ~ ~ soul_campfire run setblock ~ ~ ~ soul_campfire[lit=false]
execute at @s if entity @a[distance=..10,scores={DamageDealt=1..}] on attacker run effect give @s instant_health 1 0 true

# death timer
# execute at @s on target run data merge entity @n[tag=Fogtouched] {PersistenceRequired:1b}
# execute at @s on target unless entity @s[type=player,distance=..10] run scoreboard players set @n[tag=Fogtouched,scores={Age=1..}] Age -600
execute as @s[scores={Age=1..}] at @s on target if entity @s[type=player] run scoreboard players set @n[tag=Fogtouched,scores={Age=1..}] Age -1200
execute as @s[scores={Age=-1}] at @s anchored eyes run particle squid_ink ^ ^ ^ 1 1 1 0 100
execute as @s[scores={Age=-1}] at @s run tp @s ~ ~-1000 ~

# entity-specific
execute as @s[type=skeleton] at @s as @e[type=arrow,distance=..20,nbt={inGround:0b}] at @s if entity @a[distance=..5] on origin if entity @s[tag=Fogtouched] run function oakfall:monsters/fogtouched_explosion
execute as @s[type=skeleton] at @s as @e[type=arrow,distance=..20,nbt={inGround:0b}] at @s if entity @a[distance=..3] on origin if entity @s[tag=Fogtouched] run tp @s ~ ~ ~

execute as @s[type=creeper,scores={of_fogtouched_attack_cooldown=..0}] at @s if entity @a[distance=..2.8,scores={DamageTaken=0}] run function oakfall:monsters/fogtouched_explosion
execute as @s[type=creeper,scores={of_fogtouched_attack_cooldown=..0}] at @s if entity @a[distance=..10,scores={DamageDealt=1..}] run function oakfall:monsters/fogtouched_explosion

execute as @s[type=enderman] at @s on attacker if entity @s[distance=5..20] run tp @n[tag=Fogtouched,distance=0] @s

execute as @s[type=zombie,scores={of_fogtouched_attack_cooldown=..0}] at @s if entity @a[distance=..10,scores={DamageDealt=1..}] on attacker at @s as @e[type=#ss_lib:hostile,distance=0.1..10,limit=1] run function oakfall:monsters/mob_multiply
execute as @s[type=zombie,scores={of_fogtouched_attack_cooldown=..0}] at @s if entity @a[distance=..10,scores={DamageDealt=1..}] on attacker at @s unless entity @e[type=#ss_lib:hostile,distance=0.1..10] run summon zombie
execute as @s[type=zombie,scores={of_fogtouched_attack_cooldown=..0}] at @s if entity @a[distance=..10,scores={DamageDealt=1..}] on attacker run scoreboard players add @n[tag=Fogtouched] of_fogtouched_attack_cooldown 40

execute as @s[type=spider,scores={of_fogtouched_attack_cooldown=..0}] at @s if entity @a[distance=..10,scores={DamageDealt=1..}] on attacker summon spider run function oakfall:monsters/fogtouched_spider_minion
execute as @s[type=spider,scores={of_fogtouched_attack_cooldown=..0}] at @s if entity @a[distance=..10,scores={DamageDealt=1..}] on attacker summon spider run function oakfall:monsters/fogtouched_spider_minion
execute as @s[type=spider,scores={of_fogtouched_attack_cooldown=..0}] at @s if entity @a[distance=..10,scores={DamageDealt=1..}] on attacker summon spider run function oakfall:monsters/fogtouched_spider_minion
execute as @s[type=spider,scores={of_fogtouched_attack_cooldown=..0}] at @s if entity @a[distance=..10,scores={DamageDealt=1..}] on attacker run scoreboard players set @n[tag=Fogtouched] of_fogtouched_attack_cooldown 20

# wrapping up
data remove entity @s attack
scoreboard players remove @s of_fogtouched_attack_cooldown 1

# particles
execute at @s anchored eyes run particle squid_ink ^ ^ ^ 0.3 0.3 0.3 0 4
execute on target run return fail
execute at @s anchored eyes run particle squid_ink ^ ^ ^ 3 3 3 0 10