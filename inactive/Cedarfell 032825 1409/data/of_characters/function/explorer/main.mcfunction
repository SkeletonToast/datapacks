# functions
execute as @s[scores={nomad=1}] run function of_characters:explorer/nomad
execute as @s[scores={pioneer=1}] run function of_characters:explorer/pioneer
execute as @s[scores={inquisitor=1}] run function of_characters:explorer/inquisitor

execute if score @s Health >= @s BaseMaxHealth run effect give @s[scores={Food=20}] darkness 1 0 true
# execute if score @s Health >= @s BaseMaxHealth run scoreboard players add @s[scores={weapon_proficiency=1..}] armor_proficiency 15

scoreboard players add @s Focus 5
scoreboard players remove @s[scores={of_fear=50000..}] of_fear 4
scoreboard players remove @s[scores={of_fear=60000..}] of_fear 6
scoreboard players remove @s[scores={of_fear=70000..}] of_fear 10
scoreboard players set @s[scores={TotalHealth=6..,of_fear=89999..}] of_fear 89999

# also:
    # nomads have fear-induced Unnerved immunity
    # explorers have fear-induced Tormented immunity

scoreboard players add @s of_bravery_max 1000

execute at @s[scores={DamageDealt=1..}] as @e[type=#ss_lib:hostile,distance=..10,tag=VariantMonster] at @s \
    on attacker if entity @s[scores={of_job=1,DamageDealt=1..}] run \
    damage @n[type=#ss_lib:hostile,distance=0,tag=VariantMonster] 3 generic by @s

execute at @s[scores={DamageDealt=1..}] as @e[type=#ss_lib:hostile,distance=..10,tag=Fogtouched] at @s \
    on attacker if entity @s[scores={of_job=1,DamageDealt=1..}] run \
    damage @n[type=#ss_lib:hostile,distance=0,tag=Fogtouched] 6 generic by @s