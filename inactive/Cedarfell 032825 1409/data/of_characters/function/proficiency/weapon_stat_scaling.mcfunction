scoreboard players operation @s WeaponStrength += @s Body
    execute if score @s Body >= @s Dexterity run scoreboard players add @s WeaponStrength 1
scoreboard players operation @s WeaponStrength *= @s 10
scoreboard players operation @s WeaponStrength *= @s 2

scoreboard players operation @s WeaponDexterity += @s Dexterity
    execute if score @s Dexterity > @s Body run scoreboard players add @s WeaponDexterity 1
scoreboard players operation @s WeaponDexterity *= @s 10
scoreboard players operation @s WeaponDexterity *= @s 2

# 1: swords: 50/50 body/dex
scoreboard players operation @s[scores={WeaponType=1}] WeaponStrength /= @s 2
scoreboard players operation @s[scores={WeaponType=1}] WeaponDexterity /= @s 2

# 2: axes: 80/20 body/dex
scoreboard players operation @s[scores={WeaponType=2}] WeaponStrength /= @s 5
    scoreboard players operation @s[scores={WeaponType=2}] WeaponStrength *= @s 2
    scoreboard players operation @s[scores={WeaponType=2}] WeaponStrength *= @s 2
scoreboard players operation @s[scores={WeaponType=2}] WeaponDexterity /= @s 5

# 3: spears: 40/60 body/dex
scoreboard players operation @s[scores={WeaponType=3}] WeaponStrength /= @s 5
    scoreboard players operation @s[scores={WeaponType=3}] WeaponStrength *= @s 2
scoreboard players operation @s[scores={WeaponType=3}] WeaponDexterity /= @s 5
    scoreboard players operation @s[scores={WeaponType=3}] WeaponDexterity *= @s 3

# 4: scythes: 20/80 body/dex
scoreboard players operation @s[scores={WeaponType=4}] WeaponStrength /= @s 5
scoreboard players operation @s[scores={WeaponType=4}] WeaponDexterity /= @s 5
    scoreboard players operation @s[scores={WeaponType=4}] WeaponDexterity *= @s 2
    scoreboard players operation @s[scores={WeaponType=4}] WeaponDexterity *= @s 2

# 5: picks: 60/40 body/dex
scoreboard players operation @s[scores={WeaponType=5}] WeaponStrength /= @s 5
    scoreboard players operation @s[scores={WeaponType=5}] WeaponStrength *= @s 3
scoreboard players operation @s[scores={WeaponType=5}] WeaponDexterity /= @s 5
    scoreboard players operation @s[scores={WeaponType=5}] WeaponDexterity *= @s 2

# 6: whips: 0/100 body/dex
scoreboard players set @s[scores={WeaponType=6}] WeaponStrength 0

    # tellraw @s ["Pre-Division: ",{"score":{"name":"*","objective":"WeaponStrength"},"color":"red"},"/",{"score":{"name":"*","objective":"WeaponDexterity"},"color":"green"}]

    # weapon weight
        # scoreboard players operation @s[scores={WeaponWeight=1}] WeaponDexterity += @s Dexterity
            # scoreboard players operation @s[scores={WeaponWeight=..2}] WeaponDexterity += @s Dexterity
        # scoreboard players operation @s[scores={WeaponWeight=3..}] WeaponStrength += @s Body
        #     scoreboard players operation @s[scores={WeaponWeight=4..}] WeaponStrength += @s Body

# secret scaling
execute if items entity @s weapon.mainhand #of_characters:golden_gear run scoreboard players operation @s weapon_proficiency += @s Soul

# rounding up, if necessary
scoreboard players operation @s generic_a = @s WeaponStrength
    scoreboard players operation @s generic_a %= @s 10
scoreboard players operation @s WeaponStrength /= @s 10
    execute if score @s Body > @s Dexterity run scoreboard players add @s[scores={generic_a=1..9}] WeaponStrength 1
    scoreboard players add @s[scores={generic_a=8..9}] WeaponStrength 1

scoreboard players operation @s generic_a = @s WeaponDexterity
    scoreboard players operation @s generic_a %= @s 10
scoreboard players operation @s WeaponDexterity /= @s 10
    execute if score @s Dexterity > @s Body run scoreboard players add @s[scores={generic_a=1..9}] WeaponDexterity 1
    scoreboard players add @s[scores={generic_a=8..9}] WeaponDexterity 1

    # tellraw @s ["Post-Division: ",{"score":{"name":"*","objective":"WeaponStrength"},"color":"red"},"/",{"score":{"name":"*","objective":"WeaponDexterity"},"color":"green"}]

# (WIP) insufficient requirements - unable to wield weapon
    # put anything here that'll prevent a player from using a weapon if they don't meet the required stat threshold

scoreboard players operation @s weapon_proficiency += @s WeaponStrength
scoreboard players operation @s weapon_proficiency += @s WeaponDexterity

    # tellraw @s ["Proficiency: ",{"score":{"name":"*","objective":"weapon_proficiency"},"color":"gold"}]
    # tellraw @s [""]