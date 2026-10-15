execute at @s[predicate=ss_lib:is/moving] anchored eyes run particle minecraft:squid_ink ^ ^ ^0.3 0.1 0.1 0.1 0 2 normal @a
execute at @s anchored eyes run particle minecraft:squid_ink ^ ^ ^ 0.2 0.2 0.2 0 3 normal @a[distance=0.1..]
    # used to visually show Enshrouded/Occluded on others
execute at @s[predicate=ss_lib:is/moving] anchored eyes run particle minecraft:squid_ink ^ ^0.3 ^0.3 0.1 0.1 0.1 0 2 normal @s
execute at @s[predicate=ss_lib:is/moving] anchored eyes run particle minecraft:squid_ink ^ ^-0.3 ^0.3 0.1 0.1 0.1 0 2 normal @s
execute at @s[predicate=ss_lib:is/moving] anchored eyes run particle minecraft:squid_ink ^0.3 ^ ^0.3 0.1 0.1 0.1 0 2 normal @s
execute at @s[predicate=ss_lib:is/moving] anchored eyes run particle minecraft:squid_ink ^-0.3 ^ ^0.3 0.1 0.1 0.1 0 2 normal @s
execute at @s anchored eyes run particle minecraft:squid_ink ^ ^ ^0.5 0.3 0.3 0.3 0 2 normal @s
effect give @s blindness 2 0 true