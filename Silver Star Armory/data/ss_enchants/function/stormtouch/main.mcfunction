execute at @s anchored eyes run particle electric_spark ^ ^ ^ 0.4 0.4 0.4 0.1 10

tag @s add StatusEligible

function ss_enchants:stormtouch/effect
execute on attacker unless items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ss_enchants:stormtouch","levels":2}]] run return fail
function ss_enchants:stormtouch/effect