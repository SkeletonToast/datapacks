execute anchored eyes positioned ^ ^ ^0.5 run particle scrape ~ ~ ~ 0 0 0 0 1 normal @a
execute anchored eyes positioned ^ ^ ^0.5 run schedule function ss_particles:nuketrail 1t
execute anchored eyes positioned ^ ^ ^0.5 unless block ~ ~ ~ #ss_lib:nonsolidblocks run function ss_particles:nuke
# execute unless block ^ ^ ^0.5 #ss_lib:nonsolidblocks run schedule clear ss_particles:nuketrail