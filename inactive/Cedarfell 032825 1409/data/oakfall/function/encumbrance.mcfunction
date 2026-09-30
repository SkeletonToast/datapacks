# armor
    # execute if items entity @s weapon.* shield run scoreboard players add @s of_encumbrance_armor 3
    # scoreboard players add @s[scores={UsingShield=1..}] of_encumbrance_armor 3
scoreboard players operation @s[scores={ArmorWeight=1..}] of_encumbrance_armor += @s ArmorWeight

# weapon weight
scoreboard players add @s[scores={WeaponWeight=2}] of_encumbrance_items 3
scoreboard players add @s[scores={WeaponWeight=3}] of_encumbrance_items 9
scoreboard players add @s[scores={WeaponWeight=4}] of_encumbrance_items 25
scoreboard players add @s[scores={WeaponWeight=5..}] of_encumbrance_items 35

    # massive weapon in hotbar
    execute if items entity @s hotbar.* *[minecraft:custom_data~{weapon:{properties:{massive:true}}}] run scoreboard players add @s of_encumbrance_items 5

    # offhand
    execute as @a[scores={ItemOffhand=1}] if items entity @s weapon.offhand #oakfall:offhand_encumbering run scoreboard players add @s of_encumbrance_items 3

# fear
# scoreboard players add @s[scores={fear=40000..}] of_encumbrance 10
# scoreboard players add @s[scores={fear=70000..}] of_encumbrance 20

# adjustments
scoreboard players operation @s of_encumbrance -= @s Strength
    # execute if score @s Food >= @s Health run scoreboard players operation @s of_encumbrance -= @s Food
    # execute if score @s Food < @s Health run scoreboard players operation @s of_encumbrance -= @s Health

# apply
scoreboard players operation @s[scores={of_encumbrance_armor=1..}] of_encumbrance += @s of_encumbrance_armor
scoreboard players operation @s[scores={of_encumbrance_items=1..}] of_encumbrance += @s of_encumbrance_items

scoreboard players operation @s[scores={Food=19..,of_encumbrance=2..}] of_encumbrance /= @s 2

    # crutches
    execute as @a[scores={of_encumbrance=1..4}] if items entity @s weapon.* *[custom_data~{crutch:1b}] run scoreboard players set @s of_encumbrance 0
    execute as @a[scores={of_encumbrance=5..15}] if items entity @s weapon.* *[custom_data~{crutch:1b}] run scoreboard players remove @s of_encumbrance 5

scoreboard players operation @s[scores={of_encumbrance=1..}] encumbered_amount += @s of_encumbrance