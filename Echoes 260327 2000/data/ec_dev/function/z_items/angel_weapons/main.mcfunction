execute as @a[scores={ItemSelected=1},advancements={of_items:artifacts/using_clock=true}] \
    unless entity @s[scores={artifact_type=1..}] \
    if items entity @s weapon.mainhand clock[custom_data~{weapon:{casting:{type:"seraphic"}}}] run \
    function of_items:angel_weapons/spells {"hand":"main","sign":""}
execute as @a[scores={ItemOffhand=1},advancements={of_items:artifacts/using_clock=true}] \
    unless entity @s[scores={artifact_type=1..}] \
    if items entity @s weapon.offhand clock[custom_data~{weapon:{casting:{type:"seraphic"}}}] run \
    function of_items:angel_weapons/spells {"hand":"off","sign":"-"}

# execute as @a[scores={artifact_type=4}] at @s anchored eyes run function of_items:angel_weapons/ordonna {"offset":"^0.5"}
# execute as @a[scores={artifact_type=-4}] at @s anchored eyes run function of_items:angel_weapons/ordonna {"offset":"^-0.5"}

execute as @a[scores={artifact_type=5}] at @s anchored eyes run function of_items:angel_weapons/ordonna
execute as @a[scores={artifact_type=-5}] at @s anchored eyes run function of_items:angel_weapons/ordonna
execute as @a[scores={artifact_type=4}] at @s anchored eyes run function of_items:angel_weapons/gateway
execute as @a[scores={artifact_type=-4}] at @s anchored eyes run function of_items:angel_weapons/gateway