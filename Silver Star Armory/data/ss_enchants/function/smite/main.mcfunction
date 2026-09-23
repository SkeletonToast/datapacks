execute at @s at @e[type=#minecraft:sensitive_to_smite,distance=..5] anchored eyes run particle flash{color:[1.0,1.0,1.0,1.0]} ^ ^ ^ 0 0 0 0 1
execute on attacker at @s anchored eyes run particle flash{color:[1.0,1.0,1.0,1.0]} ^ ^ ^4 0 0 0 0 1
execute at @s[type=#ss_lib:hostile] on attacker run function ss_enchants:smite/splash_damage_mobs with entity @s
execute at @s[type=player] on attacker run function ss_enchants:smite/splash_damage_mobs with entity @s

execute at @s on attacker if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"minecraft:smite","levels":1}]] as @e[type=#minecraft:sensitive_to_smite,distance=0.1..5] run damage @s 1 magic
execute at @s on attacker if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"minecraft:smite","levels":2}]] as @e[type=#minecraft:sensitive_to_smite,distance=0.1..5] run damage @s 2 magic
execute at @s on attacker if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"minecraft:smite","levels":3}]] as @e[type=#minecraft:sensitive_to_smite,distance=0.1..5] run damage @s 3 magic
execute at @s on attacker if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"minecraft:smite","levels":4}]] as @e[type=#minecraft:sensitive_to_smite,distance=0.1..5] run damage @s 4 magic
execute at @s on attacker if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"minecraft:smite","levels":5}]] as @e[type=#minecraft:sensitive_to_smite,distance=0.1..5] run damage @s 5 magic