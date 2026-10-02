scoreboard players add @a ssa.attack_speed_cap.timer 0

function ss_lib:fetch/attack_speed {s:"@a",scale:100,bypass_check:false}
execute as @a run scoreboard players operation @s ssa.attack_speed_cap.attack_speed = @s AttackSpeed
execute as @a run scoreboard players operation @s ssa.attack_speed_cap = $ssa.gamerule.attack_speed_cap value
    # value that attack speed will be capped at, scaled by 10, so that it's easy to change
    # this means that attack speed will be capped at 5x per second
    # the basic value is just stored in armory/_load for now, it'll probably become more modifiable in the future

execute as @a run attribute @s attack_speed modifier remove attack_speed_cap
execute as @a[scores={DamageDealt=1..,ssa.attack_speed_cap.timer=0}] at @s anchored eyes run playsound block.stone.break player @s ^ ^ ^ 0.7 1.2

scoreboard players set @a[scores={DamageDealt=1..}] ssa.attack_speed_cap.timer 200
execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s ssa.attack_speed_cap.timer /= @s ssa.attack_speed_cap
    # this gets the amount of ticks allotted to each attack. this specific example is (200 / 50), so 4 ticks minimum before the player can attack again (which comes out to 1/5 of a second, like we intended)

execute as @a[scores={DamageDealt=1..,ssa.attack_speed_cap.timer=1..}] at @s anchored eyes run playsound minecraft:entity.player.attack.weak player @s ^ ^ ^ 2 1.3

# execute as @a[scores={ssa.attack_speed_cap.timer=1..}] unless items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ss_enchants:barrage"}]] run attribute @s attack_damage modifier add attack_damage_speed_cap -1 add_multiplied_total
execute as @a[scores={ssa.attack_speed_cap.timer=1..}] run attribute @s attack_damage modifier add attack_damage_speed_cap -1 add_multiplied_total
execute as @a[scores={ssa.attack_speed_cap.timer=1..}] run function ss_armory:attack_speed_cap/main {"sign":"-"}

# old - would double excess attack speed if it was over the threshold
    # execute as @a[scores={ssa.attack_speed_cap.timer=0}] run function ss_armory:attack_speed_cap/main {"sign":""}

execute as @a[scores={ssa.attack_speed_cap.timer=0}] run attribute @s attack_damage modifier remove attack_damage_speed_cap

scoreboard players remove @a[scores={ssa.attack_speed_cap.timer=1..}] ssa.attack_speed_cap.timer 1

# this institutes the cap but doesn't update the damage indicator, im just going to leave it as is for now