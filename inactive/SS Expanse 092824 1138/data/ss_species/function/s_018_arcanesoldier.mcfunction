scoreboard players set @a[scores={species=018}] class002 1
scoreboard players set @a[scores={species=018}] class003 1
scoreboard players set @a[scores={species=018}] class004 1

# shield strength block
effect give @a[scores={species=018,class003-01=1..}] strength 1 0 true
scoreboard players set @a[scores={class003-01=1..}] class003-01 0
scoreboard players set @a[scores={species=018}] ParryChargeMax 400
scoreboard players set @a[scores={species=018}] ParryPenalty -120
execute as @a[scores={species=018}] if score @s ParryCharges < @s ParryChargeMax run scoreboard players add @s ParryCharges 2

# shield break
# execute as @a[scores={species=018,species018-02=1..}] at @s as @e[distance=..10] unless entity @s[scores={species=018}] run effect give @s weakness 10 9 true
# execute as @a[scores={species=018,species018-02=1..}] at @s run effect give @e[distance=..10,scores={species=018}] weakness 10 2 true
# execute as @a[scores={species=018,species018-02=1..}] at @s as @e[distance=..10] unless entity @s[scores={species=018}] run effect give @s slowness 10 2 true
# execute as @a[scores={species=018,species018-02=1..}] at @s run effect give @e[distance=..10,scores={species=018}] slowness 10 0 true
# execute as @a[scores={species=018,species018-02=1..}] at @s as @e[distance=..10] unless entity @s[scores={species=018}] run effect give @s jump_boost 10 200 true
# execute as @a[scores={species=018,species018-02=1..}] at @s run effect give @a[distance=..10] blindness 1 0 true
# execute as @a[scores={species=018,species018-02=1..}] at @s anchored eyes as @e[distance=..10] run particle sonic_boom ^ ^ ^1
# execute as @a[scores={species=018,species018-02=1..}] at @s run particle explosion_emitter ~ ~ ~
# execute as @a[scores={species=018,species018-02=1..}] at @s anchored eyes run particle sonic_boom ^ ^ ^1
# execute as @a[scores={species=018,species018-02=1..}] at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 2
# scoreboard players set @a[scores={species018-02=1..}] species018-02 0