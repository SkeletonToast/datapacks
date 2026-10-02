execute as @s[scores={CompositeBowCharge=1..2,UsingBow=0}] run scoreboard players operation @s generic_a = @s Dexterity
    execute as @s[scores={CompositeBowCharge=1..2,UsingBow=0}] run scoreboard players operation @s generic_a *= #const.6 value
execute as @s[scores={CompositeBowCharge=1..2,UsingBow=0}] run function parse:score_unended {score:generic_a,function:"ss_armory:properties/composite_bow_raycast"}
execute at @s[scores={CompositeBowCharge=1..2,UsingBow=0}] anchored eyes run playsound entity.arrow.shoot
# clear @s[scores={CompositeBowCharge=1..2,UsingBow=0},gamemode=!creative] #minecraft:arrows 1
execute as @s[scores={CompositeBowCharge=1..2,UsingBow=0},gamemode=!creative] unless items entity @s weapon.mainhand bow[minecraft:enchantments~[{"enchantments":"minecraft:infinity"}]] run \
    clear @s #minecraft:arrows 1
execute as @s[scores={CompositeBowCharge=1..2,UsingBow=0},gamemode=!creative] unless items entity @s weapon.mainhand bow unless items entity @s weapon.offhand bow[minecraft:enchantments~[{"enchantments":"minecraft:infinity"}]] run \
    clear @s #minecraft:arrows 1

scoreboard players operation @s CompositeBowCharge = @s UsingBow