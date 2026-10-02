# dependency failures
execute unless data storage silver_star_library installed run return fail

function ss_lib:fetch/item_selected {s:"@a"}

scoreboard players add @a HasPropertiedWeapon 0
execute as @a[scores={ItemSelected=1,HasPropertiedWeapon=0}] if items entity @s weapon.mainhand \
    *[minecraft:custom_data~{weapon:{properties:{active:["mainhand"]}}}] run \
    scoreboard players set @s HasPropertiedWeapon 1
execute as @a[scores={ItemOffhand=1,HasPropertiedWeapon=0}] if items entity @s weapon.offhand \
    *[minecraft:custom_data~{weapon:{properties:{active:["offhand"]}}}] run \
    scoreboard players set @s HasPropertiedWeapon 1
execute as @a[scores={HasPropertiedWeapon=0}] if items entity @s hotbar.* \
    *[minecraft:custom_data~{weapon:{properties:{active:["hotbar"]}}}] run \
    scoreboard players set @s HasPropertiedWeapon 1

# shield penalty
execute as @a if items entity @s weapon.offhand shield run function ss_armory:shield_penalty
execute as @a unless items entity @s weapon.offhand shield run function ss_armory:shield_penalty_remove
execute as @a if items entity @s weapon.offhand shield[custom_data~{weapon:{negate_shield_penalty:true}}] run function ss_armory:shield_penalty_remove

# properties

    # two handed attribute removal
    execute as @a run attribute @s attack_damage modifier remove two_handed_attack_damage
    execute as @a run attribute @s attack_speed modifier remove two_handed_attack_speed

    # properties tick
    execute if entity @a[scores={HasPropertiedWeapon=1..}] run function ss_armory:properties/_main
    execute as @a unless entity @s[scores={GunType=4}] run scoreboard players set @s PaintballType 0
    scoreboard players remove @a[scores={GunType=4,PaintballReload=0}] PaintballReload 1
    scoreboard players remove @a[scores={PaintballReload=1..}] PaintballReload 1
    # execute as @a[scores={PaintballReload=1..}] run function ss_lib:status/immobilized_jump
    
    # execute as @a unless entity @s[scores={GunType=1..2}] run attribute @s step_height modifier remove gun_step_height

    # quick draw attribute removal
    execute as @a[scores={HasPropertiedWeapon=0}] run attribute @s attack_speed modifier remove quick_draw_attack_speed
    execute as @a[scores={ssa.attack_speed_cap.timer=1..}] run attribute @s attack_speed modifier remove quick_draw_attack_speed
    execute as @a[tag=!QuickDrawUsed] run attribute @s attack_speed modifier remove quick_draw_attack_speed
    tag @a[tag=QuickDrawUsed] remove QuickDrawUsed

    # gunshot advancement revoke
    advancement revoke @a[advancements={ss_armory:gun/shot_crossbow=true}] only ss_armory:gun/shot_crossbow

    # score reset
    scoreboard players remove @a[scores={HasPropertiedWeapon=1..}] HasPropertiedWeapon 1
    scoreboard players set @a GunType 0

# attack speed cap
function ss_armory:attack_speed_cap

# crit damage decrease
execute as @a[scores={FallFlying=0}] if predicate ss_lib:crit_eligible run attribute @s attack_damage modifier add ss_armory.crit.attack_damage -0.25 add_multiplied_total
execute as @a unless predicate ss_lib:crit_eligible run attribute @s attack_damage modifier remove ss_armory.crit.attack_damage
execute as @a[scores={FallFlying=1}] run attribute @s attack_damage modifier remove ss_armory.crit.attack_damage

execute as @a if predicate ss_lib:crit_eligible if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ss_enchants:critical"}]] run function ss_enchants:critical/apply
execute as @a if predicate ss_lib:crit_eligible unless items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ss_enchants:critical"}]] run function ss_enchants:critical/remove

# riposte enchantment
scoreboard players remove @a[scores={riposte_timer=1..}] riposte_timer 1
scoreboard players set @a[scores={riposte_damage_blocked=1..}] riposte_damage_blocked 0
execute as @a[scores={riposte_timer=0}] run attribute @s attack_damage modifier remove ss_enchants:riposte.attack_damage

# gun damage reduce
scoreboard players set @s gun_base_damage 0