execute as @s[scores={EchoDifficulty=1}] run tellraw @s [{text:"Players on Homesteader difficulty are ineligible for Proficiency.",color:gray}]
execute as @s[scores={EchoDifficulty=1}] run return fail

execute as @s[tag=!InCombat] run function echoes:player/combat/proficiency/_main
execute as @s[tag=!InCombat] run function echoes:player/combat/proficiency/apply
# function parse:score {score:proficiency_normalized",prepend:"",append:".",prepend_position:0,append_position:3,function:"echoes:player/combat/proficiency/apply_damage"}

tellraw @s [""]
tellraw @s [{"text":"❖ Proficiency: ","color":"gray"},{"score":{"name":"@s","objective":"proficiency"},"color":"white"}]
function parse:score {prepend:"",append:".",prepend_position:0,append_position:2,score:proficiency,function:"sse.dev:proficiency_output_1"}

function ss_lib:fetch/attack_damage {s:"@s",scale:1000,bypass_check:true}
function math:round {score:AttackDamage,round:10,reduce:true}
function parse:score {prepend:"",append:".",prepend_position:0,append_position:2,score:AttackDamage,function:"sse.dev:proficiency_output_2"}

tellraw @s [""]
tellraw @s [{"text":"❖ Unadjusted Strength: ","color":"gray"},{"score":{"name":"@s","objective":"prof_str_unadj"},"color":"red"}]
tellraw @s [{"text":"❖ Unadjusted Dexterity: ","color":"gray"},{"score":{"name":"@s","objective":"prof_dex_unadj"},"color":"gold"}]
tellraw @s [{"text":"❖ Unadjusted Tact: ","color":"gray"},{"score":{"name":"@s","objective":"prof_tact_unadj"},"color":"blue"}]
tellraw @s [{"text":"❖ Unadjusted Soul: ","color":"gray"},{"score":{"name":"@s","objective":"prof_soul_unadj"},"color":"light_purple"}]
tellraw @s [{"text":"❖ Unadjusted Mind: ","color":"gray"},{"score":{"name":"@s","objective":"prof_mind_unadj"},"color":"green"}]
tellraw @s [""]
tellraw @s [{"text":"❖ Adjusted Strength: ","color":"gray"},{"score":{"name":"@s","objective":"proficiency_str"},"color":"red"}]
tellraw @s [{"text":"❖ Adjusted Dexterity: ","color":"gray"},{"score":{"name":"@s","objective":"proficiency_dex"},"color":"gold"}]
tellraw @s [{"text":"❖ Adjusted Tact: ","color":"gray"},{"score":{"name":"@s","objective":"proficiency_tact"},"color":"blue"}]
tellraw @s [{"text":"❖ Adjusted Soul: ","color":"gray"},{"score":{"name":"@s","objective":"proficiency_soul"},"color":"light_purple"}]
tellraw @s [{"text":"❖ Adjusted Mind: ","color":"gray"},{"score":{"name":"@s","objective":"proficiency_mind"},"color":"green"}]
tellraw @s [""]

tellraw @s [{"text":"❖ Active Modifiers: ","color":"gray"}]
execute as @s[tag=Strength_feat_2,tag=Dexterity_feat_2] unless items entity @s weapon.offhand * run tellraw @s [{"text":" Masterful Two Handing: +Proficiency","color":"white"}]
    scoreboard players set @s generic_a 18
        scoreboard players operation @s generic_b = @s Vitality
        scoreboard players operation @s generic_b /= #const.7 value
    scoreboard players operation @s generic_a -= @s generic_b
execute if score @s Food <= @s generic_a run tellraw @s [{"text":"Low Hunger: -Proficiency","color":"white"}]

