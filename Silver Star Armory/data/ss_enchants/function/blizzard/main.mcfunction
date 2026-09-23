execute at @s anchored eyes run particle block{block_state:"minecraft:ice"} ^ ^ ^ 0.4 0.4 0.4 0 10
execute anchored eyes positioned ^ ^ ^ run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 frosted_ice replace water
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 frosted_ice replace water

tag @s add StatusEligible

function ss_enchants:blizzard/effect

execute on attacker unless items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ss_enchants:blizzard","levels":2}]] run return fail
function ss_enchants:blizzard/effect