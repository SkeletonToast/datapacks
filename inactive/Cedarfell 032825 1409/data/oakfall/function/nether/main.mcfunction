execute at @a as @e[type=minecraft:interaction,tag=NetherRift,distance=..20,scores={of_rift_lifetime=50..}] at @s positioned ~ ~0.25 ~ run function oakfall:nether/rift_particles
execute at @a as @e[type=minecraft:interaction,tag=NetherRift,distance=..20,scores={of_rift_lifetime=-1}] at @s positioned ~ ~0.25 ~ run function oakfall:nether/rift_particles

execute at @a as @e[type=minecraft:interaction,tag=NetherRift,distance=..20,scores={of_rift_cooldown=1..}] if data entity @s interaction run data remove entity @s interaction
execute at @a as @e[type=minecraft:interaction,tag=NetherRift,distance=..10] at @s if data entity @s interaction on target as @s[nbt={Dimension:"oakfall:oakfall"}] at @s run function oakfall:nether/teleport_nether
execute at @a as @e[type=minecraft:interaction,tag=NetherRift,distance=..10] at @s if data entity @s interaction on target as @s[nbt={Dimension:"minecraft:the_nether"}] run function oakfall:nether/teleport_overworld
execute at @a as @e[type=minecraft:interaction,tag=NetherRift,distance=..10,scores={of_rift_lifetime=..100}] if data entity @s attack run data remove entity @s attack
execute at @a as @e[type=minecraft:interaction,tag=NetherRift,distance=..10] at @s if data entity @s attack on attacker if items entity @s weapon.mainhand nether_wart as @n[type=minecraft:interaction,tag=NetherRift,distance=0] run scoreboard players set @s of_rift_lifetime 100

execute at @a at @e[type=minecraft:interaction,tag=NetherRift,distance=..20] as @e[type=minecraft:interaction,tag=NetherRift,distance=..10] if score @s of_rift_lifetime < @n[type=minecraft:interaction,tag=NetherRift,distance=0] of_rift_lifetime run scoreboard players set @s of_rift_lifetime 0
execute at @a as @e[type=minecraft:interaction,tag=NetherRift,distance=..20] at @s unless block ~ ~ ~ #ss_lib:nonsolidblocks run scoreboard players set @s of_rift_lifetime 0

scoreboard players remove @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_lifetime=1..}] of_rift_lifetime 1
execute at @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_lifetime=77}] run playsound block.portal.trigger block @a
execute at @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_lifetime=1..60}] run particle squid_ink ~ ~ ~ 0.5 0.5 0.5 0 1
execute at @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_lifetime=1..40}] run particle minecraft:squid_ink ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a
# execute at @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_lifetime=1..20}] run particle squid_ink ~ ~ ~ 1 1 1 0 2
execute at @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_lifetime=1}] as @a[distance=..5] run damage @s 6 magic
execute at @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_lifetime=1}] run playsound entity.allay.death block @a ~ ~ ~ 0.5 0.5
execute at @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_lifetime=1}] run playsound entity.generic.explode block @a ~ ~ ~ 0.5 0.5
execute at @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_lifetime=0}] run particle flash
execute at @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_lifetime=0}] run particle squid_ink ~ ~ ~ 0.5 0.5 0.5 0 30
execute at @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_lifetime=0}] run particle squid_ink ~ ~ ~ 2 2 2 0 30
execute at @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_lifetime=0}] run particle reverse_portal ~ ~ ~ 0 0 0 1 100
kill @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_lifetime=0}]

execute as @a[scores={Dimension=1}] at @s in oakfall:oakfall positioned ~ ~ ~ if entity @a[distance=..20] run particle reverse_portal ~ ~ ~ 0.05 0.05 0.05 0 1 normal
execute as @a[scores={Dimension=3}] at @s in minecraft:the_nether positioned ~ ~ ~ if entity @a[distance=..20] run particle reverse_portal ~ ~ ~ 0.05 0.05 0.05 0 1 normal

# cooldown
# execute at @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_cooldown=1..}] 
scoreboard players remove @e[type=minecraft:interaction,tag=NetherRift,scores={of_rift_cooldown=1..}] of_rift_cooldown 1