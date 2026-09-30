# hard worker
scoreboard players remove @s of_encumbrance 10
attribute @s block_break_speed modifier add laborer_block_break_speed 0.5 add_value
attribute @s block_interaction_range modifier add laborer_block_interaction_range 1 add_value

# armor proficiency
    scoreboard players add @s[scores={ArmorType=12..}] armor_proficiency 30

# miner's touch
scoreboard players add @s[scores={laborer_mine_nether_quartz=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_nether_gold=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_coal=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_diamond=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_emerald=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_iron=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_gold=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_copper=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_redstone=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_lapis=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_deepslate_coal=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_deepslate_diamond=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_deepslate_emerald=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_deepslate_iron=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_deepslate_gold=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_deepslate_copper=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_deepslate_redstone=1..}] laborer_mine_ore 1
scoreboard players add @s[scores={laborer_mine_deepslate_lapis=1..}] laborer_mine_ore 1

execute as @s[scores={laborer_mine_ore=1..}] unless items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"minecraft:silk_touch","levels":{min:1}}]] \
    run function of_characters:homesteader/laborer/mine_ore

execute as @s[scores={laborer_mine_stone=1..,SneakTime=0}] if items entity @s weapon.mainhand #minecraft:pickaxes run function of_characters:homesteader/laborer/start_raycast {"block":"stone"}
execute as @s[scores={laborer_mine_deepslate=1..,SneakTime=0}] if items entity @s weapon.mainhand #minecraft:pickaxes run function of_characters:homesteader/laborer/start_raycast {"block":"deepslate"}
execute as @s[scores={laborer_mine_tuff=1..,SneakTime=0}] if items entity @s weapon.mainhand #minecraft:pickaxes run function of_characters:homesteader/laborer/start_raycast {"block":"tuff"}