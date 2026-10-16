$execute as $(s) if score @s ArmorType matches -1 if entity @s[scores={Armor=1..}] run function ss_lib:fetch/gear/armor_type
$execute as $(s) if score @s ArmorToughness matches -1 store result score @s ArmorToughness run attribute @s armor_toughness get

$execute as $(s) run scoreboard players operation @s ArmorWeight = @s ArmorType
$execute as $(s) run scoreboard players operation @s ArmorWeight += @s ArmorToughness
$execute as $(s) run scoreboard players operation @s ArmorWeight *= #const.2 value

$execute as $(s) run scoreboard players set @s[scores={HelmetType=0,ChestplateType=0,LeggingsType=0,BootsType=0}] Armorless 1
$execute as $(s) run scoreboard players set @s[scores={Armorless=1,Armor=4..}] Armorless 0