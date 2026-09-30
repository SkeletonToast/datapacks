execute as @a[scores={hysterical_timer=1..}] run function of_statuses:hysterical
execute as @a[scores={hunted_timer=1..}] run function of_statuses:hunted
execute as @a[scores={drunk_timer=1..}] run function of_statuses:drunk

scoreboard players remove @a[scores={hysterical_timer=1..}] hysterical_timer 1
execute as @a[scores={hysterical_timer=0}] run attribute @s scale modifier remove hysterical_scale
execute as @a[scores={hysterical_timer=0}] run attribute @s entity_interaction_range modifier remove hysterical_entity_interaction_range
execute as @a[scores={hysterical_timer=0}] run team leave @s
execute as @a[scores={hysterical_timer=0}] run scoreboard players set @s hysterical_super 0

scoreboard players remove @a[scores={drunk_timer=1..}] drunk_timer 1

scoreboard players remove @a[scores={hysterical_active=0..}] hysterical_active 1
scoreboard players remove @a[scores={dissident_active=0..}] dissident_active 1
scoreboard players remove @a[scores={threatened_active=0..}] threatened_active 1