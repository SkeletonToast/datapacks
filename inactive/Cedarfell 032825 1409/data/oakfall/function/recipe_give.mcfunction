# this doesn't test for of_recipe=0, because this whole function is only executed by players with of_recipe=0
recipe give @s *
advancement grant @s from recipes/root

# scholars
    # execute as @s[scores={scholar=0}] run function of_characters:homesteader/scholar/scholar_recipes {"format":"take"}
    # execute as @s[scores={scholar=1}] run function of_characters:homesteader/scholar/non_scholar_recipes {"format":"take"}
    # execute as @s[scores={scholar=0}] run function of_characters:homesteader/scholar/non_scholar_recipes {"format":"give"}
    # execute as @s[scores={scholar=1}] run function of_characters:homesteader/scholar/scholar_recipes {"format":"give"}

# soups
recipe take @s minecraft:beetroot_soup
recipe take @s minecraft:mushroom_stew
recipe take @s minecraft:rabbit_stew_from_brown_mushroom
recipe take @s minecraft:rabbit_stew_from_red_mushroom

recipe give @s of_items:food/beetroot_soup_stackable
recipe give @s of_items:food/mushroom_stew_stackable
recipe give @s of_items:food/rabbit_stew_stackable

execute unless entity @s[name="KidInTheCorner"] run recipe take @s ss_armory:weapons/smashing_rock
execute unless entity @s[name="KidInTheCorner"] run recipe take @s ss_armory:materials/siegesteel