clear @s echo_shard[custom_data={quick_destroy:true,Tags:["species017"]}] 1
scoreboard players remove @s species017-01 1

execute as @s[scores={species017-01=2..}] run function ss_species:s_017f_cleartransformshard