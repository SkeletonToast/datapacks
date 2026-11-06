execute as @a unless entity @s[scores={species=1..}] unless entity @s[scores={species=..-1}] run scoreboard players set @s species 000
execute as @r[scores={species=000}] run function ss_species:s_000_traveler
execute as @r[scores={species=001}] run function ss_species:s_001_expirator
execute as @r[scores={species=002}] run function ss_species:s_002_forma
execute as @r[scores={species=003}] run function ss_species:s_003_paladin
execute as @r[scores={species=004}] run function ss_species:s_004_shadowbringer
execute as @r[scores={species=005}] run function ss_species:s_005_filoure
execute as @r[scores={species=006}] run function ss_species:s_006_feldspar
execute as @r[scores={species=007}] run function ss_species:s_007_homarach
execute as @r[scores={species=008}] run function ss_species:s_008_kamensh
execute as @r[scores={species=009}] run function ss_species:s_009_myconid
execute as @r[scores={species=010}] run function ss_species:s_010_fawn
execute as @r[scores={species=011}] run function ss_species:s_011_passidian
execute as @r[scores={species=012}] run function ss_species:s_012_draconian
execute as @r[scores={Ghost=0..}] run function ss_species:s_013_ghost
execute as @r[scores={species=014}] run function ss_species:s_014_necrophant
execute as @r[scores={species=015}] run function ss_species:s_015_piconid
execute as @r[scores={species=016}] run function ss_species:s_016_bigguy
execute as @r[scores={species=018}] run function ss_species:s_018_arcanesoldier
execute as @r[scores={species=019}] run function ss_species:s_019_noctian
execute as @r[scores={species=020}] run function ss_species:s_020_voyager
execute as @r[scores={species=021}] run function ss_species:s_021_ajnheil
execute as @r[scores={species=022}] run function ss_species:s_022_incarnate
# execute as @r[scores={species=023}] run function ss_species:s_023_arcanesorcerer
# execute as @r[scores={species=024}] run function ss_species:s_024_glacian
execute as @r[scores={species=025}] run function ss_species:s_025_sepherosh
execute as @r[scores={species=026}] run function ss_species:s_026_haligsundr
execute as @r[scores={species=027}] run function ss_species:s_027_biomech
execute as @r[scores={species=028}] run function ss_species:s_028_recusant

execute as @r[scores={species017-00=1..}] run function ss_species:s_017_changeling