scoreboard players set @s generic_s 0
scoreboard players set @s generic_v 0
scoreboard players set @s generic_n 0

scoreboard players add @s[scores={sse.oath=0}] generic_s 1500
scoreboard players add @s[scores={sse.oath=1}] generic_s 1500
scoreboard players add @s[scores={sse.oath=2}] generic_s 1500
scoreboard players add @s[scores={sse.oath=3}] generic_s 1500
scoreboard players add @s[scores={sse.oath=5}] generic_s 1500
scoreboard players add @s[scores={sse.oath=6}] generic_s 1500
scoreboard players add @s[scores={sse.oath=7}] generic_v 1300
scoreboard players add @s[scores={sse.oath=8}] generic_v 1300
scoreboard players add @s[scores={sse.oath=10}] generic_v 1300
scoreboard players add @s[scores={sse.oath=11}] generic_v 1300
scoreboard players add @s[scores={sse.oath=15}] generic_v 1300
scoreboard players add @s[scores={sse.oath=16}] generic_n 1130
scoreboard players add @s[scores={sse.oath=17}] generic_n 1130

# maybe something with higher difficulty adding extra currency?
    # track player difficulty over a month, if it's over a certain cumulative amount, give them extra money
# alternatively, maybe individual oaths just have certain conditions that can let you get more money
    # it would be smart to somehow guarantee that players had participated enough to get the full sum of money

scoreboard players operation @s sse.currency.shira += @s generic_s
scoreboard players operation @s sse.currency.vasara += @s generic_v
scoreboard players operation @s sse.currency.nuitmerke += @s generic_n

execute unless score @s generic_s matches 0 run return fail
execute unless score @s generic_v matches 0 run return fail
execute unless score @s generic_n matches 0 run return fail

# stipend choice
    # bgah
    # ashengard
    # cindersworn
    # ordonna
    # phaera
    # silverseekers
    # nightjars
    # herons