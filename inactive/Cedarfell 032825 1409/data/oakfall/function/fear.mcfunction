scoreboard players set @a[scores={TimeSinceDeath=1}] of_fear 0

execute as @a unless entity @s[scores={of_fear_eligible=..-1}] run scoreboard players set @s of_fear_eligible 1
execute as @a[scores={SoftRestOrRespawn=1}] run scoreboard players set @s of_fear_eligible 1
scoreboard players set @a[tag=InVillage,scores={of_fear=..3000}] of_fear_eligible 0
scoreboard players set @a[scores={Dimension=..2}] of_fear_eligible 0
scoreboard players set @a[gamemode=creative] of_fear_eligible 0
scoreboard players set @a[gamemode=spectator] of_fear_eligible 0
scoreboard players set @a[name="Meat_Gum",scores={Character=1}] of_fear_eligible 0

# threshold set
    # original score assignment
    scoreboard players set @a of_fear_threshold_1 100
    execute as @a[scores={Focus=10..}] run scoreboard players operation @s of_fear_threshold_1 += @s Focus
    execute as @a run scoreboard players operation @s of_fear_threshold_2 = @s of_fear_threshold_1
    execute as @a[scores={Focus=10..}] run scoreboard players operation @s of_fear_threshold_2 += @s Focus
    execute as @a run scoreboard players operation @s of_fear_threshold_3 = @s of_fear_threshold_2
    execute as @a[scores={Focus=10..}] run scoreboard players operation @s of_fear_threshold_3 += @s Focus
    execute as @a run scoreboard players operation @s of_fear_threshold_4 = @s of_fear_threshold_3
    execute as @a[scores={Focus=10..}] run scoreboard players operation @s of_fear_threshold_4 += @s Focus
    execute as @a run scoreboard players operation @s of_fear_threshold_5 = @s of_fear_threshold_4
    execute as @a[scores={Focus=10..}] run scoreboard players operation @s of_fear_threshold_5 += @s Focus

    # t2 multiplication
    execute as @a run scoreboard players operation @s of_fear_threshold_2 *= @s 10
    execute as @a run scoreboard players operation @s of_fear_threshold_2 *= @s 10
    execute as @a run scoreboard players operation @s of_fear_threshold_2 *= @s 2

    # t3 multiplication
    execute as @a run scoreboard players operation @s of_fear_threshold_3 *= @s 10
    execute as @a run scoreboard players operation @s of_fear_threshold_3 *= @s 10
    execute as @a run scoreboard players operation @s of_fear_threshold_3 *= @s 5
    scoreboard players set @a[scores={of_fear_threshold_5=90001..}] of_fear_threshold_5 90000

    # t4 multiplication
    execute as @a run scoreboard players operation @s of_fear_threshold_4 *= @s 10
    execute as @a run scoreboard players operation @s of_fear_threshold_4 *= @s 10
    execute as @a run scoreboard players operation @s of_fear_threshold_4 *= @s 5
    scoreboard players set @a[scores={of_fear_threshold_5=92001..}] of_fear_threshold_5 92000

    # t5 multiplication
    execute as @a run scoreboard players operation @s of_fear_threshold_5 *= @s 10
    execute as @a run scoreboard players operation @s of_fear_threshold_5 *= @s 10
    execute as @a run scoreboard players operation @s of_fear_threshold_5 *= @s 3
    execute as @a run scoreboard players operation @s of_fear_threshold_5 *= @s 3
    scoreboard players set @a[scores={of_fear_threshold_5=99001..}] of_fear_threshold_5 99000

# initial score set
execute as @a[scores={of_fear=1..}] run scoreboard players operation @s generic_b = @s of_bravery
execute as @a[scores={of_fear=1..}] run scoreboard players operation @s generic_c = @s of_bravery_max
    execute as @a[scores={of_fear=1..}] run scoreboard players operation @s generic_c /= @s 2
execute as @a[scores={of_fear=1..}] run scoreboard players operation @s generic_b -= @s generic_c
execute as @a[scores={of_fear=1..}] run scoreboard players operation @s generic_b *= @s Focus
    execute as @a[scores={of_fear=1..}] run scoreboard players operation @s generic_b /= @s 10
        execute as @a[scores={of_fear=1..}] run scoreboard players operation @s generic_b /= @s 10
            execute as @a[scores={of_fear=1..}] run scoreboard players operation @s generic_b /= @s 10

# health/food/damage
execute as @a[scores={of_fear_eligible=1,of_bravery=0}] run scoreboard players operation @s of_fear += @s BaseMaxHealth
execute as @a[scores={of_fear_eligible=1,of_bravery=0}] run scoreboard players remove @s of_fear 1
execute as @a[scores={of_fear_eligible=1,of_bravery=0}] run scoreboard players operation @s of_fear -= @s TotalHealth

