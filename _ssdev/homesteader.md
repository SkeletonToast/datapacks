# "Homesteader" / "Petrichor"(?)

Character switching
- would let you have up to X characters (maybe like 3 by default?) and switch between them
- would be customizable in regards to whether your inventory switched, whether their location was stored, etc.
- this would be pretty straightforward to incorporate into Echoes with the vestiges

Familiars module (pet rework)
- pet data is stored when you tame them/modify them, and when they die, they're actually just despawned and stored in SSID data
- when the player respawns, their Familiars are respawned with them
- you can only have a certain amount of Familiars
- mounts wouldn't move around so much if they weren't currently mounted
- add an item that lets you target a specific entity for your pets to attack
    - this item would probably also let you de-aggro your pets
    - this could be a staff!

Various cosmetic immersion things
- at-will height changing!
    - probably still with some drawback, or just capped at +/- 10% or whatever
- maybe move wetness to be here
- new clothing cosmetics
    - flower crowns teehee
        - have variants for specific flowers / colors, and then like just a "wildflower" variant for mixed flowers
    - hats! like hayden daytona was doing
        - end rod hat
        - glass block hat
    - few new armor trims?
- weapon trims!
    - unlike maybe other packs, adding a weapon trim wouldn't change the way the weapon itself looks; it would change the actual shape / texture.
    - this could be a fun way to add new textures that aren't that different from base game textures, for weapons and tools.
- cute little sprites that add cosmetic particles in the area! like ember sprites but for more things

Settlement establishment?
- idk what this would do?
- maybe just designate an area as protected
    - the founder would be allowed to designate specific people as allies
- potentially just a sanctuary system? and this would let you intentionally designate sanctuaries
- this all already exists with plugins though. do something unique with it

Portal stones?
- you could use portal stones to "open rifts"
- set your frequency to whatever you want, and then crouch with the stone in your main/offhand to interact with rifts
- mainhand would be teleporter, offhand would be teleportee
    - you would have to first confirm that the player you want was teleporting to you, before letting them teleport
- could be a good vanilla-ish solution to the whole player teleporting situation
    - you could also use it to set a home rift!
- it would have to cost XP or something though.

Portal stones (alternatively)
- alternatively! maybe you could just open a rift and set a specific passcode/passkey item?
- players would have to hold that item or enter that passcode to be allowed to teleport to your rift
- it could also be a lodestone compass type situation, where you have a blank portal stone that you can connect to an existing rift

Natural events?
- bring back ash rain! but make it easier to deal with
- heavy wind? idk what this would do but i wrote it down so
- sandstorms?
    - heavily slows you in deserts, causes reduced vision, maybe moves you a certain direction?
    - you could even just add slowness / air drag based on on the player's rotation direction lol
- storms at sea?
- eclipses / deep nights
- moon phase effects!!

Starlight lanterns?
- would be a way to passively gather xp that was very easy to set up and use
- how would they be crafted?

Move over campfire system
- add scouring stones
- make kindling objects data driven
    - "type": acts as id, determines what function to run
        - alternatively just "function", then run kindling with your offhand storage, and reference the function from there
    - "consume": integer, determines how many should be taken up when you kindle
        - would probably really only be 1 or 0 but that's fine. maybe you would have to use more ingots to smith stronger weapons or something
- move weaponsmithing back to campfires
    - the new armory system is basically done, so it should be pretty easy
    - just figure out how to make the ingots again
        - the old recipes were honestly pretty good, they shouldn't be anything crazy expensive. These are just new weapons, not necessarily stronger weapons. they should be just as viable as vanilla weapons
- maybe add a few regalia weapons?
    - knightkneeler could be a sword made of two netherite ingots
    - dissonant dagger, maybe made from echo shards

SCOURING STONES!!!
- IF!!! scouring stones are added, honestly maybe just move the whole campfires system over here?
- echoes and armory could just interact with it on their end, and campfires would just be set up in homesteader
- if you do this, make sure to have a light_campfires_when_placed gamerule

Few more basic crafting recipes
- few new food items maybe?
    - coffee equivalent
        - potions are data driven now so you could even make it a potion recipe directly!
    - gilded apples (1 step below regular golden)
        - maybe don't give you any absorption, they just regenerate some health?
    - salt?
        - when bottling water in an ocean biome, clear 1 water bottle and give a bottle of salt water.
        - it can be brewed as-is (or maybe put on a campfire?) to give salt.

Maybe a few basic talismans?
- block interaction range up
- more Familiar slots
- faster Familiar healing?

Armor set bonuses?
- probably not lowk, kind of gets in the way of the intentional armor setups that Echoes has
    - although that's what the gamerule is for! honestly yeah probably still have it exist, just disable it for echoes
- 

Add back in the automatic replanting thing that you had for Fawns in crow's keep
- either as an always-enabled feature, or maybe a talisman or something

Maybe move morning and nightfall titles / timestops over to homesteader
- have fun different titles you can optionally sort thru for titlecard themes
BUT!!!
- figure out where Homesteader ends and Echoes begins. homesteader should just be overall friendly changes. Echoes is where you can make evil aggressive changes, or maybe just add systems that interact with homesteader differently than in "vanilla" homesteader.
- Homesteader should only add BENEFITS. Echoes will add drawbacks and penalties, such as encumbrance.
- this means probably don't do anything that changes health, because Echoes already interacts so heavily with health.
    - except maybe staggering? something that could just be easily disabled by Echoes

Dig up deathcoords function, move to homesteader

## Homesteader gamerules
- light_campfires_when_placed
    - default: yes?
- do_natural_events
    - default: yes
- do_armor_set_bonuses
    - default: yes
- allow_height_modification
    - default: yes
- share_location_between_characters
    - default: yes
- share_inventory_between_characters
    - default: no
- starlight_lantern_rate
    - default: 200
        - the duration, in ticks, that it takes for a single xp point to be collected in the starlight lantern
- character_limit
    - default: 3
        - this makes more sense to be a global gamerule, as opposed to being a per-player modifiable value
        - although we might want it to be a per-player situation for echoes