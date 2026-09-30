attribute @s entity_interaction_range modifier remove fighter_retreat_entity_interaction_range
attribute @s attack_damage modifier remove fighter_retreat_attack_damage
attribute @s attack_knockback modifier remove fighter_retreat_attack_knockback

attribute @s attack_damage modifier remove fighter_approach_attack_damage
attribute @s attack_knockback modifier remove fighter_approach_attack_knockback

# attribute @s gravity modifier remove fighter_pogo_gravity
# attribute @s[scores={OnGround=1}] gravity modifier remove fighter_pogo_gravity
# attribute @s[scores={OnGround=1}] entity_interaction_range modifier remove fighter_pogo_entity_interaction_range

execute as @s[scores={DamageDealt=1..}] at @s anchored eyes positioned ^ ^ ^0.5 run function ss_raycast:entity {"particle":"execute if entity @s","max_lifetime":"20","increment_distance":"0.25","run_on_success":"execute as @e[type=!#ss_lib:not_alive,dx=0,dy=0,dz=0] at @s on attacker if entity @s[scores={of_job=2,DamageDealt=1..}] as @n[type=!#ss_lib:not_alive,distance=0] run function of_characters:fighter/backstab"}
execute as @s[scores={AttackDamage=3..},predicate=ss_lib:input_backward] run function of_characters:fighter/retreat
execute as @s[scores={SprintTime=0},predicate=ss_lib:input_forward] run function of_characters:fighter/approach
# execute as @s[predicate=ss_lib:input_jump,predicate=ss_lib:crit] run function of_characters:fighter/pogo

# functions
execute as @s[scores={hunter=1}] run function of_characters:fighter/hunter/main
execute as @s[scores={conscript=1}] run function of_characters:fighter/conscript/main
execute as @s[scores={praetor=1}] run function of_characters:fighter/praetor/main

scoreboard players remove @s[scores={WeaponWeight=1..}] of_encumbrance_items 5