execute as @a[scores={of_fear_eligible=1,of_bravery=0}] run scoreboard players add @s of_fear 19
execute as @a[scores={of_fear_eligible=1,of_bravery=0}] run scoreboard players operation @s of_fear -= @s Food

execute as @a[scores={of_fear_eligible=1,DamageTaken=1..}] if score @s of_fear > @s of_fear_threshold_1 run scoreboard players operation @s generic_a = @s DamageTaken
    execute as @a[scores={of_fear_eligible=1,DamageTaken=1..}] if score @s of_fear > @s of_fear_threshold_1 run scoreboard players operation @s generic_a *= @s 10
    execute as @a[scores={of_fear_eligible=1,DamageTaken=1..}] if score @s of_fear > @s of_fear_threshold_1 run scoreboard players operation @s generic_a *= @s 3
execute as @a[scores={of_fear_eligible=1,DamageTaken=1..}] if score @s of_fear > @s of_fear_threshold_1 run scoreboard players operation @s of_fear += @s generic_a

# low light/at night
scoreboard players add @a[scores={of_fear_eligible=1,generic_b=..0},predicate=oakfall:low_light] of_fear 1
scoreboard players remove @a[scores={of_fear_eligible=1,generic_b=..0},predicate=oakfall:low_light,predicate=oakfall:holding_lit_object] of_fear 1
scoreboard players add @a[scores={of_fear_eligible=1,generic_b=..0,DayTime=13000..23000}] of_fear 1

# alone
execute as @a[scores={of_fear_eligible=1,generic_b=..0}] at @s unless entity @a[distance=0.1..15] run scoreboard players add @s of_fear 1

# campfires
scoreboard players remove @a[scores={of_fear=50001..},tag=NearCampfire] of_fear 100
scoreboard players remove @a[scores={of_fear=50000..},tag=NearCampfire] of_fear 10
scoreboard players remove @a[scores={of_fear=10001..49999},tag=NearCampfire] of_fear 5
scoreboard players remove @a[scores={of_fear=5010..10000},tag=NearCampfire] of_fear 10
scoreboard players remove @a[scores={of_fear=5050..,DayTime=0..11999},tag=NearCampfire] of_fear 50

# just random chance for fear to increase no matter what
execute as @a[scores={of_fear_eligible=1,of_bravery=0..1000}] if predicate ss_lib:random_1_percent run scoreboard players add @s of_fear 1
execute as @a[scores={of_fear_eligible=1,of_bravery=0..1000,of_fear=20000..}] if predicate ss_lib:random_10_percent run scoreboard players add @s of_fear 1

# noises
execute as @a[scores={of_fear_eligible=1,of_bravery=..0}] at @s anchored eyes if predicate oakfall:random_noise if predicate ss_lib:random_1_percent run function oakfall:random_noise {"sound":"ambient.underwater.loop.additions.ultra_rare","fear":"3000"}
execute as @a[scores={of_fear_eligible=1,of_bravery=..0}] at @s anchored eyes if predicate oakfall:random_noise if predicate ss_lib:random_10_percent run function oakfall:random_noise {"sound":"ambient.soul_sand_valley.additions","fear":"500"}
execute as @a[scores={of_fear_eligible=1,of_bravery=..0}] if score @s of_fear >= @s of_fear_threshold_3 at @s anchored eyes if predicate oakfall:random_noise if predicate ss_lib:random_1_percent run function oakfall:random_noise {"sound":"ambient.underwater.loop.additions.ultra_rare","fear":"3000"}
execute as @a[scores={of_fear_eligible=1,of_bravery=..0}] if score @s of_fear >= @s of_fear_threshold_3 at @s anchored eyes if predicate oakfall:random_noise if predicate ss_lib:random_10_percent run function oakfall:random_noise {"sound":"ambient.soul_sand_valley.additions","fear":"500"}
execute as @a[scores={of_fear_eligible=1,of_bravery=..0}] if score @s of_fear >= @s of_fear_threshold_4 at @s anchored eyes if predicate oakfall:random_noise if predicate ss_lib:random_1_percent run function oakfall:random_noise {"sound":"ambient.underwater.loop.additions.ultra_rare","fear":"3000"}
execute as @a[scores={of_fear_eligible=1,of_bravery=..0}] if score @s of_fear >= @s of_fear_threshold_4 at @s anchored eyes if predicate oakfall:random_noise if predicate ss_lib:random_10_percent run function oakfall:random_noise {"sound":"ambient.soul_sand_valley.additions","fear":"500"}

# later score adj
execute as @a[scores={of_fear=5030..,generic_b=1..}] run scoreboard players operation @s of_fear -= @s generic_b

