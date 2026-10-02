function elixir:_load

scoreboard objectives add ssl.permissions_level dummy
    # These permissions are not used in any SSLib functions by default.
        # They exist mainly just because I personally wanted them, but feel free to use them as well if you want.
        # If you don't want to use them, then just ignore them. This system doesn't affect literally anything unless you specifically tell it to.
            # PLEASE NOTE: If Silver Star: Echoes is installed (which may or may not be released by the time you're reading this): most gamerules in Echoes can be changed by anybody with a permissions level of 4 or higher.
    # Guidelines are below for each permission level.
    # !!! KEEP IN MIND:
        # Any player who has op status, and can freely execute commands, can change their and others' permission levels.
        # This system is designed EXCLUSIVELY for use by non-operator players, to allow regular members limited permissions.
        # No permissions level should enable a player to do something an operator could not do.
# Level 0 - timeouted / no permissions
    # Assign this if you want to specifically deny permissions from a player.
    # It should be assumed that players with a permissions level of 0 or lower have been intentionally punished for something.
# Level 1 - all members (public server)
    # This level is automatically assigned to all players when they join this world/server for the first time.
        # This is the only situation where permissions level is automatically set. Silver Star Library does not touch it ever again, after it's assigned for the first time.
    # Any permissions that you want to give ALL players (who have not been specifically punished) should be assigned to this permissions level.
# Level 2 - all members (private server) or trusted/verified members (public server)
    # In private settings, this permissions level might be given to all players as a baseline, since you likely know and trust most world members.
    # In public settings, consider only giving this permissions level to players who you have a baseline level of trust for.
        # This might mean they are verified to be real users (as in, not bots or griefers), or maybe you just like them. Use it however you want.
# Level 3 - especially trustworthy members / junior moderators
    # This permission should probably only be given to individuals who you know and trust.
    # It isn't typically used to enable full moderation, but you might use it to, for example, give players the ability to freely teleport home, or give them special potion effects, or whatever.
    # This is kind of a filler permissions level, just here in case you want something above a general member, but below a moderator.
# Level 4 - moderators
    # This permission level can be given to members who are trusted enough to have moderator capabilities, though not necessarily trusted enough to be operators (i.e. have full command execution permissions).
    # You might consider use it to allow players to change custom gamerules (which is mainly what I use it for), or maybe give certain players extra health, or immunity to certain mechanics, or whatever.
# Level 99 - operators
    # This permission level should ONLY be given to players who are also operators.
    # This is mostly a formality, since operators can already do whatever they want, but it still has some niche uses.
    # Consider using this for any functions that should require operator permissions, but aren't easily triggerable by commands. Maybe you use it to only allow certain players into the operator lounge, or whatever. Maybe you want to run special commands on all operator-level players.
    # Just treat this as a level indicating the player is an operator.

scoreboard objectives add -1 dummy
scoreboard objectives add 2 dummy
scoreboard objectives add 3 dummy
scoreboard objectives add 5 dummy
scoreboard objectives add 7 dummy
scoreboard objectives add 10 dummy

scoreboard objectives add generic_a dummy
scoreboard objectives add generic_b dummy
scoreboard objectives add generic_c dummy
scoreboard objectives add generic_d dummy
scoreboard objectives add generic_e dummy
scoreboard objectives add generic_f dummy
scoreboard objectives add generic_g dummy
scoreboard objectives add generic_h dummy
scoreboard objectives add generic_i dummy
scoreboard objectives add generic_j dummy
scoreboard objectives add generic_k dummy
scoreboard objectives add generic_l dummy
scoreboard objectives add generic_m dummy
scoreboard objectives add generic_n dummy
scoreboard objectives add generic_o dummy
scoreboard objectives add generic_p dummy
scoreboard objectives add generic_q dummy
scoreboard objectives add generic_r dummy
scoreboard objectives add generic_s dummy
scoreboard objectives add generic_t dummy
scoreboard objectives add generic_u dummy
scoreboard objectives add generic_v dummy
scoreboard objectives add generic_w dummy
scoreboard objectives add generic_x dummy
scoreboard objectives add generic_y dummy
scoreboard objectives add generic_z dummy

scoreboard objectives add generic_max dummy
scoreboard objectives add generic_min dummy

scoreboard objectives add true dummy
scoreboard objectives add value dummy

scoreboard objectives add Age dummy

scoreboard objectives add parse_score_recursions dummy
scoreboard objectives add parse_score_digits dummy
scoreboard objectives add parse_score_append_position dummy
scoreboard objectives add parse_score_prepend_position dummy
scoreboard objectives add parse_score_input dummy

scoreboard objectives add digit_counter dummy

# health / food
scoreboard objectives add Health dummy
scoreboard objectives add Absorption dummy
scoreboard objectives add TotalHealth health
scoreboard objectives add BaseMaxHealth dummy

scoreboard objectives add Food food

