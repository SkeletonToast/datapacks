# Patch Notes - Version 26.10.08
SSL is finally updated to game version 26.3! I apologize for the delay, there were a few fixes I wanted to make, and some modules I wanted to finish before the public release. This is a much bigger update than usual, so please be patient if there are any issues.

**Please note:** The previous round functions, meaning all round functions aside from `math:round`, are now fully unsupported, meaning the functions are not defined in SSL. From now on, only `math:round` should be used for rounding / rounded division purposes.

### Most Important Changes - May Cause Errors if Unaddressed
These changes relate to fetch functions, the round and percentage functions in the math module, the DayTime score, SSID assignment, action tags (Extinguished, Pacified, FallDamageNegated), and generic integer scores (-1, 2, 3, 5, 7, 10).

- Some of the "fetch" functions have been changed to help increase the pack's performance, and you'll have to change the way you invoke them.
    - The functions `ss_lib:fetch/attack_speed` and `ss_lib:fetch/attack_damage` now require another input parameter: `bypass_check`. These functions will now check to see if the score was assigned earlier in this same tick, so it doesn't fetch redundant player data. The `bypass_check` parameter, if set to `true`, will bypass this check, and will fetch the value no matter what. This is useful for situations where these values might have changed earlier in the tick, and you need the most updated value.
    - The `ArmorToughness` score is no longer calculated every tick. I'm not sure why it ever was. It is now calculated as part of the `ss_lib:fetch/armor` function.
    - The `Fire` score is also no longer calculated every tick, and can be fetched with the function `ss_lib:fetch/fire`. It takes only one input parameter, `$(s)`, which should be the selector representing which entities the `Fire` score is fetched for.
    - The `ss_lib:fetch/gear/armor_type` function had an error that was not properly reducing the final ArmorType score. This has been fixed, so ArmorType will now be calculated as 25% of what it was before this update.
    - A small change has been made to assignment of the Armorless score. Previously, Armorless would be assigned to 1 if the entity had 4 or less armor points, regardless of the armor they're actually wearing. Now, if the player already has an Armorless score of 1, and they have four or MORE armor points, Armorless will be set to 0.
- The `math:round` function was apparently mistakenly expecting the `$(round)` input to be a scoreboard objective, instead of just an integer. This has been fixed, so `math:round` now ONLY supports integer inputs for the `$(round)` macro.
    - The `math:round_score` function now exists, which takes the same inputs (`$(score)` and `$(round)`), but expects a scoreboard objective as the input for `$(round)`.
