scoreboard players set @s[scores={SoftRestOrRespawn=1}] elytra_boost_cooldown 0

scoreboard players add @s[scores={FallFlying=1}] elytra_boost_cooldown 1
scoreboard players add @s[scores={FallFlying=0,elytra_boost_cooldown=..-1}] elytra_boost_cooldown 1

scoreboard players operation @s generic_b = @s flight_level
scoreboard players remove @s generic_b 3
    # this makes it so that the more boosts you have, the shorter the timer is
scoreboard players set @s[scores={generic_b=..-1}] generic_b 0
    # this value is used here because I don't want to add another calculation value.
    # even though generic_a is meant to be the final timer, I set it to 10 here solely for the calculation on the next line.
scoreboard players operation @s generic_b *= @s 5
scoreboard players set @s[scores={generic_b=151..}] generic_b 150
scoreboard players set @s generic_a 180
scoreboard players operation @s generic_a -= @s generic_b
execute if score @s elytra_boost_cooldown > @s generic_a run scoreboard players set @s elytra_boost_cooldown 0

# penalties
execute as @s[scores={DamageResisted=1..,elytra_boost_cooldown=-200..}] run scoreboard players operation @s elytra_boost_cooldown -= @s DamageResisted
execute as @s[scores={DamageTaken=1..,elytra_boost_cooldown=-200..}] run scoreboard players operation @s elytra_boost_cooldown -= @s DamageTaken
# scoreboard players operation @s[scores={FallFlying=1,flight_level=1..,elytra_boost_cooldown=-100..10}] elytra_boost_cooldown -= @s generic_a
scoreboard players add @s[scores={elytra_boost_cooldown=..-610}] elytra_boost_cooldown 10
    # execute as @s[scores={FallFlying=1,DamageDealt=1..,flight_level=10..,elytra_boost_cooldown=-100..}] run scoreboard players operation @s elytra_boost_cooldown -= @s DamageDealt