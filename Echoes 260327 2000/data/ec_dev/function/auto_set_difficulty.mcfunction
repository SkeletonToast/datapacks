scoreboard players set @s generic_a 7

execute if score @s Strength > @s generic_a run \
    scoreboard players operation @s generic_a = @s Strength
execute if score @s Dexterity > @s generic_a run \
    scoreboard players operation @s generic_a = @s Dexterity
execute if score @s Resolve > @s generic_a run \
    scoreboard players operation @s generic_a = @s Resolve
execute if score @s Mind > @s generic_a run \
    scoreboard players operation @s generic_a = @s Mind
execute if score @s Tact > @s generic_a run \
    scoreboard players operation @s generic_a = @s Tact
execute if score @s SoulSigned > @s generic_a run \
    scoreboard players operation @s generic_a = @s SoulSigned

scoreboard players set @s[scores={generic_a=  ..20}] EchoDifficulty 1
scoreboard players set @s[scores={generic_a=21..40}] EchoDifficulty 2
scoreboard players set @s[scores={generic_a=41..60}] EchoDifficulty 3
scoreboard players set @s[scores={generic_a=61..90}] EchoDifficulty 4
scoreboard players set @s[scores={generic_a=91..  }] EchoDifficulty 5

function echoes:stats/echo_level

scoreboard players set @s[scores={EchoLevel=11..}] EchoDifficulty 2
scoreboard players set @s[scores={EchoLevel=41..}] EchoDifficulty 3
scoreboard players set @s[scores={EchoLevel=101..}] EchoDifficulty 4
scoreboard players set @s[scores={EchoLevel=231..}] EchoDifficulty 5