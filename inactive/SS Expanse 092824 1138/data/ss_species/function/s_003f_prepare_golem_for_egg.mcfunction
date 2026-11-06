execute as @n[distance=0,type=iron_golem] unless data entity @s CustomName run data merge entity @s {CustomName:'{"color":"gold","italic":false,"text":"Paladin Golem"}'}
execute as @n[distance=0,type=iron_golem] run data merge entity @s {DeathLootTable:"minecraft:empty"}
execute as @n[distance=0,type=iron_golem,tag=!paladin_golem] run tag @s add paladin_golem
    function ss_species:s_003f_send_golem_to_egg with entity @n[distance=0,type=iron_golem]
particle gust ~ ~1 ~
tp @n[distance=0,type=iron_golem] ~ ~-10000 ~
execute positioned ~ ~-10000 ~ run kill @n[distance=0,type=iron_golem]