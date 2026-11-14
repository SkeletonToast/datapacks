## Supplemental / Standalone Packs
Echo Alchemy
    - bunch of new potion effects / ways to obtain them?
    - this could be the thing that removes milk clearing effects

## Talisman
- Maybe rework talisman so that it also takes inputs for a source, and make it more compatible with any other datapack?
- this could let you add some basic talismans for homesteader maybe

## Homesteader
- fix scouring stones so that they actually get consumed and do kindling effects
- add different day titlecard styles. everything below is JUST ideas
    - default: "monarch", echoes-style
    - "modernist" - sleek and whatnot
    - maybe just like "DAWN 3" and "DUSK 7" or whatever
        - "arena" potentially - shows like player kill counts, deaths, stuff like that
        - maybe scary style, it says like "you have survived X days" or whatever
    - "citrus" - cutie, slice-of-life style
    - "majora" - majora's mask style
    - "hardwire" - cyberpunk style?
    - "local" - weather channel style, little forecast for the day maybe
    - "overgrowth" - very planty and worn-down
    - "meadow" - flowery but cutesy instead
    - "wayfarer" - depends on player's biome location!!! could be super fun!
    - "sunfall" and "moonfall"?
- add "advents", regular intervals where you can expect something to happen
    - natural events will probably happen at these intervals
- add some kind of "vendetta" system? you can designate specific other players as friends or foes, and that value would be taken over your oath relationship to them when testing if somebody is an ally
- let players set their birthdays

## Armory
- maybe create some mathematical way to decrease effective armor? it would calculate how effective armor should actually be and just give you a flat reduction based on it

## Echoes
Priority
- talismans
- rallying
- elixir effects
- oath effects
- radiation
- exhaustion

Changes
- look for opportunities to move things to post functions
    - as a general rule: things should be in post function if they do not affect other parts of the datapack. if any sort of attribute or anything is applied, and it doesn't feed into something else, put the whole calculation into post function
    - think of proficiency
- figure out what to do to replace elytra
- figure out a system for oath relations / rallying
- rename items
    - rename cocoa beans to something else
    - rename mending to frail mending or something
- make some sort of mechanic or item that makes you immune to void damage
    - astyrian shadowshield
- make sure luck chance function actually works
- finish the creaking changes you were working on once upon a time
- FINISH NEW ELIXIR EFFECTS
- RADIATION!!!
- have some sort of settings menu where you can more easily trigger things without having to know the variable names
    - also add in a way to change your aegis theme thru there
- finish oath effects
- why doesn't aegis self visibility work when it's disabled?
    - FIXED KIND OF: aegis nodes now only render if you're more than a certain distance away
        - this does have the side effect of also not rendering for other people who are very near to you
    - once circle module is polished, try with that. it now has capability to run things based on which node you're at, so you could actually do an effective multicolored theme
- make it so that when you use coal on a campfire, it also creates a trail to all nearby linked campfires
    - also just let campfires link lol
- change totems somehow
    - maybe make them so that you still die, you just don't lose anything?
    - i don't really remember why i thought it was so necessary to change totems
        - probably just because i think totems are cheap and lame in pvp
- CHECK ON BIOME PREDICATES REFERENCES!!!
    - at LEAST temperature is affected, probably more.
    - if you have to get rid of the terralith biomes, maybe just have an auxiliary datapack that has a bunch of updated function definitions including other worldgen biomes. you can set them to replace:true so that they override the default echoes tags
- add some way to store xp, maybe in knowledge books? even though you can store xp between characters, you do still lose that extra xp when you die, so having a way to intentionally store xp might be good
    - there would have to be some amount of cost involved. maybe you could just craft knowledge books with lapis or something, and that would let you store however much
    - lossless xp storage would just trivialize the whole dilemma
- add custom functional blocks
    - heater for hot springs
        - water that's detected to be a hot spring heals you better or something, think of botw
        - could just be a campfire tbh
            - though probably don't do this because that would make healing too easy when exploring
    - cultivator?
    - fermenter?
    - crucible?
        - used to make draughts
