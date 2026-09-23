# effect give @a[scores={used_honey_bottle=1..}] regeneration 3 1 true
effect give @a[scores={used_golden_carrot=1..}] regeneration 2 2 true

scoreboard players set @a used_honey_bottle 0
scoreboard players set @a used_golden_carrot 0

# removed in favor of adjusted exhaustion and modified food items
    # execute as @a[scores={Food=20},tag=InCombat] run function echoes:player/aegis/overheal_calculate
    #     execute as @a[scores={Food=20},tag=InCombat] if score @s Health < @s generic_a run effect give @s minecraft:hunger 1 49 true
