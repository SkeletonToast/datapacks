scoreboard players set @s CharacterSpecies 19
scoreboard players set @s[predicate=ss_library:holding_sword] ability021-00 1

effect give @s[scores={ability021-02=10}] hunger 5 4 true

scoreboard players add @s chr-001 1

effect give @s[scores={chr-001=400}] hunger 5 4 true
scoreboard players set @s[scores={chr-001=400..}] chr-001 1

# execute as @s if score @s species = @s CharacterSpecies run function crowskeep:tallcharacter