- exhaustion?
    - when night falls, you start accruing stored exhaustion if you're not in bed. this stored exhaustion continues increasing throughout nights, and is only applied when you wake up (or if you just reach a certain amount, where you pass out.)
        - this just means that, the later you go to bed, the more exhausted you become in the morning.
        - sleeping will still decrease exhaustion, but 
    - exhaustion can't make you pass out in combat, but you'll pass out basically instantly afterward
    - passing out is essentially the same as dying, but you have a period of like 30 seconds before you "die" for real. if you aren't killed in those 30 seconds, you respawn, but keep most (or all) of your items.
- add new movement mechanics? idk what
- add "Regalia" enchantment, and just slap all the special per-item effects for regalia gear on there
    - maybe make this into split enchantments for the different item groups
    - obviously, this should not be obtainable in survival. even if you could obtain it, it wouldn't matter because you wouldn't be able to just create regalia items
- maybe the way to add feats and the like is to let you pay instructors to "teach" you certain skills or whatever
- consider having a "disciplined" stat. this could just be your highest stat, and since it's your highest, it gives you extra effective attributes with that stat or whatever. this would help decrease the gap between people who are focused on a certain build, and people who are just strong enough that they can have high scores in every stat.
    - consider this: you're running mainly a dexterity build. you want some mined materials, but you don't really want to do it yourself. however, somebody who's running mainly a strength build is able to mine really fast, so they sell things like that for decent prices, so you buy from them.
        - you could gather materials yourself, but it becomes worthwhile to pay somebody specialized to do it instead.
    - i think this would be better done by having some sort of more-permanent equivalent to Emblems, which lets you actually class into multiple professions
        - damn i really kind of made a perfect class system in cedarfell huh

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
        - reduces the effects of exhaustion while true, but does not actually reduce exhaustion
    - (temporary) being at full health
        - reduces the effects of exhaustion while true, but does not actually reduce exhaustion
    - being in a sanctuary location
- think of exhaustion as actually pretty similar to Fear in SS6. it doesn't outright discourage exploration, but it does punish carelessness while exploring.
    - if you find that exhaustion punishes exploration too heavily, and might actually discourage players from exploring, scrap it altogether.
    
funsies
- cook up some starting loadouts (see new armor section on doc)

## Echoes Concentration Stats
- The Concentration system would be a system that adds additional effects based on which of the player's stats is the HIGHEST (excluding resolve). This would grant an effective feat, regardless of their actual level in that stat (though it might be wise to say you have to have at least 30 or something in the concentration stat). This would better reward people who are pursuing focused builds.
    - Strength: Greatly increased mining speed
    - Dexterity: enhanced movement? idk
    - Vitality: Greatly increased overall endurance
    - Mind: Gain experience when using specially enchanted gear?
    - Tact: Your proficiency is shifted to match a better profile?
    - Soul: Extra maximum aegis?
- An alternative would just be to say that players get a flat bonus to their concentration stat. This would be less interesting, but could better achieve the goal of closing the gap between low-level focused players, and high-level players with spread-out stats.
    - For example, if a player who has 40 strength is focused on strength, maybe they'd just be given enough of a boost to get to 50, so they can get the benefits of having a higher stat without actually being there yet.
- THE CONCENTRATION SYSTEM ONLY WORKS IF THEIR CONCENTRATION STAT IS SIGNIFICANTLY HIGHER THAN THEIR OTHER STATS.

## Armory
- rename to "arsenal" that sounds way cooler
- test attack speed cap to ensure functionality
- come up with more efficient properties system
    - actually the nbt format is basically as efficient as i could hope for
        - maybe the only change would be just get rid of the properties sub-heading?
            - before: `weapon:{properties:{properties:['property1','property2'],active:['mainhand','hotbar']}}`
            - after: `weapon:{properties:['property1','property2'],properties_active:['mainhand','hotbar']}`
                - no idea if it would actually be any more efficient but it might look slightly cleaner? who knows

## Library
- maybe overhaul to use return more
- change all instances of return fail to return a success if applicable
- add decimal multiplication function
    - scale must be the same for all inputs
    - inputs: base, factor, and "e" (10e(e)), so 0 means it's a scale of 1, 1 means a scale of 10, -1 means a scale of 0.1
        - this is the scale at which the scores are represented. if the score value is 15 and it represents 1.5, the scale is 10, so e is 1
    - formula would be: base * factor / 10e$(e)
