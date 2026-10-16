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
- why aren't lanterns working correctly? they don't seem to raycast
    - actually lol its just probably because the campfire file is referencing a nonexistent dimension
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
- RADIATION!!!
- having zero vitality also gives you full inventory regen
    - usually you'd have to get 50 vitality to do this
    - but this is fine because it means you have to have advanced enough to get a Reaver
- maybe reavers require a certain level in their respective combination stat before you're able to use them?
- have some sort of settings menu where you can more easily trigger things without having to know the variable names
    - also add in a way to change your aegis theme thru there
- why doesn't aegis self visibility work when it's disabled?
    - it's offset to display the particles themselves, so you have to find a way to go around that
        - using the circle
    - maybe execute as everyone, and then terminate if their SSID matches your SSID
- also tact camera distance doesn't work | FIXED im pretty sure
- add new movement mechanics?
- add "hunger" score that's used for like sprinting and encumbrance, calculate it with vitality methinks
- CHECK ON BIOME PREDICATES REFERENCES!!!
    - at LEAST temperature is affected, probably more.
    - if you have to get rid of the terralith biomes, maybe just have an auxiliary datapack that has a bunch of updated function definitions including other worldgen biomes. you can set them to replace:true so that they override the default echoes tags
- add some way to store xp, maybe in knowledge books? even though you can store xp between characters, you do still lose that extra xp when you die
- exhaustion?
    - when night falls, you start accruing stored exhaustion if you're not in bed. this stored exhaustion continues increasing throughout nights, and is only applied when you wake up (or if you just reach a certain amount, where you pass out.)
        - this just means that, the later you go to bed, the more exhausted you become in the morning.
        - sleeping will still decrease exhaustion, but 
    - exhaustion can't make you pass out in combat, but you'll pass out basically instantly afterward

exhaustion
- sources:
    - not sleeping for a while
    - spending time at low food
    - spending time at low health / taking damage
    - spending time in extreme temperatures
    - sprinting or swimming for long periods
- remedies:
    - sleeping
    - (temporary) being at full food
    - (temporary) being at full health
    - being in a sanctuary location
- think of exhaustion as actually pretty similar to Fear in SS6. it doesn't outright discourage exploration, but it does punish carelessness while exploring.
    - if you find that exhaustion punishes exploration too heavily, and might actually discourage players from exploring, scrap it altogether.

funsies
- cook up some starting loadouts (see new armor section on doc)

## Armory
- rename to "arsenal" that sounds way cooler
- update attack speed cap lmfao that thing is extremely outdated
    - should be updated to use SPM! I didn't see any other major issues, but still needs testing
- come up with more efficient properties system
    - actually the nbt format is basically as efficient as i could hope for
        - maybe the only change would be just get rid of the properties sub-heading?
            - before: `weapon:{properties:{properties:['property1','property2'],active:['mainhand','hotbar']}}`
            - after: `weapon:{properties:['property1','property2'],properties_active:['mainhand','hotbar']}`
                - no idea if it would actually be any more efficient but it might look slightly cleaner? who knows

## Library
- make sure all called actionbars still work with the changes i made to the quotation marks
- add contingency for making sure ssl doesn't run twice in one tick / doesnt reload twice
    - most subfunctions already have contingencies in place for this
    - this is really just so that it's easier to distribute datapacks like Homesteader without installing SSL as well
        - just remember that all datapacks have dependency functions now, so if you don't have SSL installed, it's really easy to figure out how to do it. it literally links you to the download page if you try to run any other pack without SSL
        - you can probably also just set it so that downloading a version downloads that version and its dependencies, and you just drop them both in datapacks
- maybe make status functionality for boolean statuses?
    - that's very easy to do on your own though, so not super necessary to write a library for it.
    - if you only have one amplifier and duration, you can just directly compare scores. no need to do data storage
        - honestly it could be nice to just be able to have all statuses in the same place, though
- REMAKE STATUSES IN ELIXIR
    - disorientation DONE
    - enshrouded DONE
    - feeble DONE
    - fragile DONE
    - vulnerable DONE
    - bleeding
    - frenzied
    - unnerved / frightened / terrified
    - hesitant
    - hobbled
    - incendiary (monolevel)
    - invigorated
    - rooted / webbed (monolevel)
    - tormented
    - wet is not needed. status covers that still
        - could move it over and just make it monolevel!
    - ideas for new statuses
        - curserot - some kind of wither-esque effect? honestly maybe just rename wither to curserot at that point
        - blossoming - you spread flowers and mushrooms around you (monolevel)
        - purified - you're cleared of all potion effects (monolevel)
            - this is possible now! you just have to clear all vanilla effects, and apply the elixir.clear_statuses tag, which will clear everything else
        - enlightened - you gain xp at a much higher rate
            - echoes-exclusive: it increases your maximum xp cap
        - deep wounds - prevents healing past the level of health you were at when you incurred deep wounds
            - maybe higher amplifiers would prevent a greater deal of healing?
            - alternatively, a monolevel version might just prevent healing. this honestly might be easier to deal with if you're not especially set on the idea of having higher amplifiers
        - bounciness - makes you bouncy
        - slippery - gives you really low friction
        - something that gives you high air drag
        - enlargement - makes you bigger (cap of 2x scale)
        - reduction - makes you smaller (cap of 0.33x scale)
