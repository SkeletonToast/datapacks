tag @a remove DracowingsStage0
tag @a remove DracowingsStage1
tag @a remove DracowingsStage2
tag @a remove DracowingsStage3
tag @a remove DracowingsStage4
tag @a remove NoItemSelected
tag @a remove HoldingHeavyWeapon
tag @a remove Naked
tag @a remove Armorless
tag @a remove InWater
tag @a remove InWaterHead

scoreboard players set @a[scores={species=025,species025-05=..9}] species025-05 10

scoreboard players set @a ability007 1
execute as @a unless entity @s[scores={Staggered=1}] run tag @s add UnlockedParrying