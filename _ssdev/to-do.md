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
    - vulnerability DONE
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
        - i would say avoid this, because it's really not a potion effect. it's kind of just a non-potion status. if you moved it over, it means that "clearing" statuses would also dry you off, which might be cool if wet every does anything more than cosmetics, but until then just keep it as is
    - ideas for new statuses
        - curserot - some kind of wither-esque effect? honestly maybe just rename wither to curserot at that point
        - blossoming - you spread flowers and mushrooms around you (monolevel)
        - immunity - you're cleared of all potion effects (monolevel)
            - this is possible now! you just have to clear all vanilla effects, and apply the elixir.clear_statuses tag, which will clear everything else
        - enlightened - you gain xp at a much higher rate
            - echoes-exclusive: it increases your maximum xp cap
        - deep wounds - prevents healing past the level of health you were at when you incurred deep wounds
            - maybe higher amplifiers would prevent a greater deal of healing?
            - alternatively, a monolevel version might just prevent healing. this honestly might be easier to deal with if you're not especially set on the idea of having higher amplifiers
        - bounciness - makes you bouncy
        - slippery - gives you really low friction
        - something that gives you high air drag
        - enlargement - makes you bigger (cap of 2x scale) DONE
        - reduction - makes you smaller (cap of 0.33x scale) DONE
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
- make sure that health and health_attributes fetch functions are used appropriately
- figure out why the pack is running so slow

NOTE ABOUT THE CIRCLE PROBLEM!!!! it appears to be specifically related to running the function through other functions! invoking a circle by calling a function works fine, but NOT when calling it through a parse function, even if the final circle does not even use the parsed score. calling it through multiple functions also works fine, so either it's something with the parse function specifically, or maybe just something else about passing macros. no idea. LOOK INTO THIS!!!

Another note: It seems to be something with the nodes. Running multiple instances of circle draw doesn't give any error unless the node counts are DIFFERENT. maybe the nodes are just not getting cleared between instances?

## library update
- add something in the github readme about how to actually reference gamerules

# Silver Star Library Version 26.10.16
**Load-Bearing Changes**:
- The `ss_lib:fetch/health` function now requires `$(bypass_check)` as an input parameter.

This update just focuses on polishing up Elixir, and fixing some issues with the Fetch functions.

While I was writing a few new statuses for Elixir, something haunting happened to me. I was writing a status called "disoriented", and for reasons I cannot possibly understand, applying this status effect caused a complete memory leak. The game very literally ground to a full halt. I have removed and quarantined the code for Disoriented, and although I hope it was just an issue with that status, it is very spooky to me that I now know such a memory leak is possible.

