# leather: 1
# gold: 2
# chain: 3
# copper: 4
# turtle helmet: 5
# iron: 6
# diamond: 10
# netherite: 15
# other: 0

function ss_lib:fetch/armor {s:"@a"}

# remove old attributes here
execute as @a[scores={homestead.armor_set=2}] run attribute @s movement_speed modifier remove homestead.armor.gold.movement_speed
execute as @a[scores={homestead.armor_set=3}] run attribute @s jump_strength modifier remove homestead.armor.chain.jump_strength
execute as @a[scores={homestead.armor_set=3}] run attribute @s fall_damage_multiplier modifier remove homestead.armor.chain.fall_damage_multiplier
execute as @a[scores={homestead.armor_set=3}] run attribute @s movement_efficiency modifier remove homestead.armor.chain.movement_efficiency
execute as @a[scores={homestead.armor_set=3}] run attribute @s water_movement_efficiency modifier remove homestead.armor.chain.water_movement_efficiency

execute as @a[scores={ArmorType=1..}] if score @s ArmorType = @s HelmetType \
    if score @s ArmorType = @s ChestplateType \
    if score @s ArmorType = @s LeggingsType \
    if score @s ArmorType = @s BootsType \
    run scoreboard players operation @s homestead.armor_set = @s ArmorType

# apply new ones here
    # gold
    execute as @a[scores={homestead.armor_set=2}] run attribute @s movement_speed modifier add homestead.armor.gold.movement_speed 0.10 add_multiplied_total

    # chainmail
    execute as @a[scores={homestead.armor_set=3}] run attribute @s jump_strength modifier add homestead.armor.chain.jump_strength 0.20 add_multiplied_total
    execute as @a[scores={homestead.armor_set=3}] run attribute @s fall_damage_multiplier modifier add homestead.armor.chain.fall_damage_multiplier -0.20 add_multiplied_total
    execute as @a[scores={homestead.armor_set=3}] run attribute @s movement_efficiency modifier add homestead.armor.chain.movement_efficiency 0.20 add_multiplied_total
    execute as @a[scores={homestead.armor_set=3}] run attribute @s water_movement_efficiency modifier add homestead.armor.chain.water_movement_efficiency 0.20 add_multiplied_total