execute as @r[scores={ability001=1..}] run function ss_abilities:ab_001_grace
execute as @r[scores={ability002=1..}] run function ss_abilities:ab_002_chainjumping
execute as @r[scores={ability003=1..}] run function ss_abilities:ab_003_nestling
execute as @r[scores={ability004=1..}] run function ss_abilities:ab_004_stampede
execute as @r[scores={ability005=1..}] run function ss_abilities:ab_005_seaskin
execute as @r[scores={ability006=1..}] run function ss_abilities:ab_006_goodfortune
execute as @r[scores={ability007=1..}] run function ss_abilities:ab_007_voidimmunity
execute as @r[scores={ability008=1..}] run function ss_abilities:ab_008_well_rested
execute as @r[scores={ability009=1..}] run function ss_abilities:ab_009_carnivore
execute as @r[scores={ability010=1..}] run function ss_abilities:ab_010_herbivore
execute as @r[scores={ability011=1..}] run function ss_abilities:ab_011_piscivore
    # execute as @r[scores={ability012=1..}] run function ss_abilities:ab_012_metabolism
        #disabled temporarily because of the weird full hunger drain bug
            #also just to try out combat without metabolism
execute as @r[scores={ability013=1..}] run function ss_abilities:ab_013_arcanemana
execute as @r[scores={ability014=1..}] run function ss_abilities:ab_014_cavalry
execute as @r[scores={ability015=1..}] run function ss_abilities:ab_015_soulstride
execute as @r[scores={ability016=1..}] run function ss_abilities:ab_016_shadow_step
execute as @r[scores={ability017=1..}] run function ss_abilities:ab_017_sturdy_stagger
    # execute as @r[scores={ability018=1..}] run function ss_abilities:ab_018_strongwings
    # execute as @r[scores={ability019=1..}] run function ss_abilities:ab_019_agile
execute as @r[scores={ability020=1..}] run function ss_abilities:ab_020_fallingstar
execute as @r[scores={ability021=1..}] run function ss_abilities:ab_021_sanguinestep
    # execute as @r[scores={ability022=1..}] run function ss_abilities:ab_022_combatexperience
execute as @r[scores={ability023=1..}] run function ss_abilities:ab_023_immunesystem
execute as @r[scores={ability024=1..}] run function ss_abilities:ab_024_marking
execute as @r[scores={ability025=1..}] run function ss_abilities:ab_025_happysmile
    # execute as @r[scores={ability026=1..}] run function ss_abilities:ab_026_armorsetbonus
    # execute as @a[scores={ability027=1..}] run function ss_abilities:ab_027_doublejump
        # disabled until it is reworked to be more consistent and convenient
execute as @r[scores={ability028=1..}] run function ss_abilities:ab_028_cobweb_break
execute as @r[scores={ability029=1..}] run function ss_abilities:ab_029_seismicslam
execute as @r[scores={ability030=1..}] run function ss_abilities:ab_030_stealthy

scoreboard players add @a ability001 0
scoreboard players add @a ability002 0
scoreboard players add @a ability003 0
scoreboard players add @a ability004 0
scoreboard players add @a ability005 0
scoreboard players add @a ability006 0
scoreboard players add @a ability007 0
scoreboard players add @a ability008 0
scoreboard players add @a ability009 0
scoreboard players add @a ability010 0
scoreboard players add @a ability011 0
scoreboard players add @a ability012 0
scoreboard players add @a ability013 0
scoreboard players add @a ability014 0
scoreboard players add @a ability015 0
scoreboard players add @a ability016 0
scoreboard players add @a ability017 0
    # scoreboard players add @a ability018 0
scoreboard players add @a ability020 0
scoreboard players add @a ability020-00 0
scoreboard players add @a ability021 0
scoreboard players add @a ability021-00 0
    # scoreboard players add @a ability022 0
scoreboard players add @a ability023 0
scoreboard players add @a ability023 0
scoreboard players add @a ability025 0
scoreboard players add @a ability026 0
scoreboard players add @a ability027 0
scoreboard players add @a ability028 0
scoreboard players add @a ability029 0
scoreboard players add @a ability030 0
# scoreboard players add @a ability024 0