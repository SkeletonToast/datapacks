# scoreboard players set Meat_Gum Characters 4
# scoreboard players set KidInTheCorner Characters 4
# scoreboard players set CrackerPacket7 Characters 1
# scoreboard players set IdkWoozy Characters 1
# scoreboard players set SkeletonToast Characters 6
# scoreboard players set lilywulf Characters 1
# scoreboard players set LilPumpkin9079 Characters 6
# scoreboard players set OfAllTrades0590 Characters 3

execute as @a[scores={SoftRestOrRespawn=1}] run function crowskeep:charactertagassign

execute as @a[name="Meat_Gum",scores={ChrResetTimer=0}] run function crowskeep:charactertagassign {"chr1":"Zelus","chr2":"Corvid","chr3":"Opal","chr4":"Zehari","chr5":"NULL","chr6":"NULL","chr7":"NULL"}
execute as @a[name="KidInTheCorner",scores={ChrResetTimer=0}] run function crowskeep:charactertagassign {"chr1":"Orion","chr2":"Vito","chr3":"Akira","chr4":"Reaper","chr5":"NULL","chr6":"NULL","chr7":"NULL"}
execute as @a[name="CrackerPacket7",scores={ChrResetTimer=0}] run function crowskeep:charactertagassign {"chr1":"Ronin","chr2":"NULL","chr3":"NULL","chr4":"NULL","chr5":"NULL","chr6":"NULL","chr7":"NULL"}
execute as @a[name="IdkWoozy",scores={ChrResetTimer=0}] run function crowskeep:charactertagassign {"chr1":"Woozy","chr2":"NULL","chr3":"NULL","chr4":"NULL","chr5":"NULL","chr6":"NULL","chr7":"NULL"}
execute as @a[name="SkeletonToast",scores={ChrResetTimer=0}] run function crowskeep:charactertagassign {"chr1":"Evangeline","chr2":"Lete","chr3":"Laika","chr4":"Harper","chr5":"Elise","chr6":"Tharja","chr7":"NULL"}
execute as @a[name="lilywulf",scores={ChrResetTimer=0}] run function crowskeep:charactertagassign {"chr1":"Taswell","chr2":"NULL","chr3":"NULL","chr4":"NULL","chr5":"NULL","chr6":"NULL","chr7":"NULL"}
execute as @a[name="LilPumpkin9079",scores={ChrResetTimer=0}] run function crowskeep:charactertagassign {"chr1":"Pumpkin","chr2":"Generic_Homarach","chr3":"Generic_Sepherosh","chr4":"Generic_Paladin","chr5":"Generic_Forma","chr6":"Generic_Passidian","chr7":"NULL"}
execute as @a[name="OfAllTrades0590",scores={ChrResetTimer=0}] run function crowskeep:charactertagassign {"chr1":"Xander","chr2":"Generic_Sepherosh","chr3":"Generic_Piconid","chr4":"Generic_Haligsundr","chr5":"NULL","chr6":"NULL","chr7":"NULL"}

execute as @a[tag=chr_Zelus] run function crowskeep:chr_zelus
execute as @a[tag=chr_Orion] run function crowskeep:chr_orion
execute as @a[tag=chr_Ronin] run function crowskeep:chr_ronin
execute as @a[tag=chr_Woozy] run function crowskeep:chr_woozy
execute as @a[tag=chr_Evangeline] run function crowskeep:chr_evangeline
execute as @a[tag=chr_Taswell] run function crowskeep:chr_taswell
execute as @a[tag=chr_Pumpkin] run function crowskeep:chr_pumpkin
execute as @a[tag=chr_Xander] run function crowskeep:chr_xander

execute as @a[tag=chr_Lete] run function crowskeep:chr_lete
execute as @a[tag=chr_Laika] run function crowskeep:chr_laika
execute as @a[tag=chr_Harper] run function crowskeep:chr_harper
execute as @a[tag=chr_Eulalia] run function crowskeep:chr_eulalia
execute as @a[tag=chr_Elise] run function crowskeep:chr_elise
execute as @a[tag=chr_Tharja] run function crowskeep:chr_tharja

execute as @a[tag=chr_Vito] run function crowskeep:chr_vito
execute as @a[tag=chr_Akira] run function crowskeep:chr_akira

execute as @a[tag=chr_Corvid] run function crowskeep:chr_corvid
execute as @a[tag=chr_Opal] run function crowskeep:chr_opal
execute as @a[tag=chr_Zehari] run function crowskeep:chr_zehari
execute as @a[tag=chr_Reaper] run function crowskeep:chr_reaper

execute as @a[tag=chr_Generic_Homarach] run scoreboard players set @s CharacterSpecies 7
execute as @a[tag=chr_Generic_Passidian] run scoreboard players set @s CharacterSpecies 11
execute as @a[tag=chr_Generic_Paladin] run scoreboard players set @s CharacterSpecies 3
execute as @a[tag=chr_Generic_Forma] run scoreboard players set @s CharacterSpecies 2
execute as @a[tag=chr_Generic_Necrophant] run scoreboard players set @s CharacterSpecies 14
execute as @a[tag=chr_Generic_Sepherosh] run scoreboard players set @s CharacterSpecies 25
execute as @a[tag=chr_Generic_Piconid] run scoreboard players set @s CharacterSpecies 15
execute as @a[tag=chr_Generic_Changeling] run scoreboard players set @s CharacterSpecies 17
execute as @a[tag=chr_Generic_Haligsundr] run scoreboard players set @s CharacterSpecies 26

scoreboard players add @a[scores={DamageTaken=1..,Chamber_Cooldown=..1200}] Chamber_Cooldown 100
scoreboard players add @a[scores={DamageDealt=1..,Chamber_Cooldown=..1200}] Chamber_Cooldown 100

# sepherosh base flight level
scoreboard players set @a[scores={species025-05=..9}] species025-05 10

execute as @a[tag=chr_NULL] run function crowskeep:charactertagreset
tag @a[tag=chr_NULL] remove chr_NULL

execute as @a[scores={ChrResetTimer=0}] run scoreboard players operation @s species = @s CharacterSpecies