## SSL Patch 26.10.22
I am reasonably confident in the integrity of these new features, but bugs do slip through the cracks more often than I'd like (I still shudder to think about the #const.10 typo from a few patches ago). As usual, if you do find anything, feel free to message me on Discord (@skeleton.toast).

**Load-Bearing Changes - Elixir & Round Functions**
- Elixir now uses a different method to clear statuses, now a score instead of a tag. If you were manually applying the `elixir.clear_statuses` tag before, just use the `elixir:clear_all_statuses` function now. If you were calling this function before, no changes are necessary.
- The functions below are no longer officially supported. They haven't been removed, but SSL is now officially moving to the new rounding and division modules, which you can read about in the new features section.
    - `math:round`
    - `math:round_score`
    - `math:round_up`
    - `math:round_up_score`
- The `ss_lib:fetch/health` function now ALWAYS rounds up, to match the visual display of health above the player's hotbar.

### Score Parse Module
- A new function now exists, that will almost certainly see a lot of use:
    - `parse:decimal`
- This function takes three input parameters: `$(score)`, `$(scale)`, and `$(function)`. `$(score)` and `$(function)` function identically to other parse functions. `$(scale)` is the scale you would like your score to be modulated by, before being passed to the secondary function. For example, if you have a score of 12345 in whatever objective, and you want to pass 123.45 to another function, you should input `$(scale)` as `0.01`.
    - Essentially, `$(score)` is multiplied by `$(scale)`, then passed to `$(function)`. This calculation is done as a double, so it supports a great deal of decimal precision.
- This kind of makes a lot of use cases for the rest of SPM obsolete, but at present, this function does not support other macros. If you do want to pass macros, you'll have to use one of the other parse functions. I am looking into ways to use this new method of score parsing, while still being able to pass macros, so stay tuned for that.
- Relatedly, `parse:score_unended` just runs `parse:decimal` with a `$(scale)` of `1`. No other parse functions have been changed.

If you're curious, the reason I never adopted this strategy before ("this strategy" meaning storing the score in data storage) is because I was concerned about the storage getting confused if multiple entities parsed a score at the same time, and I thought the other method would be more efficient. After doing some profiling, `parse:decimal` does seem to be a bit more efficient, in situations where it can be used.
I promise the rest of SPM does still have its use cases.

### Math Module
Rounding
- Added a few new functions, related to rounding:
    - `math:round/int`
    - `math:round/score`
    - `math:round/up/int`
    - `math:round/up/score`
    - `math:round/down/int`
    - `math:round/down/score`
- The above "round" functions ONLY round a number to the nearest multiple of the specified round value. They all take two input parameters: `$(score)` and `$(round)`. For the "int" functions, `$(round)` should be an integer, and for the "score" functions `$(round)` should be a scoreboard objective. `$(score)` is rounded to the nearest multiple of `$(round)`. You can also choose to round up or down, using the "round/up" or "round/down" functions.
- THESE FUNCTIONS DO NOT DIVIDE THE INPUT. They ONLY round to the nearest multiple.
- The previous functions, `math:round` and `math:round_score` will not be removed, but also will not be updated in the future. **Users are highly encouraged to switch over to these new functions**.

Division
- Added a few new functions for division:
    - `math:divide/int`
    - `math:divide/score`
- These both take two input parameters: `$(score)` and `$(div)`. These functions round `$(score)` to the nearest multiple of `$(div)` AND THEN divide it by `$(div)`. For `math:divide/int`, `$(div)` should be an integer, and for `math:divide/score`, `$(div)` should be a scoreboard objective.
- You'll notice that these are basically the same as the now-deprecated `math:round` function. This module is meant to be a replacement for `math:round`, more clearly focused on division instead of just rounding.

Fetch Functions
- The `ss_lib:fetch/health` function now ALWAYS rounds up, to match the visual display of health.
- Various optimizations have been made to most Fetch functions. These will almost certainly have no noticeable impact on performance, but they are technically slightly more efficient now.