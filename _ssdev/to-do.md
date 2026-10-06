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

## Armory
- update attack speed cap lmfao that thing is extremely outdated
    - it appears to predate even SPM
    - should be updated to use SPM! I didn't see any other major issues

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

NOTE ABOUT THE CIRCLE PROBLEM!!!! it appears to be specifically related to running the function through other functions! invoking a circle by calling a function works fine, but NOT when calling it through a parse function, even if the final circle does not even use the parsed score. calling it through multiple functions also works fine, so either it's something with the parse function specifically, or maybe just something else about passing macros. no idea. LOOK INTO THIS!!!

Another note: It seems to be something with the nodes. Running multiple instances of circle draw doesn't give any error unless the node counts are DIFFERENT. maybe the nodes are just not getting cleared between instances?

## Library Update
**Changes that require attention**
- changes to fetch functions
    - AttackSpeed and AttackDamage now require bypass_check bool as well
    - ArmorToughness is no longer calculated every tick, and is now part of the fetch/armor function
    - new fetch fire function
- GameTime updates now lmfao?? what was the point before
- DayTime changes
    - Used to be a score, DayTime, which was stored for each player. Now it's just $day_time value.
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

# Patch Notes
SSL is finally updated to game version 26.3! I apologize for the delay, there were a few fixes I wanted to make, and some modules I wanted to finish before the public release.

### Changes that must be addressed
- Some of the "fetch" functions have been changed to help increase the pack's performance, and you'll have to change the way you invoke them.
    - The functions `ss_lib:fetch/attack_speed` and `ss_lib:fetch/attack_damage` now require another input parameter: `bypass_check`. These functions will now check to see if the score was assigned earlier in this same tick, so it doesn't fetch redundant player data. The `bypass_check` parameter, if set to `true`, will bypass this check, and will fetch the value no matter what. This is useful for situations where these values might have changed earlier in the tick, and you need the most updated value.
    - The `ArmorToughness` score is no longer calculated every tick. I'm not sure why it ever was. It is now calculated as part of the `ss_lib:fetch/armor` function.
    - The `Fire` score is also no longer calculated every tick, and can be fetched with the function `ss_lib:fetch/fire`. It takes only one input parameter, `$(s)`, which should be the selector representing which entities the `Fire` score is fetched for.
- The DayTime score is no longer supported. Day time is now scored in the `value` score for the phantom player `$day_time`. As in, it's accessed with `scoreboard players get $day_time value`.
- This patch fixes an issue that allowed SSIDs to be assigned to entities that already had SSIDs. It's worth checking to make sure your SSIDs are unchanged, if you were referencing the SSID of a specific entity.

### Circle Module
The highlight of this update (in my opinion) is the circle module. This is a module that lets you run a function in a circle around a set entity or point. You can specify how many nodes the circle has, what the radius is, and what function is run at each of the nodes. For example, if I created a circle with 5 nodes, a radius of 5, and the node function `particle end_rod`, it would place five end_rod particles around the player or point I specify, evenly spaced from each other, all spaced 5 blocks away from the center.

To create a circle, there are two functions you can use: `ss_lib:circle/draw_at_entity` and `ss_lib:circle/draw_at_position`. "draw_at_entity" will create the circle around the executing entity, which copies their rotation as well, by default. "draw_at_position" will just create the circle at the executing location, so if you want to specify specific coordinates, it's best to use `execute positioned <coordinates> run function <function>`. Both functions take the same input parameters: `nodes`, `radius`, and `run_at_node`. `nodes` is an integer representing the number of nodes, `radius` is a float representing the circle's radius, and `run_at_node` is any valid command, which will be executed at each of the nodes.

### Gamerule Module
Another one of the new modules in this update is the addition of the Gamerule module! This is a system designed to simulate vanilla gamerules, allowing developers to set global gamerules that they can change at will, and reference when needed. This is a good way to keep track of backend settings that apply to the world at large.

Three new functions have been added, that should be referenced by any datapack using the Gamerule module. These are: `gamerule:custom/load`, `gamerule:custom/tick_bool`, and `gamerule:custom/tick_range`. Their functions are detailed below:

`gamerule:custom/load` should be run upon load, for each individual gamerule you want to add, regardless of whether they're boolean or range-based. It takes two input parameters: `source` and `gamerule`. `source` should be your datapack's namespace, or an abbreviation representing it, just to establish where the gamerule comes from; for example, it might be "coolawesomepack" or just "cap" for short. `gamerule` is the identifier for your gamerule. Maybe your datapack optionally lets players teleport to others, so your gamerule might be `teleport_enabled` (boolean) or `teleport_range` (range-based).

`gamerule:custom/tick_bool` should be run every tick, for all custom gamerules that are boolean (true or false). It takes two input parameters, `source` and `gamerule`. They're used the same way as defined above, in the section about `gamerule:custom/load`.

`gamerule:custom/tick_range` should be run every tick, for all custom gamerules that accept values in a set range, for example, 0-100. It takes four input parameters: `source`, `gamerule`, `lower_limit`, and `upper_limit`. `source` and `gamerule` are used the same way as defined above, in the section about `gamerule:custom/load`. `lower_limit` is an integer equal to the lowest valid value for your gamerule, in this example, that'd be `0`. `upper_limit` is an integer equal to the highest valid value, in this example, `100`.

All input parameters must be valid for scoreboard objectives, as in, no spaces and minimal special characters.

And that's all you have to do: run `gamerule:custom/load` upon load, and `gamerule:custom/tick_<bool or range>` every tick, for each of your custom gamerules. To change any gamerule, run the command: `trigger (source parameter).gamerule.(gamerule parameter) set <value>`.

Running this without specifying the value (as in, just `trigger <score>`) will toggle boolean parameters, but will just set range-based gamerules to their minimum value. This is an unfortunate side effect that I don't currently have a way to work around.

### Other New Features (Permissions and Dependencies)
**Permissions**

Another new system is the permissions system. Calling it a "system" is kind of a stretch, it's really just a score: `ssl.permissions_level`. All players, upon joining the world for the first time, will be given a permissions level of `1`. This is documented more thoroughly in the `ss_lib:_load` function, but I'll give a rundown here:
- Level 1: All players
- Level 2: Trusted players / All players (private world)
- Level 3: Somewhere between general player and moderator
- Level 4: Moderator
- Level 99: Full permissions / Operators

This really just mainly exists because I found some uses for it, but maybe you can too. This score isn't touched in SSL outside of its initial assignment in `ss_lib:first_join`, so you can just fully ignore it if you want, with no risk (unless you install a datapack that does use it). Its use case for you is mainly just so that there's a unified permissions level that can be referenced by any datapack that uses SSL.

**Dependencies**

A template function exists in `Silver Star Library/data/ss_lib/dependencies_template.mcfunction`, outside of the `function` folder. Paste this function, updated with your datapack's information, in your datapack's load file. This is fully optional, but if used, it will just show a chat message if your datapack is present in the world, and SSL is not. This chat message informs players that SSL is required, and gives a link to the SSL download page. Again, fully optional, it's just there if you want to have a little extra security, especially if you're re-distributing your pack.

### Miscellaneous Changes
- Fixed an issue preventing GameTime from updating
- Added a new function, `ss_lib:first_join`, which is run on all players when they first join the world. It assigns an SSID to them, and gives them SSL permissions level 1.
- I somehow only now found this out, but you can actually pass quoted macros through the `parse` module, when using one of the `_with_macros` functions! You just have to put single quotes, (''), around the text in the macro, instead of double quotes ("").

### Roadmap - Upcoming Changes