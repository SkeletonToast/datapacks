# cerulean court
scoreboard players set @a[team=vestige] sse.oath 1
scoreboard players set @a[team=cerulean_court] sse.oath 1
scoreboard players set @a[team=cerulean_sentinel] sse.oath 1

# haligsect
scoreboard players set @a[team=haligsundr] sse.oath 2
scoreboard players set @a[team=ritesmaiden] sse.oath 2
execute as @a[team=ritesmaiden] unless score @s character.gender matches 1 run team join haligsundr

# ichor imperya
scoreboard players set @a[team=imperyal] sse.oath 3
scoreboard players set @a[team=inquisitor] sse.oath 3
scoreboard players set @a[team=praetor] sse.oath 3

# angel hunters
scoreboard players set @a[team=red_gold] sse.oath 4
scoreboard players set @a[team=black_gold] sse.oath 4

# overgrowth
scoreboard players set @a[team=lonwood] sse.oath 5
scoreboard players set @a[team=arborknight] sse.oath 5
scoreboard players set @a[team=kestrel] sse.oath 5

# arcanists
scoreboard players set @a[team=arcanist] sse.oath 6

# rasaya
scoreboard players set @a[team=queenshriven] sse.oath 7
scoreboard players set @a[team=ardent] sse.oath 7

# students
scoreboard players set @a[team=student_artist] sse.oath 8
scoreboard players set @a[team=student_entropy] sse.oath 8
scoreboard players set @a[team=student_artist] sse.oath 8
scoreboard players set @a[team=student_scribe] sse.oath 8

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
scoreboard players set @a[team=draesir_ferina] sse.oath 13
scoreboard players set @a[team=draesir_ordonna] sse.oath 14
scoreboard players set @a[team=draesir_phaera] sse.oath 15

# proscripts
scoreboard players set @a[team=proscript] sse.oath 16

# havoc
scoreboard players set @a[team=havoc_allegiant] sse.oath 17

# nightbrands
scoreboard players set @a[team=nightbrand] sse.oath 18

# other
scoreboard players set @a[team=silverseeker] sse.oath 19
scoreboard players set @a[team=nightjar] sse.oath 20
scoreboard players set @a[team=heron] sse.oath 21

# very basic oath effects
# court - all around buffs
scoreboard players add @a[scores={sse.oath=1}] Strength 1
scoreboard players add @a[scores={sse.oath=1}] Dexterity 1
scoreboard players add @a[scores={sse.oath=1}] Resolve 1
scoreboard players add @a[scores={sse.oath=1}] Vitality 1
scoreboard players add @a[scores={sse.oath=1}] Mind 1
scoreboard players add @a[scores={sse.oath=1}] Tact 1
scoreboard players add @a[scores={sse.oath=1}] Soul 1

# haligsect - big mind buff, better health regen
scoreboard players add @a[scores={sse.oath=2}] Mind 5
execute as @a[scores={sse.oath=2}] if score @s aegis_amplifier >= @s aegis_amplifier_max run scoreboard players operation @s aegis_timer_max /= @s 2

# angel hunters - idk

# overgrowth - better resolve and vitality
scoreboard players add @a[scores={sse.oath=5}] Resolve 4
scoreboard players add @a[scores={sse.oath=5}] Vitality 3

# arcanists - tact
scoreboard players add @a[scores={sse.oath=6}] Tact 5