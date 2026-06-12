function echoes:player/feat_assignment {"stat":"Strength"}
function echoes:player/feat_assignment {"stat":"Dexterity"}
function echoes:player/feat_assignment {"stat":"Vitality"}
function echoes:player/feat_assignment {"stat":"Mind"}
function echoes:player/feat_assignment {"stat":"Tact"}
function echoes:player/feat_assignment {"stat":"Soul"}

# strength
    # level 15: 

    # level 30: two handing: strength proficiency is increaased by 33% if no item is in offhand
        # in proficiency file

    # level 50: encumbrance is halved
        # in encumbrance file

# dexterity
    # level 15: mobility ???: enables advanced movement techniques maybe???

    # level 30: supreme agility: dex proficiency also increases attack speed, and player can step up full blocks
        # in proficiency / attribute apply file
        
    # level 50: surge sprint: allows you to sprint much faster after continuously super sprinting for 5 seconds

# resolve
    # level 15: overheal: allows base health regeneration

    # level 30: 
        
    # level 50: 

# vitality
    # level 15: allows use of tenacity and fortitude
        # in pre function

    # level 30: 
        
    # level 50: tenacity is increased by 50%
        # in tenacity calculation

# mind
    # add some kind of potion effect scaling?
    
    # level 15: can use trinkets, can use mind proficiency, allows xp to be stored

    # level 30: memory: xp is not lost on death
        # STILL NEEDS IMPLEMENTATION
    # level 30: night vision: player gains night vision in low light
        # execute as @a[scores={Mind=30..},predicate=echoes:low_light] \
        # if items entity @s weapon.* #echoes:torches \
        #     run effect give @s night_vision 11 0 true

    # level 50: 

# tact
    # level 15: 

    # level 20: player gains resistance outside of combat if aegis is active
    function ss_lib:fetch/absorption {"s":"@a[scores={Tact=20..}]"}
    effect give @a[scores={Tact=20..29,Absorption=1..},tag=!InCombat] resistance 4 0 true
    effect give @a[scores={Tact=30..39,Absorption=1..},tag=!InCombat] resistance 3 1 true
    effect give @a[scores={Tact=40..49,Absorption=1..},tag=!InCombat] resistance 2 2 true
    effect give @a[scores={Tact=50..,Absorption=1..},tag=!InCombat] resistance 1 3 true

    # level 30: prowler: player gains 50% Tact as armor, and 20% of Tact as Armor Toughness, if unarmored.
    # player also becomes invisible if unarmored and crouching in dark area
    # crouching drastically decreases monster detection range
        # armor (toughness) application is in attribute apply file
        # STILL NEEDS STEALTH IMPLEMENTATION!! just steal the code from cedarfell hunters

    # level 30: tactical combat: player gains 50 tact proficiency if mounted or gliding
        # in proficiency file
    execute as @a[tag=Tact_feat_2,scores={SneakTime=1..},advancements={echoes:using_spyglass=false}] if items entity @s weapon.* spyglass run function ss_statuses:alert
    advancement revoke @a[tag=Tact_feat_2,advancements={echoes:using_spyglass=true}] only echoes:using_spyglass

    # level 50: adaptability: Player gains [Tact] Tact Proficiency, caps at 70
        # in proficiency file

# soul
    # level 15: 
    
    # level 30: 

    # level 50: player gains fire resistance, conduit power, and saturation (at ≤19 Food) if aegis is active
    function ss_lib:fetch/absorption {"s":"@a[tag=Soul_feat_3,tag=!InCombat]"}
    effect give @a[tag=Soul_feat_3,scores={Absorption=1..},tag=!InCombat] fire_resistance 1 0 true
    effect give @a[tag=Soul_feat_3,scores={Absorption=1..},tag=!InCombat] conduit_power 1 0 true
    effect give @a[tag=Soul_feat_3,scores={Absorption=1..,Food=..18},tag=!InCombat] saturation 1 0 true