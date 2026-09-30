execute as @a run function of_characters:stats/set_secondary_stats

scoreboard players set @a Body 0
scoreboard players set @a Mind 0
scoreboard players set @a Soul 0
scoreboard players set @a Wit 0
scoreboard players set @a Will 0

execute as @a[scores={SoftRestOrRespawn=2}] run function of_characters:stats/set_stats

execute as @a run scoreboard players operation @s Body += @s BaseBody
execute as @a run scoreboard players operation @s Mind += @s BaseMind
execute as @a run scoreboard players operation @s Soul += @s BaseSoul
execute as @a run scoreboard players operation @s Wit += @s BaseWit
execute as @a run scoreboard players operation @s Will += @s BaseWill

# will max health
execute as @a[scores={SoftRestOrRespawn=2}] run scoreboard players operation @s generic_a = @s Will
execute as @a[scores={SoftRestOrRespawn=2}] run scoreboard players operation @s generic_b = @s Will
execute as @a[scores={SoftRestOrRespawn=2}] run scoreboard players operation @s generic_b %= @s 2
execute as @a[scores={SoftRestOrRespawn=2,generic_b=1}] run scoreboard players add @s generic_a 1
execute as @a[scores={SoftRestOrRespawn=2}] run scoreboard players add @s generic_a 20
execute as @a[scores={SoftRestOrRespawn=2}] run function run:score {"score":"generic_a","function":"of_characters:stats/will_max_health"}
    # this changes base max health, so be mindful of that.
    # it was much easier to do this than to add a modifier and also make the modifier update the BaseMaxHealth score for some reason