tellraw @s [""]
tellraw @s [{"text":"Strength: ","color":"gray"}]
execute if items entity @s weapon.mainhand #echoes:netherite_weapon run tellraw @s [{"text":" Netherite Weapon: +Str","color":"red"}]
execute as @s[tag=Strength_feat_2,tag=!Dexterity_feat_2] unless items entity @s weapon.offhand * run tellraw @s [{"text":" Two Handing: +Str","color":"red"}]
# execute as @s[tag=Strength_feat_2,tag=!Dexterity_feat_2] if items entity @s weapon.offhand clock run tellraw @s [{"text":" Two Handing: +Str","color":"red"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"echoes:style_brigand"}]] run tellraw @s [{"text":" Brigand Style: +Str","color":"red"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"echoes:style_carnivore"}]] run tellraw @s [{"text":" Carnivore Style: +Str","color":"red"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"echoes:style_halberdier"}]] run tellraw @s [{"text":" Lancer Style: -Str","color":"red"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"echoes:style_reaper"}]] run tellraw @s [{"text":" Reaper Style: -Str","color":"red"}]
execute if items entity @s weapon.mainhand #echoes:golden_weapon run tellraw @s [{"text":" Golden Weapon: -Str","color":"red"}]
execute if items entity @s weapon.mainhand #echoes:copper_weapon run tellraw @s [{"text":" Copper Weapon: -Str","color":"red"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"echoes:style_equalizer"}]] run tellraw @s [{"text":" Equalizer Style","color":"red"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"echoes:black_gold_halo_breaker"}]] run tellraw @s [{"text":" Black Gold Halo Breaker: +Str","color":"red"}]

tellraw @s [""]
tellraw @s [{"text":"Dexterity: ","color":"gray"}]
execute as @s[tag=!Strength_feat_2,tag=Dexterity_feat_2] unless items entity @s weapon.offhand * run tellraw @s [{"text":" Two Handing: +Dex","color":"gold"}]
# execute as @s[tag=!Strength_feat_2,tag=Dexterity_feat_2] if items entity @s weapon.offhand clock run tellraw @s [{"text":" Two Handing: +Dex","color":"gold"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"echoes:style_halberdier"}]] run tellraw @s [{"text":" Lancer Style: +Dex","color":"gold"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"echoes:style_reaper"}]] run tellraw @s [{"text":" Reaper Style: +Dex","color":"gold"}]
execute if items entity @s weapon.mainhand #echoes:golden_weapon run tellraw @s [{"text":" Golden Weapon: -Dex","color":"gold"}]
execute if items entity @s weapon.mainhand #echoes:copper_weapon run tellraw @s [{"text":" Copper Weapon: -Dex","color":"gold"}]
execute if items entity @s weapon.mainhand #echoes:netherite_weapon run tellraw @s [{"text":" Netherite Weapon: -Dex","color":"gold"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"echoes:style_brigand"}]] run tellraw @s [{"text":" Brigand Style: -Dex","color":"gold"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"echoes:style_carnivore"}]] run tellraw @s [{"text":" Carnivore Style: -Dex","color":"gold"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"echoes:style_equalizer"}]] run tellraw @s [{"text":" Equalizer Style","color":"gold"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"echoes:black_gold_halo_breaker"}]] run tellraw @s [{"text":" Black Gold Halo Breaker: +Dex","color":"gold"}]

tellraw @s [""]
tellraw @s [{"text":"Tact: ","color":"gray"}]
execute as @s[tag=Tact_feat_2] on vehicle on passengers if entity @s[tag=Tact_feat_2] run tellraw @s [{"text":" Mounted: +Tact","color":"blue"}]
execute as @s[tag=Tact_feat_2,scores={FallFlying=1}] run tellraw @s [{"text":" Gliding: +Tact","color":"blue"}]
tellraw @s[tag=Tact_feat_3] [{"text":" High Tact: +Tact","color":"blue"}]

tellraw @s [""]
tellraw @s [{"text":"Soul: ","color":"gray"}]
execute if items entity @s weapon.mainhand #echoes:golden_weapon run tellraw @s [{"text":" Golden Weapon: +Soul","color":"light_purple"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"echoes:halo_breaker"}]] run tellraw @s [{"text":" Halo Breaker: +Soul","color":"light_purple"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"echoes:black_gold_halo_breaker"}]] run tellraw @s [{"text":" Black Gold Halo Breaker: 0 Soul","color":"light_purple"}]

tellraw @s [""]
tellraw @s [{"text":"Mind: ","color":"gray"}]
execute if items entity @s weapon.mainhand #echoes:copper_weapon run tellraw @s [{"text":" Copper Weapon: +Mind","color":"green"}]
execute if items entity @s weapon.mainhand *[enchantments~[{"enchantments":"ss_enchants:hexblade"}]] run tellraw @s [{"text":" Hexblade: +Mind","color":"green"}]