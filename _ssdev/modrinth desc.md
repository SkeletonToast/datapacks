Silver Star Library is a development tool for datapack creators. It was originally a library I created for my own use, but its usage is not specifically catered to my own projects, and can be used across a wide variety of applications.

If you'd like an updated version of SSL for an older Minecraft version, please reach out! It is likely not too difficult for me to backport it, and I'm happy to do so, though it may take some time.

# Developers: Please note!
For many features of SSL, you will be required to invoke the `ss_lib:_pre_function` and `ss_lib:_post_function` functions. These files are designed to be run before all other functions, and after all other functions, respectively. I achieve this by having a "core" module which invokes these functions at the proper time, but do it however you like.

This datapack is offered "as-is". I make no guarantees about the robustness or legibility of included code. Updates and patches will be offered as long as I continue to work on the project.

# Features
A full breakdown is provided on my [GitHub](https://github.com/SkeletonToast/silver-star/blob/main/library/features-breakdown.md). Information on the most important modules is provided below.

*In this section, include all information from the GitHub breakdown, from SPM to action tags, EXCLUDING the run module.*

## Roadmap - Planned Changes
- Optimize and polish circle module
- Port over now-defunct statuses to Elixir
- Additional math module functions
    - In version 26.3, Mojang added more math capabilities with data storage, including square root calculation, sin/cos/tan, and a couple others. Since these functions aren't currently compatible with scoreboard objectives, additional math functions will be added to SSL that allow these calculations to be performed on scores, as well as stored data.
- Distance calculation module
    - Using the square root function added in the math module update, SSL will also be able to calculate the distance between two points by finding the hypotenuse of a "triangle" drawn between those two points. Although it's currently possible for selectors to filter by entities' distance from the executing location, there's no easy way to compute and store the exact distance itself, which is what this module aims to fix.
- Actionbar title queueing
    - Using the current actionbar system, this modification will allow actionbar titles to be "queued", meaning they're stored, and displayed as soon as the previous actionbar's duration runs out. This will allow for better use of the actionbar system.
- Collisions module
    - This module will provide functions that can be invoked at any location, to see if that location is directly colliding with a block. The current method for block detection will give a false positive if there is a block at the executing coordinates, even if that block isn't actually colliding with the specific sub-coordinates.
    - This will be used in the raycast module to allow for significantly more precise raycasting.

# Silver Star Library
This is a project I've been working on for a long time, and I've found it very helpful in my datapack projects. I hope you find it to be just as useful.