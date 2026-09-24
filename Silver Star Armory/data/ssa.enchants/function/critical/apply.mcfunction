execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ssa.enchants:critical","levels":1}]] run \
    attribute @s attack_damage modifier add ssa.enchants:enchantment.critical.1 0.06 add_multiplied_total
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ssa.enchants:critical","levels":2}]] run \
    attribute @s attack_damage modifier add ssa.enchants:enchantment.critical.2 0.12 add_multiplied_total
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ssa.enchants:critical","levels":3}]] run \
    attribute @s attack_damage modifier add ssa.enchants:enchantment.critical.3 0.18 add_multiplied_total

# scoreboard players set @s attack_particle_timer 2