scoreboard players set @a[scores={of_fear=..-1}] of_fear 0
scoreboard players set @a[scores={of_fear=100000..}] of_fear 100000

# effects
    # threshold 1
    execute as @a[scores={of_fear_eligible=1,generic_b=..0}] if score @s of_fear >= @s of_fear_threshold_1 if score @s of_fear < @s of_fear_threshold_2 unless entity @s[scores={of_origin=1,of_job=1}] run scoreboard players set @s unnerved_active 1
    execute as @a[scores={of_fear_eligible=1,generic_b=..0}] if score @s of_fear >= @s of_fear_threshold_1 if score @s of_fear < @s of_fear_threshold_2 unless entity @s[scores={of_origin=1,of_job=1}] run function ss_statuses:unnerved {"multiplier":"0.1"}

    # threshold 2
    execute as @a[scores={of_fear_eligible=1,generic_b=..0}] if score @s of_fear >= @s of_fear_threshold_2 if score @s of_fear < @s of_fear_threshold_3 run function ss_statuses:frightened {"multiplier":"0.2"}
    execute as @a[scores={of_fear_eligible=1,generic_b=..0}] if score @s of_fear >= @s of_fear_threshold_2 if score @s of_fear < @s of_fear_threshold_3 run function ss_statuses:fragile {"multiplier":"0.2"}
    execute as @a[scores={of_fear_eligible=1,generic_b=..0}] if score @s of_fear >= @s of_fear_threshold_2 if score @s of_fear < @s of_fear_threshold_3 run function ss_statuses:bleeding {"damage":"0.25"}

    # threshold 3
    scoreboard players set @a[scores={of_fear_eligible=1,TimeSinceDeath=1..,TotalHealth=..5,generic_b=..0,of_fear=..44999}] of_fear 45000
    execute as @a[scores={of_fear_eligible=1,generic_b=..0}] if score @s of_fear >= @s of_fear_threshold_3 run scoreboard players set @s bleeding_active 1
    execute as @a[scores={of_fear_eligible=1,generic_b=..0}] if score @s of_fear >= @s of_fear_threshold_3 run function ss_statuses:terrified {"multiplier":"0.2"}
    execute as @a[scores={of_fear_eligible=1,generic_b=..0}] if score @s of_fear >= @s of_fear_threshold_3 run function ss_statuses:fragile {"multiplier":"0.4"}
    execute as @a[scores={of_fear_eligible=1,generic_b=..0}] if score @s of_fear >= @s of_fear_threshold_3 if score @s of_fear < @s of_fear_threshold_4 run function ss_statuses:bleeding {"damage":"0.5"}
    execute as @a[scores={of_fear_eligible=1,generic_b=..0}] if score @s of_fear >= @s of_fear_threshold_3 run attribute @s max_health modifier add of_fear_health -0.3 add_multiplied_base
        execute as @a[scores={of_fear_eligible=1,of_bravery=1001..}] run attribute @s max_health modifier remove of_fear_health
        execute as @a[scores={of_fear_eligible=1}] if score @s of_fear < @s of_fear_threshold_3 run attribute @s max_health modifier remove of_fear_health

    # threshold 4
    execute as @a[scores={of_fear_eligible=1,generic_b=..0}] if score @s of_fear >= @s of_fear_threshold_4 if predicate ss_lib:random_1_percent if predicate ss_lib:random_50_percent at @s as @e[distance=..30,type=#ss_lib:hostile,sort=nearest,limit=5] run function oakfall:monsters/mob_multiply
    execute as @a[scores={of_fear_eligible=1,generic_b=..0}] if score @s of_fear >= @s of_fear_threshold_4 if predicate ss_lib:random_1_percent if predicate ss_lib:random_50_percent run effect give @s blindness 1 0 true
    execute as @a[scores={of_fear_eligible=1,generic_b=..0}] if score @s of_fear >= @s of_fear_threshold_4 unless entity @s[scores={of_job=1}] if predicate ss_lib:random_1_percent if predicate ss_lib:random_50_percent run function ss_statuses:tormented
    execute as @a[scores={of_fear_eligible=1,generic_b=..0}] if score @s of_fear >= @s of_fear_threshold_4 unless entity @s[scores={of_job=1}] run effect give @s darkness 3 0 true

    # threshold 5
    execute as @a[scores={of_fear_eligible=1}] if score @s of_fear >= @s of_fear_threshold_5 run function ss_statuses:tormented
    execute as @a[scores={of_fear_eligible=1}] if score @s of_fear >= @s of_fear_threshold_5 run function ss_statuses:bleeding {"damage":"1"}

scoreboard players set @s of_fear_min 0

# display
execute as @a[scores={of_fear_eligible=1,of_fear=1001..,of_display_temp=0}] run function oakfall:fear_display