If anything like this EVER happens to you, I beg you, please contact me and send me your profiling results (for those who don't know, pressing F3 + L will start "profiling" in your game, where it tracks what specific commands are using the most processing power). I can be contacted best through Discord (@skeleton.toast). If you can't reach me there, for whatever reason, you can send me an email (ehwelker@gmail.com). Kind of doxxing myself, but that's fine; I'd really like to figure out what causes that issue. Plus, my name was already on the Silver Star license.

## Fetch Functions
- The `ss_lib:fetch/location` function has been split into two functions: `ss_lib:fetch/location` and `ss_lib:fetch/coordinates`. They both only require the `$(s)` input parameter. As a reminder, `ss_lib:fetch/location` is called every ten ticks by the scheduled functions.
    - Please be aware, `ss_lib:fetch/location` invokes `ss_lib:fetch/coordinates`.
- There was a bug with a considerable amount of fetch functions that would accidentally terminate them early. This likely wasn't causing widespread issues, but it has been fixed. If you were previously experiencing issues with fetch functions not assigning scores correctly, it's possible this change fixed the issue.
    - I apologize for the fact that this bug existed in the first place. I generally just playtest on a singleplayer world, so none of these issues appeared during general testing. I'll keep my eye out for similar issues in the future.
- Similarly, nearly all fetch functions have been tweaked to be slightly more performance-efficient, and avoid potential edge cases that might have caused bugs.
- The `ss_lib:fetch/health` function now requires `$(bypass_check)` as an input parameter.
- `ss_lib:fetch/health` has also been split into two functions: `ss_lib:fetch/health` and `ss_lib:fetch/health_attributes`. Previously, `ss_lib:fetch/health` would also assign the `BaseMaxHealth` score, but that is now done with the `ss_lib:fetch/health_attributes` function. This new function also assigns a new score, `MaxHealth`, which is equal to the entity's current OVERALL max health attribute, taking into account modifiers.
    - Like its counterpart, `ss_lib:fetch/health_attributes` takes two input parameters: `$(s)` (selector) and `$(bypass_check)` (boolean).

## Elixir
- Elixir status functions are now run pre-loaded with a new score: `elixir.generic.amplifier`. This score is equal to whatever the entity's amplifier is, plus one. This score is set fresh every time a status function is run, so you can reference it directly in your status function; you don't need to assign it or anything. Feel free to modify the value as much as you want, as I said, it's reset before the next function is run.
- Elixir now supports a new kind of status: "monolevel" statuses! These are statuses that have no amplifier, and only have a duration (for example, the vanilla potion effect night vision). Although it's trivial to set up your own "monolevel" statuses with a single score, I wanted a system in place to add my own monolevel statuses through Elixir, and I thought it might be useful to have all custom potion effects centralized in Elixir.
    - Four new functions have been added: `elixir:custom/monolevel/load_status`, `elixir:custom/monolevel/tick_status`, `elixir:custom/monolevel/tick_status_nonplayer`, and `elixir:apply_monolevel`. The first three take identical input parameters to their equivalent non-monolevel functions. `elixir:apply_monolevel` is not actually required if you're trying to apply a monolevel status, as `elixir:apply` still works (and now accounts for monolevel statuses, so it won't try to use unnecessary data storage), but it's recommended to just use `elixir:apply_monolevel` if you know the status you're applying is, in fact, monolevel.
        - `elixir:apply` might also be useful if you're running a function that takes the status as an input, so you don't know whether or not the function is monolevel or not, just from knowing the name of it. `elixir:apply` is infinitesimally less efficient, as it does access storage to detect whether or not a status is monolevel, but this will have virtually no impact on the pack's performance.
    - `elixir:apply_monolevel` takes three input parameters: `$(source)`, `$(status)`, and `$(duration)`. These are used in the same way as in `elixir:apply`, but as a refresher: `$(source)` is an identifying string for your datapack (for example, "elixir" or "abc" or "pack2"), which shows where the status came from. `$(status)` is the name of the status (for example, "frostbite" or "sleep" or whatever). `$(duration)` is an integer representing how many ticks this application will last for.
        - As aforementioned, `elixir:apply` works just fine for applying monolevel statuses (you just need an extra input parameter, `$(amplifier)`), but `elixir:apply_monolevel` is definitely recommended where possible.
    - Honestly, `elixir:apply_monolevel` isn't even required if you know you're not going to be applying the status to any non-players. You can just change the `source.status.duration` score directly. This is fine, and even encouraged, but just remember that this only works for player-exclusive statuses. Otherwise, entities won't be properly tagged, and they'll never execute the status function.
- Elixir also now supports status clearing en-masse. Simply run the function `elixir:clear_all_statuses` as the entity whose statuses you want to clear, and it will remove all active Elixir statuses. **This includes custom statuses. I mean literally all status effects that use Elixir.**
    - Alongside this, a new gamerule has been introduced (using the SSL gamerule module): `elixir.gamerule.milk_clear_statuses`, which, by default, is true. If true, it means that drinking a milk bucket will clear all active Elixir statuses.
    - This is a new feature, and it's been a little inconsistent. Please forgive me if it has issues, and of course, please reach out if you find any issues (Discord: @skeleton.toast).
- I'm working on functionality to query custom Elixir statuses, like the query function for the Gamerule module. Stay tuned for that.
- An oversight, which was causing statuses to expire 1 tick too early, has been fixed.

### Elixir: New Statuses
A handful of new statuses have been added, just for fun. If you're not going to use them, feel free to remove them from the code. Nothing relies on them. I would suggest, if you want to remove them, that you just remove the code where they're loaded and ticked.
- Enlargement: Increases an entity's size by +10% per effect level. Caps at 2x size. (`elixir.enlargement`)
- Reduction: Decreases an entity's size by -5% per effect level. Caps at 0.5x size. (`elixir.reduction`)
- Feeble: Player-exclusive, even if you manually tick it with `elixir:custom/tick_status_nonplayer`. This status decreases players' mobility based on how heavy their gear is. (`elixir.feeble`)
- Beeful: When attacked, the affected entity will release a swarm of small, fragile bees. The amount of bees increases with amplifier. (`elixir.beeful`)
- Fortification: Increases the entity's armor and armor_toughness attributes by (amplifier + 1). (`elixir.fortification`)
- Fragility: Decreases the entity's armor and armor_toughness attributes by (amplifier + 1). (`elixir.fragility`)
- Vulnerability: Decreases the entity's maximum health by ((amplifier + 1) * 2). (`elixir.vulnerability`)