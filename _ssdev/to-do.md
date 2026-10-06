## Talisman
- Maybe rework talisman so that it also takes inputs for a source, and make it more compatible with any other datapack?
- this could let you add some basic talismans for homesteader maybe

## Homesteader
- add different day titlecard styles. everything below is JUST ideas
    - default: "monarch", echoes-style
    - "modernist" - sleek and whatnot
    - maybe just like "DAWN 3" and "DUSK 7" or whatever
        - "arena" potentially - shows like player kill counts, deaths, stuff like that
        - maybe scary style, it says like "you have survived X days" or whatever
    - "citrus" - cutie, slice-of-life style
    - "majora" - majora's mask style
    - "hardwire" - cyberpunk?
    - "local" - weather channel style, little forecast for the day maybe
    - "overgrowth" - very planty and worn-down
    - "meadow" - flowery but cutesy instead
    - "wayfarer" - depends on player's biome location!!! could be super fun!

## Echoes
- make sure combination stats actually calculate as intended, i changed around the multipliers
- rename items
    - rename cocoa beans to something else
    - rename nether star to Fleeting Echo
        - imitations of a real Vestige soul
    - rename mending to frail mending or something
    - rename fire protection to cindershield
- make some sort of mechanic or item that makes you immune to void damage
- make sure luck chance function actually works
- finish oath effects
- finish the creaking changes you were working on once upon a time
- FINISH NEW ELIXIR EFFECTS
- having zero vitality also gives you full inventory regen
- have some sort of settings menu where you can more easily trigger things without having to know the variable names
    - also add in a way to change your aegis theme thru there
- why doesn't aegis self visibility work when it's disabled?
    - it's offset to display the particles themselves, so you have to find a way to go around that
        - using the circle
    - maybe execute as everyone, and then terminate if their SSID matches your SSID
- also tact camera distance doesn't work | FIXED im pretty sure
- add new movement mechanics?

## Library
- add non-bool gamerule system
- TEST NEW GAMERULE SYSTEM BEFORE YOU RELEASE IT!!!
- add contingency for making sure ssl doesn't run twice in one tick / doesnt reload twice
    - most subfunctions already have contingencies in place for this
    - this is really just so that it's easier to distribute datapacks like Homesteader without installing SSL as well
        - just remember that all datapacks have dependency functions now, so if you don't have SSL installed, it's really easy to figure out how to do it. it literally links you to the download page if you try to run any other pack without SSL
        - you can probably also just set it so that downloading a version downloads that version and its dependencies, and you just drop them both in datapacks
- make sure new fetch functions work (atk dmg, atk spd, armor)
- maybe make status functionality for boolean statuses?
    - that's very easy to do on your own though, so not super necessary to write a library for it.
    - if you only have one amplifier and duration, you can just directly compare scores. no need to do data storage
- REMAKE STATUSES IN ELIXIR
    - disoriented
    - enshrouded
    - feeble
    - fragile
    - frenzied
    - frightened
    - hesitant
    - hobbled
    - incendiary
    - invigorated
    - rooted / webbed
    - tormented
    - wet is not needed. status covers that still
- Circle calculation module
- Collisions obv
- more math functions that just use the built in storage math functions, but for scores
- use math functions to add a distance calculation module, which returns the distance between two points / entities
  - you can pretty easily do this just by using sqrt and finding hypotenuse between two sets of coordinates
    
    
# LIBRARY UPDATE

**Changes that require attention**
- changes to fetch functions
    - AttackSpeed and AttackDamage now require bypass_check as well
    - ArmorToughness is no longer calculated every tick, and is now part of the fetch/armor function
    - new fetch fire function
- GameTime updates now lmfao?? what was the point before
- DayTime changes
    - Used to be a score, DayTime, which was stored for each player. Now it's just #day_time value.
- slight update to actionbar system? maybe, or maybe it was just never mentioned on the modrinth page
- Fixed issue that allowed SSIDs to be re-assigned over entities that had already been assigned SSIDs, using the ssid:assign function

**New Features**
- gamerule system
- elixir nonplayer functions
    - the biggest holdup was efficiency before. testing for scores from every entity everywhere is resource intensive
    - now, you can just use tick_status_nonplayer if you want your status to also affect nonplayers.
        - statuses made before this update won't be broken at all, it just now has the ability to also affect nonplayers
        - it's pretty efficient too! the tag is only assigned when the entity is given the status, and only removed upon FINAL expiration
- moving over to constants instead of generic scores
- permissions levels
- dependencies template
- elixir readme but it was already on the modrinth page so it doesn't really matter
- circle module!
- parse can pass quoted macros!
    - turns out it could actually always do that! you just have to single quote them so they work fine

**Upcoming Features**
- soon, we will add an actionbar queueing system!!!
    - will probably use the same style as elixir storage, but less complicated
        - with this, you wouldn't need to sort actionbars, you'd only need to slap it on the end. pretty easy

## Armory
- update attack speed cap lmfao that thing is extremely outdated
    - it appears to predate even SPM
    - should be updated to use SPM! I didn't see any other major issues