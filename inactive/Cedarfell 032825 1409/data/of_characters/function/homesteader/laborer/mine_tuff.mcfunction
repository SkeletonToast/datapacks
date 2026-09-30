execute store result score @s laborer_mine_tuff run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace tuff
execute as @s[scores={laborer_mine_tuff=1..}] run particle block{block_state:"minecraft:tuff"} ~ ~ ~ 1 1 1 0.1 50 normal

execute as @s[scores={laborer_mine_tuff=1..}] unless items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"minecraft:silk_touch","levels":{min:1}}]] run function of_characters:homesteader/laborer/give_tuff