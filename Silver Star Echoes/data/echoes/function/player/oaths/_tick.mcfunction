# cerulean court
scoreboard players set @a[team=vestige] sse.oath 0
scoreboard players set @a[team=cerulean_court] sse.oath 0
scoreboard players set @a[team=cerulean_sentinel] sse.oath 0

    # court - all around buffs
    scoreboard players add @a[scores={sse.oath=0}] Strength 1
    scoreboard players add @a[scores={sse.oath=0}] Dexterity 1
    scoreboard players add @a[scores={sse.oath=0}] Resolve 1
    scoreboard players add @a[scores={sse.oath=0}] Vitality 1
    scoreboard players add @a[scores={sse.oath=0}] Mind 1
    scoreboard players add @a[scores={sse.oath=0}] Tact 1
    scoreboard players add @a[scores={sse.oath=0}] Soul 1

# haligsect
scoreboard players set @a[team=haligsundr] sse.oath 1
scoreboard players set @a[team=ritesmaiden] sse.oath 1
execute as @a[team=ritesmaiden] unless score @s character.gender matches 1 run team join haligsundr

    # haligsect - big mind buff, better health regen
    scoreboard players add @a[scores={sse.oath=1}] Mind 5
    execute as @a[scores={sse.oath=1}] if score @s aegis_amplifier >= @s aegis_amplifier_max run scoreboard players operation @s aegis_timer_max /= #const.2 value

# ichor imperya
scoreboard players set @a[team=imperyal] sse.oath 2
scoreboard players set @a[team=inquisitor] sse.oath 2
scoreboard players set @a[team=praetor] sse.oath 2

    # ichor imperya - resistance to ichor damage (in echoes player post function)

# angel hunters
scoreboard players set @a[team=red_gold] sse.oath 3
scoreboard players set @a[team=black_gold] sse.oath 4

# overgrowth
scoreboard players set @a[team=lonwood] sse.oath 5
scoreboard players set @a[team=arborknight] sse.oath 5
scoreboard players set @a[team=kestrel] sse.oath 5

    # overgrowth - better resolve and vitality
    scoreboard players add @a[scores={sse.oath=5}] Resolve 4
    scoreboard players add @a[scores={sse.oath=5}] Vitality 3

# arcanists
scoreboard players set @a[team=arcanist] sse.oath 6

    # arcanists - tact
    scoreboard players add @a[scores={sse.oath=6}] Tact 5

# rasaya
scoreboard players set @a[team=queenshriven] sse.oath 7
scoreboard players set @a[team=ardent] sse.oath 7

    # rasaya: extra aegis
    scoreboard players add @a[scores={sse.oath=7}] aegis_amplifier_max 1

# students
scoreboard players set @a[team=student_artist] sse.oath 8
scoreboard players set @a[team=student_entropy] sse.oath 8
scoreboard players set @a[team=student_stellography] sse.oath 8
scoreboard players set @a[team=student_vital] sse.oath 8
scoreboard players set @a[team=student_scribe] sse.oath 8

    # students
    scoreboard players add @a[scores={sse.oath=8}] Strength 1
    scoreboard players add @a[scores={sse.oath=8}] Dexterity 1
    scoreboard players add @a[scores={sse.oath=8}] Resolve 1
    scoreboard players add @a[scores={sse.oath=8}] Vitality 1
    scoreboard players add @a[scores={sse.oath=8}] Tact 1
    scoreboard players add @a[scores={sse.oath=8}] Mind 1
    scoreboard players add @a[scores={sse.oath=8}] Soul 1
    scoreboard players add @a[team=student_artist] Dexterity 1
    scoreboard players add @a[team=student_artist] Soul 1
    scoreboard players add @a[team=student_entropy] Strength 1
    scoreboard players add @a[team=student_entropy] Mind 1
    scoreboard players add @a[team=student_stellography] Soul 1
    scoreboard players add @a[team=student_stellography] Mind 1
    scoreboard players add @a[team=student_vital] Vitality 1
    scoreboard players add @a[team=student_vital] Resolve 1
    scoreboard players add @a[team=student_scribe] xp_cap 10

# ashengard
scoreboard players set @a[team=ashengard] sse.oath 9
scoreboard players set @a[team=revenant] sse.oath 9

# entertainers
scoreboard players set @a[team=entertainer] sse.oath 10

# orderkeepers
scoreboard players set @a[team=orderkeeper] sse.oath 11

# cindersworn
scoreboard players set @a[team=firekeeper] sse.oath 12
scoreboard players set @a[team=kindled_knight] sse.oath 12

# elkwyn
scoreboard players set @a[team=elkwyn] sse.oath 12

# draese
scoreboard players set @a[team=draesir_ferina] sse.oath 3
scoreboard players set @a[team=draesir_ordonna] sse.oath 13
scoreboard players set @a[team=draesir_phaera] sse.oath 14

# proscripts
scoreboard players set @a[team=proscript] sse.oath 15

# havoc
scoreboard players set @a[team=havoc_allegiant] sse.oath 16

# nightbrands
scoreboard players set @a[team=nightbrand] sse.oath 17

# other
scoreboard players set @a[team=silverseeker] sse.oath 18
scoreboard players set @a[team=nightjar] sse.oath 19
scoreboard players set @a[team=heron] sse.oath 20