# scoreboard players set @a[scores={ability027-02=0..,ability027-03=7,ability027-04=1..}] ability027-02 1

effect give @a[scores={ability027=1..,ability027-03=6,ability027-04=1..}] levitation 1 75 true

execute as @a[scores={ability027=1..,ability027-03=6,ability027-04=1..}] at @s run playsound ui.toast.in master @a ~ ~ ~ 2

execute as @a[scores={ability027=1..,ability027-03=6,ability027-04=1..}] at @s run particle explosion ~ ~ ~

effect clear @a[scores={ability027=1..,ability027-03=7,ability027-04=1..}] levitation

# scoreboard players set @a[scores={ability027-04=1..,OnGround=1}] ability027-02 -1

# scoreboard players add @a[scores={ability027-02=1..}] ability027-02 1

# execute as @a[scores={OnGround=1}] unless entity @s[scores={ability027-04=1..}] run scoreboard players set @s ability027-02 0

scoreboard players set @a[scores={ability027-03=7..,ability027-04=1..}] ability001 1

scoreboard players set @a[scores={OnGround=1}] ability027-04 0

scoreboard players add @a[scores={ability027-01=1..,OnGround=0}] ability027-03 1

# scoreboard players add @a[scores={OnGround=0}] ability027-03 1

scoreboard players set @a[scores={OnGround=1}] ability027-03 0

scoreboard players set @a[scores={OnGround=1}] ability027-01 0