- The `math:percentage` and `math:percentage_score` functions now have different input parameters. Previously, they were `$(base)` and `$(percentage)`, and `$(score)` and `$(percentage)`, respectively. Now, for consistency, they are `$(base_score)` and `$(percentage)` for `math:percentage`, and `$(base_score)` and `$(percentage_score)` for `math:percentage_score`.
- The DayTime score is no longer supported. Day time is now scored in the `value` score for the phantom player `$day_time`. As in, it's accessed with `scoreboard players get $day_time value`.
- This patch fixes an issue that allowed SSIDs to be assigned to entities that already had SSIDs. It's worth checking to make sure your SSIDs are unchanged, if you were referencing the SSID of a specific entity.
- Some action tags have been renamed, namely: "Extinguished", "Pacified", and "FallDamageNegated". They have been changed to: "ssl.action.extinguish", "ssl.action.pacify", and "ssl.action.negate_fall_damage", respectively.
    - I don't actually recall if I've mentioned these before, so as a reminder: These are just tags that can be applied to most entities to trigger certain behaviors that aren't easy to trigger through functions (usually because you'd have to run more commands on subsequent ticks). The `ssl.action.pacify` tag will de-aggro any hostile mob (though they might re-aggro immediately if there's a target in range). The `ssl.action.extinguish` tag will extinguish any mob that's currently on fire, including players. Finally, the `ssl.action.negate_fall_damage` tag can be applied to any mob, and they will take no fall damage the next time they hit the ground. If they're on the ground, this tag is just removed, so make sure it's only applied in midair.
- The generic integer scores (-1, 2, 3, 5, 7, 10) are no longer officially supported. They won't be deleted from your world, but developers should reference constants from now on. Constants in SSL are automatically created from -100 to 100, and can be referenced with the score `value` held by the phantom player `#const.<value>`. For example, if you wanted to multiply your `generic_a` score by 35, you would run the following command: `scoreboard players operation @s generic_a *= #const.35 value`.

### Gamerule Module
Another one of the new modules in this update is the addition of the Gamerule module! This is a system designed to simulate vanilla gamerules, allowing developers to set global gamerules that they can change at will, and reference when needed. This is a good way to keep track of backend settings that apply to the world at large.

Three new functions have been added, that should be referenced by any datapack using the Gamerule module. These are: `gamerule:custom/load`, `gamerule:custom/tick_bool`, and `gamerule:custom/tick_range`. Their functions are detailed below:

`gamerule:custom/load` should be run upon load, for each individual gamerule you want to add, regardless of whether they're boolean or range-based. It takes 3 input parameters: `$(source)`, `$(gamerule)`, and `$(default)`. `$(source)` should be your datapack's namespace, or an abbreviation representing it, just to establish where the gamerule comes from; for example, it might be "coolawesomepack" or just "cap" for short. `$(gamerule)` is the identifier for your gamerule. Maybe your datapack optionally lets players teleport to others, so your gamerule might be `teleport_enabled` (boolean) or `teleport_range` (range-based). `$(default)` is the default value of the gamerule.

`gamerule:custom/tick_bool` should be run every tick, for all custom gamerules that are boolean (true or false). It takes two input parameters, `$(source)` and `$(gamerule)`. They're used the same way as defined above, in the section about `gamerule:custom/load`.

`gamerule:custom/tick_range` should be run every tick, for all custom gamerules that accept values in a set range, for example, 0-100. It takes four input parameters: `$(source)`, `$(gamerule)`, `$(lower_limit)`, and `$(upper_limit)`. `$(source)` and `$(gamerule)` are used the same way as defined above, in the section about `gamerule:custom/load`. `$(lower_limit)` is an integer equal to the lowest valid value for your gamerule, in this example, that'd be `0`. `$(upper_limit)` is an integer equal to the highest valid value, in this example, `100`.

All input parameters must be valid for scoreboard objectives, as in, no spaces and minimal special characters.

And that's all you have to do: run `gamerule:custom/load` upon load, and `gamerule:custom/tick_<bool or range>` every tick, for each of your custom gamerules. To change any gamerule, run the command: `trigger <source>.gamerule.<gamerule> set <value>`.

Running this without specifying the value (as in, just `trigger <score>`) will toggle boolean parameters, but will just set range-based gamerules to their minimum value. This is an unfortunate side effect that I don't currently have a way to work around. There's no good way to track if a player intentionally triggered the gamerule score, or they just weren't online the last time the gamerule was updated, and thus their score is outdated.

Players with an ssl.permissions.level score of 4 or higher can also run the command `/trigger ssl.gamerule.query` to see a list of SSL-base gamerules across all datapacks, their type, their range if applicable, and their current value.

### Circle Module (Beta)
This is a module that lets you run a function in a circle around a set entity or point. You can specify how many nodes the circle has, what the radius is, and what function is run at each of the nodes. For example, if I created a circle with 5 nodes, a radius of 5, and the node function `particle end_rod`, it would place five end_rod particles around the player or point I specify, evenly spaced from each other, all spaced 5 blocks away from the center.

To create a circle, there are two functions you can use: `circle:draw_at_entity` and `circle:draw_at_position`. "draw_at_entity" will create the circle around the executing entity, which copies their rotation as well, by default. "draw_at_position" will just create the circle at the executing location, so if you want to specify specific coordinates, it's best to use `execute positioned <coordinates> run function <function>`. Both functions take the same input parameters: `nodes`, `radius`, and `run_at_node`. `nodes` is an integer representing the number of nodes, `radius` is a float representing the circle's radius, and `run_at_node` is any valid command, which will be executed at each of the nodes.

**Please note:** This module is in early development, and I do not guarantee perfect functionality. Currently, a bug exist that seems to cause issues when rendering multiple circles at once. Additionally, the circle module is currently not very optimized. Simply creating a circle for a single tick  will likely not have any noticeable impact on performance, but if you plan to have a sustained circle, be aware that it may impede performance. With any luck, this will be addressed within the next few SSL updates.

### Other New Features
**Permissions**

Another new system is the permissions system. Calling it a "system" is kind of a stretch, it's really just a score: `ssl.permissions_level`. All players, upon joining the world for the first time, will be given a permissions level of `1`. This is documented more thoroughly in the `ss_lib:_load` function, but I'll give a rundown here:
- Level 1: All players
- Level 2: Trusted players / All players (private world)
- Level 3: Somewhere between general player and moderator
- Level 4: Moderator
- Level 99: Full permissions / Operators

These levels are not hard-coded to be associated with these groups of people, they're just suggested. As such, take care to check other datapacks that use SSL to see how they use permissions levels, if at all.

This really just mainly exists because I found some uses for it, but maybe you can too. This score isn't touched in SSL outside of its initial assignment in `ss_lib:first_join`, so you can just fully ignore it if you want, with no risk (unless you install a datapack that does use it). Its use case for you is mainly just so that there's a unified permissions level that can be referenced by any datapack that uses SSL.

**Dependencies**

A template function exists in `Silver Star Library/data/ss_lib/dependencies_template.mcfunction`, outside of the `function` folder. Paste this function, updated with your datapack's information, in your datapack's load file. This is fully optional, but if used, it will just show a chat message if your datapack is present in the world, and SSL is not. This chat message informs players that SSL is required, and gives a link to the SSL download page. Again, fully optional, it's just there if you want to have a little extra security, especially if you're re-distributing your pack.

**Chance Module**
Two new functions exist: `math:chance/percentage` and `math:chance/score`. These have a random chance to trigger your specified function, and the probability of the function triggering depends on your input. `math:chance/percentage` takes two inputs: `$(value)` and `$(function)`. `$(value)` is a float from 0.00 to 1.00, which determines the likelihood of `$(function)` triggering. `$(function)` should be the name of a function, obviously.

Similarly, `math:chance/score` does the same thing, only using a score instead of a hard value. This function takes three inputs: `$(score)`, a scoreboard objective, `$(max_value)`, which is an integer to compare the value of `$(score)` against, and `$(function)`, which is the name of whatever function will be triggered, if the chance succeeds. As an example, if your objective specified by `$(score)` has a value of 15, and you input a value of 30 for `$(max_value)`, then `$(function)` will have a 15/30 chance of triggering, or 50%.

Although `math:chance/percentage` is extremely basic code, I found it helpful to have a shorthand. Plus, `math:chance/score` needed some sort of function to pass the parsed value to.

### Miscellaneous Changes
- Score Parse Module now has two new functions: `parse:score_append` and `parse:score_prepend`. I noticed I was often invoking `parse:score` and either only prepending or appending, so I just added these two functions as shorthands. They each take their respective `$(prepend/append)` and `$(prepend_position/append_position)` inputs, and don't require input for whichever function is not being used.
    - They don't support macro passing, so if you want to pass macros, just continue using the `parse:score_with_macros` function.
- There is a new fetch function, `ss_lib:fetch/coordinates`. It's similar to `ss_lib:fetch/location`, but only fetches the player's `xcoord_precise`, `ycoord_precise`, and `zcoord_precise` scores. It also requires an additional input parameter: `$(scale)`.
    - This is meant for situations where you think you might need to reference more precise coordinates more than once, so it's more efficient to assign them to scores.
- Fixed an issue preventing GameTime from updating
- Added a new function, `ss_lib:first_join`, which is run on all players when they first join the world. It assigns an SSID to them, and gives them SSL permissions level 1.
- I somehow only now found this out, but you can actually pass quoted macros through the `parse` module, when using one of the `_with_macros` functions! You just have to put single quotes, (''), around the text in the macro, instead of double quotes ("").
- The "FallDamageNegated" tag was being automatically applied to all players on the ground, and unapplied as soon as they left the ground. I don't remember why I did this, so I've commented it out for now, to avoid any unwanted behavior. If you find that this changes something, this commented-out code can be found on line ~19 of `ss_lib:_post_function`.