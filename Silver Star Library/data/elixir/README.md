# Elixir Framework

Elixir is a module that sets up the framework necessary for fully custom potion effects, including stacking applications, which is difficult to do with just scores. The Elixir Framework lets you apply an effect at any time, and intelligently orders the active applications so that they match vanilla potion effects, e.g., the application with the highest amplifier is the one that's prioritized.

## Setup

Elixir is written in a way so that it can be easily accessed and used by other datapacks, without having to write anything in the Silver Star Library itself. In order to add your own custom potion effect, you need to create two functions:
1) The function that is run on entities which have the custom effect active
2) The function that is run when an application expires

For example, one of the preset effects, or "statuses" for clarity, is called Lightweight. The active function applies attributes that reduce gravity and knockback resistance, and the expire function removes these attributes.

YOU WILL ALSO NEED TO RUN TWO PREMADE FUNCTIONS: `elixir:custom/load_status` and `elixir:custom/tick_status`. As the names indicate, `load_status` only needs to be run once, and it creates all the scores necessary to run your custom effect, and `tick_status` MUST be run on every tick (or the status timer will be inaccurate).

`elixir:custom/load_status` takes two input parameters: `source` and `status`. `source` should be the name of YOUR datapack, or a nickname, anything that will identify where the status is defined. For example, the premade statuses use `elixir` as the input for `source`. `status`, on the other hand, should be the name of the effect itself; for example, `lightweight` or `frostbite` or whatever.

The scores added are `$(source).$(status).duration`, `$(source).$(status).amplifier`, and `$(source).$(status).stored_amplifier`. You probably won't ever need to reference these yourself.

IMPORTANT: Both of these input parameters must have valid characters for the purpose of creating scoreboard objectives. Essentially, no spaces, and no custom characters that you couldn't have in the name of another scoreboard objective.

## Tick

`elixir:custom/tick_status` takes four input parameters: `source`, `status`, `status_function`, and `expire_function`. `source` and `status` are used identically to how they're used in `elixir:custom/load_status`.
`status_function` is the name of the function that contains the actual effects of your custom potion effect. For example, the premade status "lightweight" uses `elixir:status/lightweight/main` for its status function. The status function will be run on every tick for every entity that has an active application of your status.

`expire_function` is the name of the function that will be run whenever an application expires, INCLUDING when a higher-amplifier application expires and is replaced by a lower-amplifier application. This should include any code that is run, well, whenever an application expires.

And this is all you have to do! Create your status and expire functions for each custom potion effect you want to create, run `elixir:custom/load_status` on load and `elixir:custom/tick_status` on every tick, and your potion effect is up and running.