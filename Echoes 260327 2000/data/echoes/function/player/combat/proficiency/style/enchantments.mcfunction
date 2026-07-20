execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"echoes:style_equalizer"}]] run function echoes:player/combat/proficiency/style/equalizer
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"echoes:style_brigand"}]] run scoreboard players add @s proficiency_str 15
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"echoes:style_brigand"}]] run scoreboard players remove @s proficiency_dex 15
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"echoes:style_carnivore"}]] run scoreboard players add @s proficiency_str 30
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"echoes:style_carnivore"}]] run scoreboard players remove @s proficiency_dex 45
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"echoes:style_halberdier"}]] run scoreboard players add @s proficiency_dex 15
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"echoes:style_halberdier"}]] run scoreboard players remove @s proficiency_str 15
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"echoes:style_reaper"}]] run scoreboard players add @s proficiency_dex 30
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"echoes:style_reaper"}]] run scoreboard players remove @s proficiency_str 45

execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ss_enchants:hexblade"}]] run scoreboard players add @s proficiency_mind 30