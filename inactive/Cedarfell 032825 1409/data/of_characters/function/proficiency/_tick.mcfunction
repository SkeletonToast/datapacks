# weapons
execute as @a run attribute @s attack_damage modifier remove weapon_proficiency_attack_damage
execute as @a run attribute @s attack_speed modifier remove weapon_proficiency_attack_speed
execute as @a run attribute @s entity_interaction_range modifier remove weapon_proficiency_entity_interaction_range
execute as @a[scores={UsingBow=0}] run attribute @s movement_speed modifier remove weapon_proficiency_bow_movement_speed
execute as @a unless entity @s[scores={WeaponType=7}] run attribute @s movement_speed modifier remove weapon_proficiency_bow_movement_speed
execute as @a[scores={weapon_proficiency=..0}] run attribute @s movement_speed modifier remove weapon_proficiency_bow_movement_speed

# expertise
execute as @a if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"of_items:expertise"}]] run scoreboard players add @s WeaponStrength 10
execute as @a if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"of_items:expertise"}]] run scoreboard players add @s WeaponDexterity 10

# stat scaling
execute as @a[scores={WeaponType=1..6}] run function of_characters:proficiency/weapon_stat_scaling

# proficiency application
execute as @a[scores={weapon_proficiency=1..}] run function of_characters:proficiency/weapon

# weapons - negative
execute as @a[scores={WeaponWeight=4..,weapon_proficiency=..0,ItemOffhand=1}] run scoreboard players remove @s weapon_proficiency 20
execute as @a[scores={weapon_proficiency=..-1}] run function of_characters:proficiency/weapon_negative

# armor
execute as @a[scores={armor_proficiency=1..}] run function run:score_modified {"score":"armor_proficiency","prepend":"","append":".","function":"of_characters:proficiency/armor"}

execute as @a[scores={armor_proficiency=0}] run attribute @s armor modifier remove armor_proficiency_armor
execute as @a[scores={armor_proficiency=0}] run attribute @s armor_toughness modifier remove armor_proficiency_armor_toughness
execute as @a[scores={armor_proficiency=0}] run attribute @s knockback_resistance modifier remove armor_proficiency_knockback_resistance
execute as @a[scores={SneakTime=0}] run attribute @s knockback_resistance modifier remove armor_proficiency_knockback_resistance

    # temporary
    execute as @a run attribute @s attack_damage modifier remove weapon_proficiency_attack_damage_1
    execute as @a run attribute @s attack_speed modifier remove weapon_proficiency_attack_speed_1
    execute as @a run attribute @s attack_damage modifier remove weapon_proficiency_attack_damage_2
    execute as @a run attribute @s attack_speed modifier remove weapon_proficiency_attack_speed
    execute as @a run attribute @s entity_interaction_range modifier remove weapon_proficiency_entity_interaction_range_1