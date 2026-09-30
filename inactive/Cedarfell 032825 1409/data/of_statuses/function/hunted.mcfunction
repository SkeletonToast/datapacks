scoreboard players add @s encumbered_amount 10
effect clear @s invisibility
execute at @s as @a[scores={of_origin=1,of_job=1},distance=10..30] if score @s hunting_timer >= @p[distance=0] hunted_timer run effect give @s speed 1 1 true
# execute at @s as @a[scores={of_origin=1,of_job=1},distance=10..30] if score @s hunting_timer >= @p[distance=0] hunted_timer run attribute @s step_height modifier add hunter_predator_step_height 0.5 add_value

scoreboard players remove @s hunted_timer 1