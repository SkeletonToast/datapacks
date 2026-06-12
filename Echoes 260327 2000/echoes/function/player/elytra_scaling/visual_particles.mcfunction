$execute as @a[scores={Tact=17..,slipstream=1..},predicate=ss_lib:flying_quickly] at @s anchored feet run particle $(particle_1) ^1.5 ^0.5 ^2.5 0 0 0 0 1 normal @a[distance=0.1..]
$execute as @a[scores={Tact=17..,slipstream=1..},predicate=ss_lib:flying_quickly] at @s anchored feet run particle $(particle_1) ^-1.5 ^0.5 ^2.5 0 0 0 0 1 normal @a[distance=0.1..]
    # maybe fix these so they match folded wings when diving
$execute as @a[scores={Tact=17..,slipstream=1..},predicate=ss_lib:flying_quickly] at @s anchored eyes run particle $(particle_1) ^ ^ ^10 10 10 10 0 3 normal @s
$execute as @a[scores={Tact=17..,slipstream=1..},predicate=ss_lib:flying_quickly] at @s anchored eyes run particle $(particle_0) ^ ^ ^10 10 10 10 0 3 normal @s
$execute at @s[scores={FallFlying=1,slipstream=1..},predicate=echoes:flying_very_quickly] anchored eyes run particle $(particle_2) ^ ^ ^20 40 40 40 0 1 normal @s

$execute as @a[scores={Tact=17..,FallFlying=1},predicate=ss_lib:flying_quickly] at @s anchored eyes run particle $(particle_0) ^ ^ ^5 6 6 6 0 2 normal @s
$execute as @a[scores={Tact=17..},predicate=ss_lib:flying_quickly] at @s anchored eyes run particle $(particle_1) ^ ^ ^10 10 10 10 0 2 normal @s