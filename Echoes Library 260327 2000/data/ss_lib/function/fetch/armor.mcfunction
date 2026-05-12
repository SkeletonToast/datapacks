$scoreboard players add $(s) ArmorType 0
$scoreboard players add $(s) ArmorWeight 0
$execute as $(s) if entity @s[scores={ArmorType=0,Armor=1..}] run function ss_lib:gear/armor_type

$execute as $(s) run scoreboard players operation @s ArmorWeight = @s ArmorType
$execute as $(s) run scoreboard players operation @s ArmorWeight += @s ArmorToughness
$execute as $(s) run scoreboard players operation @s ArmorWeight *= @s 2

$execute as $(s) run scoreboard players set @s[scores={HelmetType=0,ChestplateType=0,LeggingsType=0,BootsType=0}] Armorless 1
$execute as $(s) run scoreboard players set @s[scores={Armor=0}] Armorless 1
$execute as $(s) run scoreboard players set @s[scores={Armorless=1,Armor=..4}] Armorless 1