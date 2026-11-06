scoreboard players set @a[scores={species=002}] ability022 1
execute as @a[scores={species=002}] run attribute @s minecraft:player.block_interaction_range base set 6

execute as @a[scores={species=002,SoftGameTime=20}] run function ss_species:s_002f_giveanchor

execute as @a[scores={species=002,ItemSelected=0},level=1..,predicate=ss_species:forma_holding_duplicable] run function ss_species:s_002f_duplication1

# execute as @a[scores={species=002,TimeSinceDeath=2}] unless entity @s[nbt={Inventory:[{id:"minecraft:turtle_spawn_egg",components:{"minecraft:custom_data":{Tags:["species002"]}}}]}] run function ss_species:s_002f_giveanchor
# execute as @a[scores={species=002,SingleSneakTime=20},nbt={SelectedItem:{id:"minecraft:turtle_spawn_egg",components:{"minecraft:custom_data":{Tags:["species002"]}}}}] at @s unless entity @e[tag=BuildingAnchor,distance=..1] run function ss_species:s_002f_generateanchor

# other
execute as @a[scores={species=002,Food=..19}] if score @s Health >= @s BaseMaxHealth run effect give @s minecraft:saturation 1 0 true
effect give @a[scores={species=002},predicate=ss_library:holding_nonsword_tool] haste 1 1 true

# disabling
# execute at @e[tag=BuildingAnchor] as @a[scores={species=002},distance=..1] unless entity @s[predicate=ss_library:is_sneaking] run title @s actionbar ["Crouch for one full second to disable this Anchor."]
# execute at @e[tag=BuildingAnchor] as @a[scores={species=002,SingleSneakTime=..20},distance=..1,predicate=ss_library:is_sneaking] run title @s actionbar [{"text":"Continue crouching to disable this Anchor.","color":"green"}]
# execute at @a[scores={species=002,SingleSneakTime=20}] at @n[tag=BuildingAnchor,distance=..1] run function ss_species:s_002f_summonanchoritem {"count":"1"}
# execute at @a[scores={species=002,SingleSneakTime=20}] run kill @n[tag=BuildingAnchor,distance=..1]
execute as @e[type=minecraft:interaction,tag=BuildingAnchor] at @s if data entity @s attack on attacker if entity @s[scores={species=002}] run function ss_species:s_002f_summonanchoritem {"count":"1"}
execute as @e[type=minecraft:interaction,tag=BuildingAnchor] at @s if data entity @s attack on attacker if entity @s[scores={species=002}] run particle explosion
execute as @e[type=minecraft:interaction,tag=BuildingAnchor] at @s if data entity @s attack on attacker if entity @s[scores={species=002}] run kill @n[tag=BuildingAnchorCage,distance=..1]
execute as @e[type=minecraft:interaction,tag=BuildingAnchor] at @s if data entity @s attack on attacker if entity @s[scores={species=002}] run kill @n[tag=BuildingAnchor,distance=0]

execute as @a[scores={species=002,SingleSneakTime=30},nbt={Inventory:[{id:"minecraft:turtle_spawn_egg",Slot:-106b,components:{"minecraft:custom_data":{Tags:["species002"]}}}]}] at @s run function ss_species:s_002f_offhandsummon

# execute as @e[tag=BuildingAnchor,tag=!BigBuildingAnchor] at @s if block ~1 ~-1 ~ cut_copper if block ~1 ~-1 ~1 cut_copper if block ~ ~-1 ~1 cut_copper if block ~-1 ~-1 ~1 cut_copper if block ~-1 ~-1 ~ cut_copper if block ~-1 ~-1 ~-1 cut_copper if block ~ ~-1 ~-1 cut_copper if block ~1 ~-1 ~-1 cut_copper run tag @s add BigBuildingAnchor
    # change this to only execute when a player binds to an anchor, for lower lag
execute as @e[tag=BuildingAnchor,tag=!BigBuildingAnchor] at @s if entity @a[scores={species=002},distance=..25] run function ss_species:s_002f_buildinganchor {"distance":"20"}
execute as @e[tag=BuildingAnchor,tag=BigBuildingAnchor] at @s if entity @a[scores={species=002},distance=..55] run function ss_species:s_002f_buildinganchor {"distance":"50"}
execute as @a[scores={species=002}] at @s if entity @e[tag=BuildingAnchor,tag=BoundAnchor,distance=..20] run tag @s add AnchorEligible
execute as @a[scores={species=002}] at @s if entity @e[tag=BigBuildingAnchor,tag=BoundAnchor,distance=..50] run tag @s add AnchorEligible
execute as @a[scores={species=002}] at @s unless entity @e[tag=BuildingAnchor,tag=BoundAnchor,distance=..25] unless entity @e[tag=BigBuildingAnchor,tag=BoundAnchor,distance=..55] run tag @s remove AnchorEligible

tag @a[scores={OnGround=1,species002-02=1..}] remove AnchorBound
scoreboard players set @a[scores={OnGround=1,species002-02=1..}] species002-02 0

execute at @a[scores={species=002}] as @e[type=item,distance=..5,nbt={Item:{count:1,id:"minecraft:diamond"}}] at @s if block ~ ~-0.5 ~ crafting_table if entity @e[type=item,distance=..0.5,nbt={Item:{count:1,id:"minecraft:iron_block"}}] if entity @e[type=item,distance=..0.5,nbt={Item:{count:1,id:"minecraft:lapis_lazuli"}}] run function ss_species:s_002f_createanchor {"count":"1"}
execute at @a[scores={species=002}] as @e[type=item,distance=..5,nbt={Item:{count:32,id:"minecraft:diamond"}}] at @s if block ~ ~-0.5 ~ crafting_table if entity @e[type=item,distance=..0.5,nbt={Item:{count:32,id:"minecraft:iron_block"}}] if entity @e[type=item,distance=..0.5,nbt={Item:{count:32,id:"minecraft:lapis_lazuli"}}] run function ss_species:s_002f_createanchor {"count":"32"}
execute at @a[scores={species=002}] as @e[type=item,distance=..5,nbt={Item:{count:64,id:"minecraft:diamond"}}] at @s if block ~ ~-0.5 ~ crafting_table if entity @e[type=item,distance=..0.5,nbt={Item:{count:64,id:"minecraft:iron_block"}}] if entity @e[type=item,distance=..0.5,nbt={Item:{count:64,id:"minecraft:lapis_lazuli"}}] run function ss_species:s_002f_createanchor {"count":"64"}