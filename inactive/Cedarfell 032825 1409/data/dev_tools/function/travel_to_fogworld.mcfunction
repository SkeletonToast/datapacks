$execute as @r[nbt={UUID:$(UUID)}] in oakfall:oakfall positioned ~ ~ ~ unless block ~ ~ ~ #ss_lib:nonsolidblocks positioned over motion_blocking run tp @s ~ ~ ~
$execute as @r[nbt={UUID:$(UUID)}] in oakfall:oakfall positioned ~ ~ ~ if block ~ ~ ~ #ss_lib:nonsolidblocks run tp @s ~ ~ ~
$scoreboard players set @r[nbt={UUID:$(UUID)}] of_overworld_eligible 0