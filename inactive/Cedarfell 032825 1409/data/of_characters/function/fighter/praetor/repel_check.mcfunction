scoreboard players remove @s praetor_combo 100
$execute as @s[tag=!RepelCheckSuccess] as @e[type=!#ss_lib:not_alive,dx=00.3,dy=00.3,dz=00.3] unless entity @s[nbt={UUID:$(UUID)}] as @p[nbt={UUID:$(UUID)}] run function of_characters:fighter/praetor/repel
$execute as @s[tag=!RepelCheckSuccess] as @e[type=!#ss_lib:not_alive,dx=-0.3,dy=00.3,dz=00.3] unless entity @s[nbt={UUID:$(UUID)}] as @p[nbt={UUID:$(UUID)}] run function of_characters:fighter/praetor/repel
$execute as @s[tag=!RepelCheckSuccess] as @e[type=!#ss_lib:not_alive,dx=-0.3,dy=00.3,dz=-0.3] unless entity @s[nbt={UUID:$(UUID)}] as @p[nbt={UUID:$(UUID)}] run function of_characters:fighter/praetor/repel
$execute as @s[tag=!RepelCheckSuccess] as @e[type=!#ss_lib:not_alive,dx=00.3,dy=00.3,dz=-0.3] unless entity @s[nbt={UUID:$(UUID)}] as @p[nbt={UUID:$(UUID)}] run function of_characters:fighter/praetor/repel
$execute as @s[tag=!RepelCheckSuccess] as @e[type=!#ss_lib:not_alive,dx=00.3,dy=-0.3,dz=00.3] unless entity @s[nbt={UUID:$(UUID)}] as @p[nbt={UUID:$(UUID)}] run function of_characters:fighter/praetor/repel
$execute as @s[tag=!RepelCheckSuccess] as @e[type=!#ss_lib:not_alive,dx=-0.3,dy=-0.3,dz=00.3] unless entity @s[nbt={UUID:$(UUID)}] as @p[nbt={UUID:$(UUID)}] run function of_characters:fighter/praetor/repel
$execute as @s[tag=!RepelCheckSuccess] as @e[type=!#ss_lib:not_alive,dx=-0.3,dy=-0.3,dz=-0.3] unless entity @s[nbt={UUID:$(UUID)}] as @p[nbt={UUID:$(UUID)}] run function of_characters:fighter/praetor/repel
$execute as @s[tag=!RepelCheckSuccess] as @e[type=!#ss_lib:not_alive,dx=00.3,dy=-0.3,dz=-0.3] unless entity @s[nbt={UUID:$(UUID)}] as @p[nbt={UUID:$(UUID)}] run function of_characters:fighter/praetor/repel

tag @s remove RepelCheckSuccess