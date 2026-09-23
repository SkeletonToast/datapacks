# leather: 1
# gold: 2
# chain/turtle: 3
# iron: 6
# diamond: 10
# netherite: 15
# other: 0

scoreboard players set @s ArmorType 0
scoreboard players set @s HelmetType 0
scoreboard players set @s ChestplateType 0
scoreboard players set @s LeggingsType 0
scoreboard players set @s BootsType 0

# head
execute as @s[scores={HelmetType=0}] if items entity @s armor.head diamond_helmet run scoreboard players set @s HelmetType 10
execute as @s[scores={HelmetType=0}] if items entity @s armor.head netherite_helmet run scoreboard players set @s HelmetType 15
execute as @s[scores={HelmetType=0}] if items entity @s armor.head iron_helmet run scoreboard players set @s HelmetType 6
execute as @s[scores={HelmetType=0}] if items entity @s armor.head copper_helmet run scoreboard players set @s BootsType 4
execute as @s[scores={HelmetType=0}] if items entity @s armor.head turtle_helmet run scoreboard players set @s BootsType 5
execute as @s[scores={HelmetType=0}] if items entity @s armor.head leather_helmet run scoreboard players set @s HelmetType 1
execute as @s[scores={HelmetType=0}] if items entity @s armor.head golden_helmet run scoreboard players set @s HelmetType 2
execute as @s[scores={HelmetType=0}] if items entity @s armor.head chainmail_helmet run scoreboard players set @s HelmetType 3

# chest
execute as @s[scores={ChestplateType=0}] if items entity @s armor.chest diamond_chestplate run scoreboard players set @s ChestplateType 10
execute as @s[scores={ChestplateType=0}] if items entity @s armor.chest netherite_chestplate run scoreboard players set @s ChestplateType 15
execute as @s[scores={ChestplateType=0}] if items entity @s armor.chest iron_chestplate run scoreboard players set @s ChestplateType 6
execute as @s[scores={ChestplateType=0}] if items entity @s armor.chest copper_chestplate run scoreboard players set @s BootsType 4
execute as @s[scores={ChestplateType=0}] if items entity @s armor.chest leather_chestplate run scoreboard players set @s ChestplateType 1
execute as @s[scores={ChestplateType=0}] if items entity @s armor.chest golden_chestplate run scoreboard players set @s ChestplateType 2
execute as @s[scores={ChestplateType=0}] if items entity @s armor.chest chainmail_chestplate run scoreboard players set @s ChestplateType 3

# legs
execute as @s[scores={LeggingsType=0}] if items entity @s armor.legs diamond_leggings run scoreboard players set @s LeggingsType 10
execute as @s[scores={LeggingsType=0}] if items entity @s armor.legs netherite_leggings run scoreboard players set @s LeggingsType 15
execute as @s[scores={LeggingsType=0}] if items entity @s armor.legs iron_leggings run scoreboard players set @s LeggingsType 6
execute as @s[scores={LeggingsType=0}] if items entity @s armor.legs copper_leggings run scoreboard players set @s BootsType 4
execute as @s[scores={LeggingsType=0}] if items entity @s armor.legs leather_leggings run scoreboard players set @s LeggingsType 1
execute as @s[scores={LeggingsType=0}] if items entity @s armor.legs golden_leggings run scoreboard players set @s LeggingsType 2
execute as @s[scores={LeggingsType=0}] if items entity @s armor.legs chainmail_leggings run scoreboard players set @s LeggingsType 3

# feet
execute as @s[scores={BootsType=0}] if items entity @s armor.feet diamond_boots run scoreboard players set @s BootsType 10
execute as @s[scores={BootsType=0}] if items entity @s armor.feet netherite_boots run scoreboard players set @s BootsType 15
execute as @s[scores={BootsType=0}] if items entity @s armor.feet iron_boots run scoreboard players set @s BootsType 6
execute as @s[scores={BootsType=0}] if items entity @s armor.feet copper_boots run scoreboard players set @s BootsType 4
execute as @s[scores={BootsType=0}] if items entity @s armor.feet leather_boots run scoreboard players set @s BootsType 1
execute as @s[scores={BootsType=0}] if items entity @s armor.feet golden_boots run scoreboard players set @s BootsType 2
execute as @s[scores={BootsType=0}] if items entity @s armor.feet chainmail_boots run scoreboard players set @s BootsType 3

# armor type
scoreboard players operation @s generic_a = @s HelmetType

scoreboard players operation @s generic_a += @s ChestplateType
    scoreboard players operation @s generic_a += @s ChestplateType
    scoreboard players operation @s generic_a += @s ChestplateType

scoreboard players operation @s generic_a += @s LeggingsType
    scoreboard players operation @s generic_a += @s LeggingsType

scoreboard players operation @s generic_a += @s BootsType

scoreboard players operation @s generic_a /= @s 2
    scoreboard players operation @s generic_a /= @s 2
scoreboard players operation @s ArmorType = @s generic_a