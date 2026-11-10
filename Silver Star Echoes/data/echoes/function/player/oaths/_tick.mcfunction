scoreboard players set @a sse.allegiance -1

# cerulean court
scoreboard players set @a[team=vestige] sse.allegiance 10
scoreboard players set @a[team=cerulean_court] sse.allegiance 10
scoreboard players set @a[team=cerulean_sentinel] sse.allegiance 10

    # court - all around buffs
    scoreboard players add @a[scores={sse.allegiance=1}] Strength 1
    scoreboard players add @a[scores={sse.allegiance=1}] Dexterity 1
    scoreboard players add @a[scores={sse.allegiance=1}] Resolve 1
    scoreboard players add @a[scores={sse.allegiance=1}] Vitality 1
    scoreboard players add @a[scores={sse.allegiance=1}] Mind 1
    scoreboard players add @a[scores={sse.allegiance=1}] Tact 1
    scoreboard players add @a[scores={sse.allegiance=1}] Soul 1

# haligsect
scoreboard players set @a[team=haligsundr] sse.allegiance 20
scoreboard players set @a[team=ritesmaiden] sse.allegiance 20
execute as @a[team=ritesmaiden] unless score @s character.gender matches 1 run team join haligsundr

    # haligsect - big mind buff, better health regen
    scoreboard players add @a[scores={sse.allegiance=2}] Mind 5
    execute as @a[scores={sse.allegiance=2}] if score @s aegis_amplifier >= @s aegis_amplifier_max run scoreboard players operation @s aegis_timer_max /= #const.2 value

# ichor imperya
scoreboard players set @a[team=imperyal] sse.allegiance 30
scoreboard players set @a[team=inquisitor] sse.allegiance 30
scoreboard players set @a[team=praetor] sse.allegiance 30

    # ichor imperya - resistance to ichor damage (in echoes player post function)

# angel hunters
scoreboard players set @a[team=red_gold] sse.allegiance 40
scoreboard players set @a[team=black_gold] sse.allegiance 40

# overgrowth
scoreboard players set @a[team=lonwood] sse.allegiance 50
scoreboard players set @a[team=arborknight] sse.allegiance 50
scoreboard players set @a[team=kestrel] sse.allegiance 50

    # overgrowth - better resolve and vitality
    scoreboard players add @a[scores={sse.allegiance=5}] Resolve 4
    scoreboard players add @a[scores={sse.allegiance=5}] Vitality 3

# arcanists
scoreboard players set @a[team=arcanist] sse.allegiance 60

    # arcanists - tact
    scoreboard players add @a[scores={sse.allegiance=6}] Tact 5

# rasaya
scoreboard players set @a[team=queenshriven] sse.allegiance 70
scoreboard players set @a[team=ardent] sse.allegiance 70

    # rasaya: extra aegis
    scoreboard players add @a[scores={sse.allegiance=7}] aegis_amplifier_max 1

# students
scoreboard players set @a[team=student_artist] sse.allegiance 80
scoreboard players set @a[team=student_entropy] sse.allegiance 80
scoreboard players set @a[team=student_stellography] sse.allegiance 80
scoreboard players set @a[team=student_vital] sse.allegiance 80
scoreboard players set @a[team=student_scribe] sse.allegiance 80

    # students
    scoreboard players add @a[scores={sse.allegiance=8}] Strength 1
    scoreboard players add @a[scores={sse.allegiance=8}] Dexterity 1
    scoreboard players add @a[scores={sse.allegiance=8}] Resolve 1
    scoreboard players add @a[scores={sse.allegiance=8}] Vitality 1
    scoreboard players add @a[scores={sse.allegiance=8}] Tact 1
    scoreboard players add @a[scores={sse.allegiance=8}] Mind 1
    scoreboard players add @a[scores={sse.allegiance=8}] Soul 1
    scoreboard players add @a[team=student_artist] Dexterity 1
    scoreboard players add @a[team=student_artist] Soul 1
    scoreboard players add @a[team=student_entropy] Strength 1
    scoreboard players add @a[team=student_entropy] Mind 1
    scoreboard players add @a[team=student_vital] Vitality 1
    scoreboard players add @a[team=student_vital] Resolve 1
    scoreboard players add @a[team=student_scribe] xp_cap 10
    scoreboard players add @a[team=student_stellography] Soul 1
    scoreboard players add @a[team=student_stellography] Mind 1

# entertainers
scoreboard players set @a[team=entertainer] sse.allegiance 90

# cindersworn
scoreboard players set @a[team=firekeeper] sse.allegiance 100
scoreboard players set @a[team=kindled_knight] sse.allegiance 100

# elkwyn
scoreboard players set @a[team=elkwyn] sse.allegiance 100

# ashengard
scoreboard players set @a[team=ashengard] sse.allegiance 110
scoreboard players set @a[team=revenant] sse.allegiance 110

# orderkeepers
scoreboard players set @a[team=orderkeeper] sse.allegiance 120

# draese
scoreboard players set @a[team=draesir_ferina] sse.allegiance 30
scoreboard players set @a[team=draesir_ordonna] sse.allegiance 130

# proscripts
scoreboard players set @a[team=proscript] sse.allegiance 150

# havoc
scoreboard players set @a[team=havoc_allegiant] sse.allegiance 160

# nightbrands
scoreboard players set @a[team=nightbrand] sse.allegiance 170

# other
scoreboard players set @a[team=draesir_phaera] sse.allegiance -1
scoreboard players set @a[team=silverseeker] sse.allegiance -1
scoreboard players set @a[team=nightjar] sse.allegiance -1
scoreboard players set @a[team=heron] sse.allegiance -1