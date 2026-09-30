# can create sanctuaries by giving something to a campfire

# weapon proficiency
scoreboard players add @s[scores={weapon_proficiency=..10,WeaponType=1..6,of_bravery=1..}] weapon_proficiency 10

# agility
scoreboard players add @s[scores={Armor=10..,TotalHealth=10..,Food=10..}] trait001 1

# extra mob damage
execute at @s[scores={DamageDealt=1..,of_bravery=1000..}] as @e[type=#ss_lib:hostile,distance=..10,tag=!Fogtouched] at @s \
    on attacker if entity @s[scores={of_job=1,DamageDealt=1..,of_bravery=1000..}] run \
    damage @n[type=#ss_lib:hostile,distance=0,tag=!Fogtouched] 4 generic by @s

# regenerating absorption hearts
execute as @s[tag=InSanctuaryAbsorption,scores={Food=20}] if score @s Health >= @s BaseMaxHealth run function oakfall:in_sanctuary_absorption_apply
execute on attacker run return fail
    # this will ensure that they don't regenerate hearts if they're in combat
execute as @s[tag=InSanctuaryAbsorption,scores={Absorption=..7}] run function oakfall:in_sanctuary_absorption_apply

# remember, inquisitors also have in-village effects