execute positioned ^ ^ ^-0.25 run function ss_armory:properties/guns/paintball/big_particles
execute positioned ^ ^ ^-0.25 run function ss_armory:properties/guns/paintball/paint_glass
playsound minecraft:block.deepslate.break block @a ^ ^ ^-0.25 1 1.2
playsound minecraft:entity.slime.jump block @a ^ ^ ^-0.25 2 1.2

# particle explosion_emitter ^ ^ ^-0.25
# particle large_smoke ^ ^ ^-0.25 0.5 0.5 0.5 0.01 40
# playsound entity.lightning_bolt.impact
# execute as @e[distance=..5] run damage @s 10 explosion