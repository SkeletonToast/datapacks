# prod
execute as @s[scores={SneakTime=1..5}] run attribute @s entity_interaction_range modifier add technique.prod.entity_interaction_range 0.35 add_multiplied_total
execute as @s[scores={SneakTime=1..5}] run attribute @s attack_damage modifier add technique.prod.attack_damage -0.6 add_multiplied_total
execute store result score @s generic_a run attribute @s entity_interaction_range get 100
    scoreboard players set @s generic_b 25
    scoreboard players operation @s generic_a /= @s generic_b
    scoreboard players add @s generic_a 1
execute as @s[scores={SneakTime=1..5,DamageDealt=1..}] run function parse:simple {score:generic_a,function:"echoes:player/combat/techniques/prod_raycast"}

# repel
execute as @s[scores={OnGround=0},predicate=ss_lib:is/sprinting,predicate=ss_lib:is/ascending] \
    run attribute @s attack_knockback modifier add technique.repel.attack_knockback 1.5 add_value