# basic parrying
scoreboard players remove @s[scores={UsingShield=1..,ParryWindow=1..}] ParryWindow 1
execute as @s[scores={UsingShield=1}] if score @s UsingShield <= @s ParryWindow if score @s ParryWindow < @s ParryWindowMax run scoreboard players remove @s ParryWindow 2

scoreboard players operation @s[scores={SoftTimeSinceDeath=..1}] ParryCharges = @s ParryChargeMax
scoreboard players operation @s[scores={DamageTaken=1..}] ParryDamageTaken = @s DamageTaken

# multiplier calculation pre-parry
scoreboard players add @s[scores={Staggered=1}] ParryMultiplier 1
execute as @s[scores={DamageTaken=1..}] at @s on attacker if entity @s[scores={WeaponWeight=1}] as @p[distance=0] run scoreboard players add @s ParryMultiplier 1
scoreboard players set @s[scores={UsingShield=..2}] ParryMultiplier 1

scoreboard players operation @s[scores={ParryMultiplier=1..}] ParryWindow /= @s ParryMultiplier

# parry tag assignment
execute as @s[tag=!Parried,scores={UsingShield=1..,ParryCharges=1..}] unless entity @s[scores={Staggered=1}] if score @s UsingShield <= @s ParryWindow run function ss_statuses:fortified {"multiplier":"2"}
execute as @s[tag=!Parried,scores={UsingShield=1..,ParryCharges=1..,ParryDamageTaken=1..}] if score @s UsingShield <= @s ParryWindow on attacker on target run tag @s add Parried
execute as @s[tag=!Parried,scores={UsingShield=1..,ParryCharges=1..,ParryDamageTaken=1..}] at @s if score @s UsingShield <= @s ParryWindow on attacker if entity @s[scores={DamageDealt=1..}] as @p[distance=0] run tag @s add Parried

scoreboard players operation @s[scores={ParryMultiplier=1..}] ParryDamageTaken *= @s ParryMultiplier

scoreboard players operation @s[tag=Parried] ParryCharges -= @s UsingShield
scoreboard players operation @s[tag=Parried] ParryCharges -= @s UsingShield
    # base charge deduction
scoreboard players operation @s[tag=Parried] ParryCharges -= @s ParryDamageTaken
    # damage-based charge deduction
scoreboard players operation @a[scores={ParryCharges=..0,ParryDamageTaken=1..}] ParryCharges -= @s ParryDamageTaken
    # deduction based on any damage taken while exhausted
scoreboard players operation @s[scores={ParryCharges=..0},tag=Parried] ParryCharges = @s ParryPenalty
    # penalty assignment
execute as @a[scores={ParryCharges=..0}] if score @s ParryCharges < @s ParryPenalty run scoreboard players operation @s ParryCharges = @s ParryPenalty
    # penalty cap

scoreboard players add @s[scores={DamageDealt=50..}] ParryCharges 10
execute if score @s ParryCharges < @s ParryChargeMax run scoreboard players add @s ParryCharges 2
title @a[scores={ParryCharges=..0}] times 0 3t 2t
title @a[scores={ParryCharges=..0}] title [""]
title @a[scores={ParryCharges=..0}] subtitle [{"text":"- Parries Exhausted -","color":"#999999"}]
execute as @a[scores={ParryCharges=..0}] run schedule function ss_library:schedule_title_times 6t

# parry healing
    # if possible, check whether storage rounding is up, or down, or just standard.
    # this system assumes that storage rounding is always rounding down, so it just assigns an automatic one second for any damage less than 1.7 hearts, which is the minimum required to have a Duration of 1.
    # maybe also add in systems that'll heal faster for more damage taken.
    # this is the formula for finding the data storage scale for each level: (0.1 / [half hearts per second])
execute as @s[tag=Parried] run function ss_core:parry_healing_storage with entity @s
    # scoreboard players operation @s[tag=Parried] recover_timer += @s DamageTaken

effect give @s[tag=Parried,scores={Food=..7}] minecraft:saturation 1 0 true
effect give @s[tag=Parried] minecraft:strength 1 1 true
execute as @s[tag=Parried] on attacker run effect give @s minecraft:weakness 1 4 true
execute as @s[tag=Parried] on attacker run effect give @s minecraft:slowness 1 1 true
execute as @s[tag=Parried] at @s anchored eyes run particle minecraft:flash ^ ^ ^1
execute as @s[tag=Parried] at @s run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 1 1

scoreboard players set @s[tag=Parried] DamageTaken 0
execute as @s[tag=Parried] on attacker run scoreboard players set @s DamageDealt 0

# score setting
scoreboard players operation @s[tag=Parried] ParryWindow = @s ParryWindowMax
execute as @s[scores={UsingShield=0}] if score @s ParryWindow < @s ParryWindowMax run scoreboard players add @s ParryWindow 1

# score resetting
tag @s remove UnlockedParrying
tag @s[tag=Parried] remove Parried

scoreboard players set @s[scores={Armor=..15}] ParryChargeMax 200
scoreboard players set @s[scores={Armor=16..}] ParryChargeMax 13
    scoreboard players operation @s[scores={Armor=16..}] ParryChargeMax *= @s Armor
scoreboard players set @s ParryPenalty -60
scoreboard players set @s ParryDamageTaken 0
scoreboard players set @s ParryMultiplier 1
scoreboard players set @s ParryWindowMax 20