- add general scores that store ssids, that allow you to store entity relationships beyond what is stored in vanilla (like player targets) (maybe call these urids? come up with some name for it)
    - target
        - when the player deals damage, execute as all players on attacker. if attack has ssid equal to damage dealer ssid, then damage dealer gets that person's ssid as their target ssid
    - (homesteader) best friend awww
    - (homesteader) town leader?
- see if you can find some places where advancements made more sense than tags
- make sure all called actionbars still work with the changes i made to the quotation marks
- add contingency for making sure ssl doesn't run twice in one tick / doesnt reload twice
    - most subfunctions already have contingencies in place for this
    - this is really just so that it's easier to distribute datapacks like Homesteader without installing SSL as well
        - just remember that all datapacks have dependency functions now, so if you don't have SSL installed, it's really easy to figure out how to do it. it literally links you to the download page if you try to run any other pack without SSL
        - you can probably also just set it so that downloading a version downloads that version and its dependencies, and you just drop them both in datapacks
- REMAKE STATUSES IN ELIXIR
    - disorientation
        - jesus fucking christ
    - bleeding
        - rework this one a lil bit
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
            - could just be cosmetic, but maybe also heals you? or heals others around you?
        - immunity - you're cleared of all potion effects (monolevel)
            - this is possible now! you just have to clear all vanilla effects, and apply the elixir.clear_statuses tag, which will clear everything else
            - have some sort of cool effect when you actually clear anything
        - enlightened - you gain xp at a much higher rate
            - echoes-exclusive: it increases your maximum xp cap
        - deep wounds - prevents healing past the level of health you were at when you incurred deep wounds
            - maybe higher amplifiers would prevent a greater deal of healing?
            - alternatively, a monolevel version might just prevent healing. this honestly might be easier to deal with if you're not especially set on the idea of having higher amplifiers
                - this would be pretty easy if you just cap your max health at whatever your current health value is
        - bounciness - makes you bouncy
        - slippery - gives you really low friction
        - something that gives you high air drag
- Circle calculation module
- Collisions obv
- more math functions that just use the built in storage math functions, but for scores
- use math functions to add a distance calculation module, which returns the distance between two points / entities
  - you can pretty easily do this just by using sqrt and finding hypotenuse between two sets of coordinates
- add some kind of pulse healing? could just be neat, idk if i'd ever use it
    - i mean a function that instantly heals a certain amount, but it'd allow increments less than instant_health
- add actionbar system to github feature breakdown

NOTE ABOUT THE CIRCLE PROBLEM!!!! it appears to be specifically related to running the function through other functions! invoking a circle by calling a function works fine, but NOT when calling it through a parse function, even if the final circle does not even use the parsed score. calling it through multiple functions also works fine, so either it's something with the parse function specifically, or maybe just something else about passing macros. no idea. LOOK INTO THIS!!!
    Another note: It seems to be something with the nodes. Running multiple instances of circle draw doesn't give any error unless the node counts are DIFFERENT. maybe the nodes are just not getting cleared between instances?

## Library Update
- execute module (not done yet)
    - target urid
    - positioned_range gamerule
- phantom parsing
- circle node counting change
- elixir advancement added
- update to gamerule defaults


## Major Changes
**Score Parse Module**
- ALL FUNCTIONS HAVE BEEN RENAMED. This change is intended to make SPM more legible, more clear in its functionality, and generally better-organized. Summary:
    - Functions ending in "_with_macros" are now contained in their own `parse:macros/` directory, and no longer end with "_with_macros".
    - I would imagine nobody was referencing them directly, but the "internal" functions have been partitioned as well, into `parse:internal/`.
    - Functions no longer have "score" in their name. It's a bit redundant, and does nothing but make the function names longer. I am assuming that everybody who uses SPM knows that they're parsing a score.
    - `parse:score_unended` and sister functions have been renamed to follow the convention of `parse:simple`.
    - `parse:score` and sister functions have been renamed to follow the convention of `parse:complex`.
- A full list of changed function names is below:
    - `parse:score_unended` -> `parse:simple`
    - `parse:score_unended_with_macros` -> `parse:macros/simple`
    - `parse:score_append` -> `parse:append`
    - `parse:score_prepend` -> `parse:prepend`
    - `parse:score` -> `parse:complex`
    - `parse:score_with_macros` -> `parse:macros/complex`
    - `parse:score_increment` -> `parse:internal/increment`
    - `parse:score_recur` -> `parse:internal/recur`
