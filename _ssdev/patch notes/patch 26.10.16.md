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