data remove storage silver_star_library installed

function ss_lib:install

execute unless data storage silver_star_library installed run tellraw @a [{"text":"Silver Star: Echoes requires "},{"text":"Silver Star Library","underlined":true,"color":blue,"click_event":{"action":"open_url","url":"https://modrinth.com/datapack/silver-star-library/versions"}},{"text":" to be installed in order to function properly."}]

execute unless data storage silver_star_library installed run schedule function ssa.dev:dependencies 10s