- The old functions are no longer supported, but will be included in THIS PATCH ONLY in order to facilitate a smooth transition. This means, they're still in the code, they will just be removed next patch.

### Score Parse Module
**Please see the Major Changes section if you haven't already.**

Decimal with Macros
- Relatedly to last patch, another massive change has been made to SPM: The introduction of the `parse:macros/decimal` function. This function allows you to effectively pass macros through the `parse:decimal` function.
- As well as covering most use cases for `parse:macros/simple`, `parse:complex`, and `parse:macros/complex`, this also means that `parse:macros/simple` is DRASTICALLY more performance-intensive.
- `parse:macros/decimal` functions the same way as `parse:decimal`, it just now takes the `$(macros)` input parameter, which is the same as it's always been.
- This also means means that basically the only use case I had left for the original SPM code is gone. Which is good! This new code is significantly more flexible and performance-intensive. It is a bit sad to see that code, which was really the first notable datapack project I ever worked on, become mostly obsolete, though.
- Of course, the other functions will still be maintained. Even if I personally don't currently use them, they still definitely have use cases that aren't covered just by `parse:decimal` and `parse:macros/decimal`.

Phantom Player Parsing
- Equivalent functions now exist for parsing scores from "phantom players", as in, fake player usernames that don't refer to real players, that are just used to store scores. A good example for this is the `$moon_phase` phantom player. No player is named `$moon_phase` (since you can't start a valid Minecraft username with a dollar sign), so this "phantom player" just stores the value of the current moon phase.
- These functions are stored in a separate `parse:phantom/` directory. All new functions are below:
    - `parse:phantom/simple`
    - `parse:phantom/macros/simple`
    - `parse:phantom/complex`
    - `parse:phantom/macros/complex`
    - `parse:phantom/decimal`
    - `parse:phantom/macros/decimal`
    - `parse:phantom/prepend`
    - `parse:phantom/append`
- All of these functions take the same input parameters as their non-phantom counterparts, as well as `$(target)`. This is the "name" of the phantom player you want to draw from, for example, "`$moon_phase`".

### Execute Module
SSL now has the Execute module, which is intended to expand on the vanilla capabilities of the /execute command, allowing for more complex command execution. It has four sub-modules:
- `execute:anchored/`
- `execute:from/`
- `execute:on/`
- `execute:positioned/`

All functions take `$(run)` as an input parameter (along with others, dependent on the function). This should be the FULL command that is run after being put through the execute module.

**Subfunctions**\
Anchored
- `execute:anchored/body` executes the specified command anchored at a position halfway between the executor's eyes, and feet.

From
- `execute:from/body` executes the specified command, rotated so that it matches the rotation of the executing player's body. This is different from just executing a function based on where the player is facing, because it is dependent upon which way the player's body is facing, not their head. This function only works on players.

On
- `execute:on/target` executes the specified command AS the player most recently damaged by the player executing the function.
- `execute:on/targets` executes the specified command as ALL eligible players that have been damaged by the executor.
- `execute:on/nonplayer/target` and `execute:on/nonplayer/targets` do the same, but ONLY target non-player entities.
    - The reason it's split up between player and nonplayer is that it's more performance-intensive to calculate the target if it's not a player.

All of the "on" functions ONLY target entities that the executor has damaged in the last five seconds. This five-second limit is meant to help achieve parity with vanilla, as executing a command `on attacker` will only target entities that have attacked the executor in the last five seconds.

Positioned
- `execute:positioned/over/floor` executes the function at the y-value just above the closest solid block below the executing position. In other words, it finds the "floor" of wherever it's being executed from and executes on top of it.
- `execute:positioned/under/ceiling` executes the function, you guessed it, just below the "ceiling". It checks for the closest solid block above the executing position, and executes right under it.

### Gamerules
- The value of custom gamerules can now be changed by those with SSL permissions levels of 5 or higher.
    - This means that the ssl.permissions.level score now does have actually potentially dangerous effects if it's unregulated. By default, players never receive a permissions level score of any higher than 1, so if none of your datapacks change it, you should still be fine. Just MAKE SURE that it remains unchanged.
- Fixed an issue where range-based gamerules were not being initialized with the correct default value. They now initialize the phantom player `$<source>.gamerule.<gamerule>`'s `value` score with the value specified by `$(default)` in `gamerule:custom/load`.