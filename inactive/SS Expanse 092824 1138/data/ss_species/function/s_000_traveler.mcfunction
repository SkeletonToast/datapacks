scoreboard players set @a[scores={species=000}] ability007 1
scoreboard players add @a[scores={species=000,StaggerEligible=1}] trait001 1
tag @a[scores={species=000}] add UnlockedParrying
    # execute store result score @s ParryChargeMax run attribute @s generic.armor get 10
    # scoreboard players set @s ParryPenalty -80
    # scoreboard players operation @s ParryPenalty -= @s TotalHealth
tag @a[scores={species=000}] add RelicUser
tag @a[scores={species=000}] add Staggerable

scoreboard players add @s[scores={Staggered=0,StaggerEligible=0}] StaggerRechargeTimer 1

execute as @a[scores={species=000,Food=..15}] if score @s Health >= @s BaseMaxHealth run effect give @s minecraft:saturation 1 0 true