$execute as @s[tag=!WeaponModified,predicate=ss_armory:diamond] run function ss_armory:$(type)/_diamond
$execute as @s[tag=!WeaponModified,predicate=ss_armory:netherite] run function ss_armory:$(type)/_netherite
$execute as @s[tag=!WeaponModified,predicate=ss_armory:iron] run function ss_armory:$(type)/_iron
$execute as @s[tag=!WeaponModified,predicate=ss_armory:ranged] run function ss_armory:$(type)/_ranged
$execute as @s[tag=!WeaponModified,predicate=ss_armory:stone] run function ss_armory:$(type)/_stone
$execute as @s[tag=!WeaponModified,predicate=ss_armory:golden] run function ss_armory:$(type)/_golden
$execute as @s[tag=!WeaponModified] run function ss_armory:$(type)/_other

execute as @s[tag=WeaponModified] run function ss_armory:post_modified_weapon
tag @s remove WeaponModified