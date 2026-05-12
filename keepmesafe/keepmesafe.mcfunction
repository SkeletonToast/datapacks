clear @a
$scoreboard objectives add $(value) dummy
$execute as @e[sort=random,limit=100] store result score @s $(value) run random roll -214748364..214748364
$data modify storage $(value) $(value) set value $(value)
execute as @a run item replace entity @s enderchest.0 with air
execute as @a run function run:run {"f":"item replace entity @s enderchest.$(r) with air","r":29}
function run:run {"f":"execute as @e at @s facing entity @e[sort=random,limit=1] feet positioned ^ ^ ^100 run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air destroy","r":10}
function run:run {"f":"execute as @e at @s facing entity @e[sort=random,limit=1] feet positioned ^ ^ ^200 run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air destroy","r":10}
function run:run {"f":"execute as @e at @s facing entity @e[sort=random,limit=1] feet positioned ^ ^ ^300 run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air destroy","r":10}
function run:run {"f":"execute as @a at @s in ss_lib:8qbahr6P2unkYmu2BK6mdSVFMprLumnRwt8tUTNkfwE7nrRKWxcfcZpfKpyfshYGp7YUaXwe6ejRwFc3rHPE2h22bNhAfuzwuRZ27acffGTHNy9haMEb92L3xpQFCAfL64hBVuGjz4G98e65mE4GCZ3rvVDpBcpW run tp @s ~ ~ ~","r":1}