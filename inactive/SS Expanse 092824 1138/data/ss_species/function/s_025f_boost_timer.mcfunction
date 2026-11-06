scoreboard players set @s[scores={SoftRestOrRespawn=1}] species025-01 0

scoreboard players add @s[scores={FallFlying=1}] species025-01 1
scoreboard players add @s[scores={FallFlying=0,species025-01=..-1}] species025-01 1

scoreboard players operation @s generic_b = @s species025-05
scoreboard players remove @s generic_b 3
    # this makes it so that the more boosts you have, the shorter the timer is
scoreboard players set @s[scores={generic_b=..-1}] generic_b 0
    # this value is used here because I don't want to add another calculation value.
    # even though generic_a is meant to be the final timer, I set it to 10 here solely for the calculation on the next line.
scoreboard players operation @s generic_b *= @s 5
scoreboard players set @s generic_a 100
scoreboard players operation @s generic_a -= @s generic_b
scoreboard players set @s[scores={generic_a=..19}] generic_a 20
execute if score @s species025-01 > @s generic_a run scoreboard players set @s species025-01 0

# penalties
execute as @s[scores={DamageResisted=1..,species025-01=-200..}] run scoreboard players operation @s species025-01 -= @s DamageResisted
execute as @s[scores={DamageTaken=1..,species025-01=-200..}] run scoreboard players operation @s species025-01 -= @s DamageTaken
scoreboard players operation @s[scores={FallFlying=1,species025-02=1..,species025-01=-100..10}] species025-01 -= @s generic_a
scoreboard players add @s[scores={species025-01=..-610}] species025-01 10
    # execute as @s[scores={FallFlying=1,DamageDealt=1..,species025-05=10..,species025-01=-100..}] run scoreboard players operation @s species025-01 -= @s DamageDealt