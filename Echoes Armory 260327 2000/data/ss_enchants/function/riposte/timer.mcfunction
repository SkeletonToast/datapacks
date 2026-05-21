scoreboard players add @s[scores={riposte_damage_blocked=1..}] riposte_timer 10
scoreboard players set @s[scores={riposte_timer=21..}] riposte_timer 20
execute unless score @s attack_particle_timer > @s riposte_timer run scoreboard players operation @s attack_particle_timer = @s riposte_timer