# combat
    # damage
    scoreboard objectives add DamageDealt minecraft.custom:minecraft.damage_dealt
    scoreboard objectives add DamageDealtAbsorbed minecraft.custom:minecraft.damage_dealt_absorbed
    scoreboard objectives add DamageDealtResisted minecraft.custom:minecraft.damage_dealt_resisted

    scoreboard objectives add DamageTaken minecraft.custom:minecraft.damage_taken
    scoreboard objectives add DamageAbsorbed minecraft.custom:minecraft.damage_absorbed
    scoreboard objectives add DamageResisted minecraft.custom:minecraft.damage_resisted

    # attributes
    scoreboard objectives add AttackDamage dummy
    scoreboard objectives add AttackSpeed dummy
    scoreboard objectives add ssl.fetch.attack_damage.scale dummy
    scoreboard objectives add ssl.fetch.attack_speed.scale dummy
    # PLEASE NOTE!!!! NONE of the four "attributes" values above should be manually changed.
    # The fetch functions assue that they have not changed since they were last fetched, so if you change them, fetch will likely give you incorrect values if it's called later in the tick.

    scoreboard objectives add Armor armor
    scoreboard objectives add ArmorToughness dummy

    # gear values
    scoreboard objectives add WeaponType dummy
    scoreboard objectives add WeaponWeight dummy
    scoreboard objectives add WeaponMaterial dummy

    scoreboard objectives add ArmorType dummy
    scoreboard objectives add ArmorWeight dummy
    scoreboard objectives add HelmetType dummy
    scoreboard objectives add ChestplateType dummy
    scoreboard objectives add LeggingsType dummy
    scoreboard objectives add BootsType dummy

    scoreboard objectives add UsingBow dummy
    scoreboard objectives add UsingShield dummy

    # general scores
    scoreboard objectives add ItemSelected dummy
    scoreboard objectives add ItemOffhand dummy

    scoreboard objectives add Armorless dummy

scoreboard objectives add GameTime dummy
    # This value should NEVER be changed. If you need to reference this value, but modified, use SoftGameTime.
scoreboard objectives add SoftGameTime dummy

# rest and respawn
scoreboard objectives add TimeSinceDeath minecraft.custom:minecraft.time_since_death
scoreboard objectives add TimeSinceRest minecraft.custom:minecraft.time_since_rest
scoreboard objectives add RestOrRespawn dummy
    # The three scores above should NEVER be modified. Use the "soft" scores below for situations where you need to reference this value, but modified.
scoreboard objectives add SoftTimeSinceDeath dummy
scoreboard objectives add SoftTimeSinceRest dummy
scoreboard objectives add SoftRestOrRespawn dummy
    # As an example: if you have a function that you want to run whenever the player rests or respawns, but you want it to be able to be manually triggered, you could use SoftRestOrRespawn instead of RestOrRespawn.
    # This means that, if you want to treat a player like they just rested or respawned without actually killing them, you can just set SoftRestOrRespawn to 0, and the function will still trigger.
    # Conversely, if you have a function you only want to run when the player legitimately rested or respawned, you would use RestOrRespawn, since you do NOT want to account for manual score changes.

scoreboard objectives add SleepingTime dummy
    # This tracks the amount of time a player has been in a bed. It's set to zero whenever a player has any TimeSinceRest value above 0.

scoreboard objectives add SneakTime minecraft.custom:sneak_time
    # This is automatically set, but be aware, it doesn't track sneaking perfectly accurately.
    # If you just want to test when the player is inputting the sneak key, it's recommended you use the predicate ss_lib:input/sneak.
scoreboard objectives add SprintTime dummy
    # SprintTime is set via a fetch function. This fetch function is automatically run once every tick, so it's
    # less memory-intensive to reference the SprintTime score instead of the ss_lib:is/sprinting predicate.

scoreboard objectives add PlayerKilled playerKillCount
    # This is reset at the end of each tick, so it should only be used for testing if a player has killed another player.
    # This means it is NOT a good metric for tracking total player kills.

scoreboard objectives add FallFlying dummy

scoreboard objectives add Fire dummy

scoreboard objectives add InWater dummy

scoreboard objectives add Dimension dummy
scoreboard objectives add OnGround dummy

scoreboard objectives add xcoord dummy
scoreboard objectives add ycoord dummy
scoreboard objectives add zcoord dummy

# scoreboard objectives add wayfinderd dummy
# scoreboard objectives add wayfindertimer dummy

scoreboard objectives add deathx dummy
scoreboard objectives add deathy dummy
scoreboard objectives add deathz dummy

scoreboard objectives add ss_lib.bitpack.verify dummy

scoreboard objectives add pause_actionbars dummy
    # This score should be referenced when creating an actionbar title. check to see if this timer is at 0, and then set to however long you want your timer to take priority.
        # This score also ticks into the negatives, so it can be used to create a title a specified amount of time after all other actionbar titles have disappeared.
    # The ss_lib:actionbar function can also be used, and should be used if you want to integrate everything together.
        # This function checks if there are any current actionbars, and also assigns a duration score for whatever actionbar you display.
        # Right now, there's not really a way to queue actionbars, though this is in the works. It's recommended that you just queue actionbars on your end.

scoreboard objectives add raycast_lifetime dummy

function ss_lib:whitelist {"player":"fcae9d64-e670-4e69-ab8f-bef0e9d7da12"}

scoreboard objectives add run_recursions dummy

scoreboard objectives add ssid dummy

function run:recur_macro {function:"ss_lib:set_constants",r:100}
function run:recur_macro {function:"ss_lib:set_constants_negative",r:100}
scoreboard players set #const.MAX value 2147483647
scoreboard players set #const.MIN value -2147483647

# scheduled functions
schedule function ss_lib:scheduled/10t 10t
schedule function ss_lib:scheduled/20t 20t
schedule function ss_lib:scheduled/40t 40t
schedule function ss_lib:scheduled/10s 10s

execute as @a[scores={ssid=528}] run function ss_lib:load_message {namespace:"ֆɨʟʋɛʀ ֆȶǟʀ",datapack:"Library"}

function ssid:reserve {player:"fcae9d64-e670-4e69-ab8f-bef0e9d7da12",ssid:528}
function ssid:reserve {player:"de8875da-62be-4585-9d98-585f491df0e7",ssid:183}
    # i love you