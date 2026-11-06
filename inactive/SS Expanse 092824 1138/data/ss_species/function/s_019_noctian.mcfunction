scoreboard players set @a[scores={species=019}] ability021 1
tag @a[scores={species=019},tag=!Staggerable] add Staggerable
scoreboard players set @a[scores={species=019,TimeSinceDeath=0}] species019-03 0
tag @a[scores={species=019}] add UnlockedParrying

execute as @a[scores={species=019}] run attribute @s minecraft:generic.scale base set 1.3

execute as @a[scores={species=019,SoftRestOrRespawn=0}] run clear @s goat_horn[custom_data={Tags:["species019"]}]
execute as @a[scores={species=019,SoftRestOrRespawn=2}] run function ss_species:s_019f_givehorn

execute as @a[predicate=ss_library:holding_axe,scores={species=019}] unless score @s ability016-00 > @s ability021-00 run scoreboard players set @s ability021-00 1

effect give @a[scores={species=019},predicate=ss_library:holding_nonsword_tool] haste 1 1 true

execute as @a[scores={species=019},predicate=ss_library:holding_sword] run attribute @s minecraft:generic.attack_damage modifier add species019_sword_attack_damage 1 add_value
execute as @a[scores={species=019}] unless entity @s[predicate=ss_library:holding_sword] run attribute @s minecraft:generic.attack_damage modifier remove species019_sword_attack_damage

effect give @a[scores={species=019,DamageDealt=1..}] minecraft:resistance 1 0 true
effect give @a[scores={species=019,species019-02=1..}] minecraft:resistance 1 0 true

effect give @a[scores={species=019},predicate=ss_library:lightlevel_5_max] night_vision 11 0 true
execute as @a[scores={species=019}] unless entity @s[predicate=ss_library:lightlevel_5_max] run effect clear @s night_vision

# ally calculation
# execute as @a[scores={species=019}]

# war cry
scoreboard players add @a[scores={species=019},advancements={ss_species:species/usinggoathorn=true},nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["species019"]}}}}] species019-01 1
effect give @a[scores={species=019},advancements={ss_species:species/usinggoathorn=true},nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["species019"]}}}}] glowing 1 0 true
execute as @a[scores={species=019,species019-01=10}] at @s run tellraw @a[distance=..50] [{"text":"Nightwalker call sounded at: ","color":"#ff0000"},{"score":{"name":"*","objective":"xcoord"},"color":"gold"},{"text":", ","color":"#ff0000"},{"score":{"name":"*","objective":"ycoord"},"color":"green"},{"text":", ","color":"#ff0000"},{"score":{"name":"*","objective":"zcoord"},"color":"blue"}]
execute as @a[scores={species=019,species019-01=10}] at @s positioned over motion_blocking run summon firework_rocket ~ ~1 ~ {LifeTime:50,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;16711680],fade_colors:[I;16711680]}]}}}}
execute as @a[scores={species=019,species019-01=58}] at @s run function ss_species:s_019f_warcrylight
execute as @a[scores={species=019,species019-01=120}] at @s run function ss_species:s_019f_warcryheavy
execute as @a[scores={species=019,species019-01=120}] at @s positioned over motion_blocking run summon firework_rocket ~ ~3 ~ {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;16711680,0],fade_colors:[I;16711680]}]}}}}
execute as @a[scores={species=019,species019-01=120}] at @s positioned over motion_blocking positioned ~ ~3 ~ run summon firework_rocket ^2 ^ ^ {LifeTime:50,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;16711680,0],fade_colors:[I;16711680]}]}}}}
execute as @a[scores={species=019,species019-01=120}] at @s positioned over motion_blocking positioned ~ ~3 ~ run summon firework_rocket ^-2 ^ ^ {LifeTime:60,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:true,colors:[I;16711680,0],fade_colors:[I;16711680]}]}}}}

execute as @a[scores={species=019,species019-03=-1}] run damage @s 0.1 starve
execute at @a[scores={species=019,species019-03=1..,DamageTaken=1..}] positioned ~ ~1 ~ run function ss_particles:lavaburst
execute at @a[scores={species=019,species019-03=1..,DamageTaken=1..}] positioned ~ ~1 ~ run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 1
execute at @a[scores={species=019,species019-03=..-1,DamageTaken=1..}] positioned ~ ~1 ~ run function ss_particles:lavaburst
execute at @a[scores={species=019,species019-03=..-1,DamageTaken=1..}] positioned ~ ~1 ~ run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 1

execute as @a[scores={species=019,species019-03=..-1}] at @s anchored eyes run playsound minecraft:particle.soul_escape player @a ^ ^ ^3 0.5 0.5

scoreboard players set @a[scores={species019-01=1..},advancements={ss_species:species/usinggoathorn=false}] species019-01 1
advancement revoke @a[advancements={ss_species:species/usinggoathorn=true}] only ss_species:species/usinggoathorn

# distant counter
execute as @a[scores={species=019},tag=Parried] at @s on attacker if entity @s[type=player,scores={OnGround=1}] as @p[distance=0] run function urid:fetch
execute as @a[scores={species=019},tag=Parried] at @s on attacker if entity @s[type=player,scores={OnGround=1}] run scoreboard players operation @s urid = @p[distance=0] urid
execute as @a[scores={species=019},tag=Parried] at @s on attacker if entity @s[type=player,scores={OnGround=1}] as @p[distance=0] run function ss_species:s_019f_dcplayer with entity @s

execute as @a[scores={species=019},tag=Parried] on attacker if entity @s[type=!player,nbt={OnGround:1b}] at @s anchored eyes positioned ^ ^ ^-2 on target if block ~ ~ ~ #ss_library:nonsolidblocks run function ss_species:s_019f_distantcounter

# # TESTING ONLY
# execute as @e[type=#minecraft:arrows,nbt={inGround:1b}] at @s on origin if entity @s[scores={species=019}] run tp @s ~ ~ ~
# execute as @e[type=#minecraft:arrows,nbt={inGround:1b}] at @s on origin if entity @s[scores={species=019}] run kill @n[type=#arrows,distance=0]

# score resets
scoreboard players remove @a[scores={species019-03=1..}] species019-03 1
scoreboard players add @a[scores={species019-03=..-1}] species019-03 1