data remove storage silver_star_library installed
data remove storage silver_star_armory installed
data remove storage silver_star_homesteader installed

function ssa.dev:install
function homesteader:install
function ss_lib:install

execute unless data storage silver_star_library installed run tellraw @a [{"text":"Silver Star Echoes requires "},{"text":"Silver Star Library","underlined":true,"color":blue,"click_event":{"action":"open_url","url":"https://modrinth.com/datapack/silver-star-library/versions"}},{"text":" to be installed in order to function properly."}]
execute unless data storage silver_star_library installed run tellraw @a [{"text":"Silver Star Echoes requires "},{"text":"Silver Star Armory","underlined":true,"color":blue,"click_event":{"action":"open_url","url":"https://modrinth.com/datapack/silver-star-armory/versions"}},{"text":" to be installed in order to function properly."}]
execute unless data storage silver_star_library installed run tellraw @a [{"text":"Silver Star Echoes requires "},{"text":"Homesteader","underlined":true,"color":blue,"click_event":{"action":"open_url","url":"https://modrinth.com/datapack/homesteader/versions"}},{"text":" to be installed in order to function properly."}]

execute unless data storage silver_star_library installed run schedule function sse.dev:dependencies 10s
execute unless data storage silver_star_armory installed run schedule function sse.dev:dependencies 10s
execute unless data storage silver_star_homesteader installed run schedule function sse.dev:dependencies 10s