
# isolation effects (isolation calculation is scheduled)
scoreboard players add @a[scores={species=028,species028-01=30..}] trait001 1
scoreboard players add @a[scores={species=028,species028-01=65..}] trait001 1
scoreboard players add @a[scores={species=028,species028-01=100..}] trait001 1

scoreboard players set @a[scores={species=028,species028-01=100..}] ability006 1

tag @a[scores={species=028,species028-01=100..}] add UnlockedParrying

scoreboard players set @a[scores={species=028,species028-01=130..}] ability023 1

scoreboard players set @a[scores={species=028,species028-01=130..}] ability009 1
scoreboard players set @a[scores={species=028,species028-01=130..}] ability010 1
scoreboard players set @a[scores={species=028,species028-01=130..}] ability011 1

scoreboard players set @a[scores={species=028,species028-01=150..}] ability017 1

execute as @a[scores={species=028,species028-01=50..99}] run function ss_statuses:aggressive {"multiplier":"0.1"}
execute as @a[scores={species=028,species028-01=100..}] run function ss_statuses:aggressive {"multiplier":"0.2"}

execute as @a[scores={species=028,species028-01=50..99}] run function ss_statuses:fortified {"multiplier":"0.3"}
execute as @a[scores={species=028,species028-01=100..}] run function ss_statuses:fortified {"multiplier":"0.5"}