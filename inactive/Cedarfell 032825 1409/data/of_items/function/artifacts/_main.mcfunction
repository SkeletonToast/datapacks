execute if entity @a[advancements={of_items:artifacts/using_clock=true}] run function of_items:artifacts/run

execute as @a[scores={artifact_type=0}] run attribute @s gravity modifier remove gateway_gravity

advancement revoke @a[scores={artifact_type=1..}] only of_items:artifacts/using_clock
scoreboard players set @a artifact_type 0