- Circle calculation module
- Collisions obv
- more math functions that just use the built in storage math functions, but for scores
- use math functions to add a distance calculation module, which returns the distance between two points / entities
  - you can pretty easily do this just by using sqrt and finding hypotenuse between two sets of coordinates
- add some kind of pulse healing? could just be neat, idk if i'd ever use it
    - i mean a function that instantly heals a certain amount, but it'd allow increments less than instant_health
- change health fetch so that it always rounds up? idk
- add some way to clear elixir statuses, which fits with the milk gamerule
- add some kind of way to cap effective amplifiers?
    - this probably isn't an issue, because almost certainly anybody who's applying custom statuses knows what the effective cap is
    - the code exists, just decide whether or not to incorporate it

NOTE ABOUT THE CIRCLE PROBLEM!!!! it appears to be specifically related to running the function through other functions! invoking a circle by calling a function works fine, but NOT when calling it through a parse function, even if the final circle does not even use the parsed score. calling it through multiple functions also works fine, so either it's something with the parse function specifically, or maybe just something else about passing macros. no idea. LOOK INTO THIS!!!

Another note: It seems to be something with the nodes. Running multiple instances of circle draw doesn't give any error unless the node counts are DIFFERENT. maybe the nodes are just not getting cleared between instances?

## library update
- changed elixir so that tick status also assigns ssids if not already assigned. should have virtually no performance impact
- added generic amplifier to elixir
- added milk clear effects gamerule to elixir
- add something in the elixir readme about how to actually reference gamerules
- adjusted the order of status tick functions so that the duration is reduced after all other commands are run, which will result in slightly more accurate durations
- fetch/health now requires bypass_check
    - MAKE SURE YOU TEST THIS BEFORE RELEASE!!!
- other functions that do not require bypass_check, but are ALWAYS calculated:
    - fetch/coordinates
        - also fetch/coordinates exists now lol
    - fetch/location
- There was a bug with a considerable amount of fetch functions that would accidentally terminate them early. This likely wasn't causing widespread issues, but it has been fixed. If you were previously experiencing issues with fetch functions not assigning scores correctly, it's possible this change fixed the issue.
- Similarly, nearly all fetch functions have been tweaked to be slightly more performance-efficient, and avoid potential edge cases that might have caused bugs.
    - I apologize for the fact that these bugs existed in the first place. I generally just playtest on a singleplayer world, so none of these issues appeared during general testing. I'll keep my eye out for similar issues in the future.
- Elixir now supports a new kind of status: "monolevel" statuses! These are statuses that have no amplifier, and only have a duration (for example, the vanilla potion effect night vision). Although it's trivial to set up your own "monolevel" statuses with a single score, I wanted a system in place to add my own monolevel statuses through Elixir, and I thought it might be useful to have all custom potion effects centralized in Elixir.
    - Four new functions have been added: `elixir:custom/monolevel/load_status`, `elixir:custom/monolevel/tick_status`, `elixir:custom/monolevel/tick_status_nonplayer`, and `elixir:apply_monolevel`. The first three take identical input parameters to their equivalent non-monolevel functions. `elixir:apply_monolevel` is not actually required if you're trying to apply a monolevel status, as `elixir:apply` still works (and now accounts for monolevel statuses, so it won't try to use unnecessary data storage), but it's recommended to just use `elixir:apply_monolevel` if you know the status you're applying is, in fact, monolevel.
        - `elixir:apply` might also be useful if you're running a function that takes the status as an input, so you don't know whether or not the function is monolevel or not, just from knowing the name of it. `elixir:apply` is infinitesimally less efficient, as it does access storage to detect whether or not a status is monolevel, but this will have virtually no impact on the pack's performance.
    - `elixir:apply_monolevel` takes three input parameters: `$(source)`, `$(status)`, and `$(duration)`. These are used in the same way as in `elixir:apply`, but as a refresher: `$(source)` is an identifying string for your datapack (for example, "elixir" or "abc" or "pack2"), which shows where the status came from. `$(status)` is the name of the status (for example, "frostbite" or "sleep" or whatever). `$(duration)` is an integer representing how many ticks this application will last for.
        - As aforementioned, `elixir:apply` works just fine for applying monolevel statuses (you just need an extra input parameter, `$(amplifier)`), but `elixir:apply_monolevel` is definitely recommended where possible.
    - Honestly, `elixir:apply_monolevel` isn't even required if you know you're not going to be applying the status to any non-players. You can just change the `source.status.duration` score directly. This is fine, and even encouraged, but just remember that this only works for player-exclusive statuses. Otherwise, entities won't be properly tagged, and they'll never execute the status function.
- Elixir also now supports status clearing en-masse.