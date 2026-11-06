scoreboard players set @a[scores={species=006}] ability008 1
scoreboard players set @a[scores={species=006}] ability017 1
scoreboard players set @a[scores={species=006}] ability009 1
tag @a[scores={species=006}] add UnlockedParrying
scoreboard players remove @a[scores={species=006}] ParryMultiplier 1
scoreboard players set @a[scores={species=006}] ParryChargeMax 300
tag @a[scores={species=006},tag=!Staggerable] add Staggerable
execute as @a[scores={species=006}] run attribute @s minecraft:generic.knockback_resistance base set 1

# s-urid fetch
execute as @a[scores={species=006,SoftRestOrRespawn=1}] run function urid:fetch_and_write {"score":"species006-urid"}

# hunkering
execute as @a[scores={species=006,OnGround=1,UsingShield=1..},tag=!FeldspariHunkered,tag=!FeldspariHunkerEligibility] run function ss_species:s_006f_hunkerdown
execute as @a[scores={species=006,UsingShield=0},tag=FeldspariHunkered,tag=!FeldspariHunkerEligibility] run function ss_species:s_006f_unhunker
tag @a remove FeldspariHunkerEligibility

execute as @a[scores={species=006},tag=FeldspariHunkered] run attribute @s minecraft:generic.armor modifier add species006_hunker_armor 6 add_value
execute as @a[scores={species=006},tag=FeldspariHunkered] run attribute @s minecraft:generic.armor_toughness modifier add species006_hunker_armor_toughness 5 add_value
execute as @a[scores={species=006},tag=FeldspariHunkered] run attribute @s minecraft:generic.movement_speed modifier add species006_hunker_movement_speed -0.05 add_value
execute as @a[scores={species=006},tag=FeldspariHunkered] run attribute @s minecraft:generic.jump_strength modifier add species006_hunker_jump_height -1 add_multiplied_total
scoreboard players set @a[scores={species=006,Staggered=0},tag=FeldspariHunkered] ability023 1

execute as @a[scores={species=006},tag=!FeldspariHunkered] run attribute @s minecraft:generic.armor modifier remove species006_hunker_armor
execute as @a[scores={species=006},tag=!FeldspariHunkered] run attribute @s minecraft:generic.armor_toughness modifier remove species006_hunker_armor_toughness
execute as @a[scores={species=006},tag=!FeldspariHunkered] run attribute @s minecraft:generic.movement_speed modifier remove species006_hunker_movement_speed
execute as @a[scores={species=006},tag=!FeldspariHunkered] run attribute @s minecraft:generic.jump_strength modifier remove species006_hunker_jump_height

# ALLY DAMAGE REDUCTION
execute as @a[scores={species=006}] if score @s Health >= @s BaseMaxHealth at @s run function ss_species:s_006f_ally_urid
execute as @a[scores={species=006}] if score @s Health >= @s BaseMaxHealth at @s as @a[distance=..10,tag=!FeldpsariAllyIneligible] if score @s species006-urid = @p[distance=0] species006-urid run function ss_species:s_006f_ally_resistance
execute as @a[scores={species=006}] if score @s Health >= @s BaseMaxHealth at @s run function ss_species:s_006f_ally_damage_calculate

execute at @a[scores={species=006,DamageTaken=100..}] run playsound minecraft:entity.polar_bear.hurt player @a ~ ~ ~

# if you want to do noises like the kitsune:
# deal damage: minecraft:entity.polar_bear.warning
# take damage: minecraft:entity.polar_bear.hurt

# HOW TO MAKE FELDSPARI ACTUALLY COOL AGAIN
    # their whole thing will be that they're great at reducing and negating damage.
    # with rapid damage, they'll gradually increase in damage reduction over time.
            # see below section for damage thresholds.
        # when the score reaches each interval of 20, damage reduction will increase by 1, maxing out at 10 damage.
            # note: what??? how were you planning on just having numerical damage reduction?
                # ohhh maybe resistance?
        # when the score reaches each interval of 20, movement AND attack speed will decrease by 5%, maxing out at a 50% decrease.
            # for attack speed just do it at the appropriate intervals. it can cap at 40% that's fine i think
        # when the score reaches each interval of 40, attack damage will decrease by 1, maxing out at 5 damage.
    # there will be X tiers of predicates, which are used to calculate how much damage is needed to "break" feldspari "armor" (see above section about damage reduction).
            # the score can decrease to a minimum of -100, but it will automatically increase back up to 0.
        # Tier 0:
            # Increase armor sss_core: 4-10 damage hits
            # Keep armor sss_core: 10-12 damage hits
            # Decrease armor sss_core: 13+ damage hits
                # Tier 0 is for any weapons <= iron with NO sharpness
        # Tier 1:
            # Increase armor sss_core: 4-10 damage hits
            # Keep armor sss_core: 10-12 damage hits
            # Decrease armor sss_core: 13+ damage hits
                # Tier 1 is for any weapons <= iron with less than 3 sharpness, or any weapons >= diamond with NO sharpness
        # Tier 2:
            # Increase armor sss_core: 4-14 damage hits
            # Keep armor sss_core: 15-20 damage hits
            # Decrease armor sss_core: 21+ damage hits
                # Tier 2 is for any weapons <= iron with any level of sharpness, or any weapons >= diamond with less than 3 sharpness
        # Tier 3:
            # Increase armor sss_core: 4-17 damage hits
            # Keep armor sss_core: 18-20 damage hits
            # Decrease armor sss_core: 21+ damage hits
                # Tier 3 is for any weapons >= diamond with more than 3 sharpness
    # feldspari will be able to grant resistance to nearby allies as well
        # any players that hurt Feldspari, or vice versa, will be given a tag with a ten-second cooldown, that prevents them from getting that resistance effect.
            # these tagged players will also get mining fatigue when holding a non-sword, non-axe tool around Feldspari.
                # this is so that feldspari can block out enemies more easily.
        # feldspari are really meant to be tanks for their team.
            # perhaps some ability can damage Feldspari to heal their nearby teammates.
            # alternatively, a system can be implemented that tests whether teammates take over a certain amount of damage, and if they do, that damage is healed from them and instead dealt to their Feldspari ally.

# sharpness diseligibility
# execute unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:sharpness"}]}}}]