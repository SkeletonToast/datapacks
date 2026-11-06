scoreboard players set @a[scores={Ghost=1..}] class003 0
scoreboard players set @a[scores={class003=1..}] ability013 2
scoreboard players set @a[scores={class003=1..}] ability014 1
scoreboard players set @a[scores={class003=1..}] ability020 1
tag @a[scores={class003=1..}] add UnlockedParrying
scoreboard players set @a[scores={class003=1..,ability020-00=0},level=2..,predicate=ss_library:holding_axe,tag=ArcaneTomeFifthSlot] ability020-00 3
execute as @a[scores={class003=1..},level=2..,predicate=ss_library:holding_axe,tag=ArcaneTomeFifthSlot] unless entity @s[scores={ability020-00=3}] run scoreboard players set @s ability020-00 1
execute as @a[scores={class003=1..,ability020-02=1..,OnGround=1},level=3..] at @s unless entity @s[predicate=ss_library:is_sneaking] run xp add @s -20
scoreboard players remove @a[scores={class003=1..},level=..0,predicate=ss_library:holding_axe,predicate=ss_library:is_sneaking,tag=ArcaneTomeFifthSlot] ability013-01 250
xp add @a[scores={class003=1..},level=..0,predicate=ss_library:holding_axe,predicate=ss_library:is_sneaking,tag=ArcaneTomeFifthSlot] 1 levels
tellraw @a[scores={class003=1..},level=..0,predicate=ss_library:holding_axe,predicate=ss_library:is_sneaking,tag=ArcaneTomeFifthSlot] [{"text":"Arcane Mana: ","color":"gray"},{"score":{"name":"*","objective":"ability013-01"},"color":"blue"},{"text":" (-250 Low Xp Penalty)","color":"gray"}]
# execute as @a[scores={ability020-02=1..,OnGround=1}] at @s unless entity @s[predicate=ss_library:is_sneaking] run particle explosion_emitter

effect give @a[scores={class003=1..,DamageDealt=1..},predicate=ss_library:holding_axe] resistance 5 0 true

# axes
execute as @a[scores={class003=1..}] run attribute @s generic.attack_speed modifier remove class003_attack_speed
execute as @a[scores={class003=1..}] run attribute @s generic.attack_damage modifier remove class003_attack_damage
execute as @a[scores={class003=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run attribute @s generic.attack_speed modifier add class003_attack_speed 0.3 add_multiplied_total
execute as @a[scores={class003=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] run attribute @s generic.attack_speed modifier add class003_attack_speed 0.3 add_multiplied_total
execute as @a[scores={class003=1..},nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run attribute @s generic.attack_speed modifier add class003_attack_speed 0.4 add_multiplied_total
execute as @a[scores={class003=1..},nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run attribute @s generic.attack_damage modifier add class003_attack_damage 0.5 add_multiplied_total
execute as @a[scores={class003=1..},predicate=ss_library:holding_axe] run attribute @s generic.attack_speed modifier add class003_attack_speed 0.2 add_multiplied_total