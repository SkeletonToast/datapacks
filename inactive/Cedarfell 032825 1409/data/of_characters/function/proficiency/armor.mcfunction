scoreboard players remove @s[scores={armor_proficiency=20..}] ArmorWeight 5

$attribute @s armor modifier add armor_proficiency_armor $(value) add_value
$attribute @s armor_toughness modifier add armor_proficiency_armor_toughness $(value) add_value
$attribute @s[scores={SneakTime=1..}] knockback_resistance modifier add armor_proficiency_knockback_resistance $(value) add_multiplied_total
    # note that since this attribute is added after the ArmorToughness score set, it's not added to ArmorWeight