RAYCAST MODULE GUIDE

Overview
- Parameters: all raycasts take a certain group of base macro parameters. These are: $increment_distance, $max_lifetime, $particle, and $run_on_success.
    - $increment_distance is the distance by which the raycast should move forward for each check.
        - I find that 0.25 blocks is often good for me, so I usually have this set to "0.25".
    - $max_lifetime is how many times the raycast should recur before terminating in a failure. Essentially, how many times it should step forward before aborting automatically.
        - Raycasts don't travel forever, and the module is designed so that they cannot travel forever.
        - The maximum travel distance can be calculated by $max_lifetime * $increment_distance.
            - For example, a $max_lifetime of 100 and $increment_distance of 0.25 would travel for 25 blocks before terminating.
    - $particle is used as a general function to run at the ray's position, every time it "steps" forward. It's named particle because this is usually used to display particles showing where the ray is traveling.
        - If you want no particles displayed, it still needs a parameter, so I usually just enter "execute unless entity @s". This fails harmlessly and doesn't display anything.
        - You'll notice the $particle macro should just be a full command. This means that if you have custom particles in another function, you can run that function, instead of only being able to use vanilla particles.
    - $run_on_success is the command to execute when/if the raycast succeeds, and hits the targeted block/entity.

- Functions: There are three variations of the raycast function: One which checks for blocks, one for entities, and one for either.
    - They're pretty self explanatory as for what they do, but a few things should be noted:
        - By default, they simply check for ANY entity or ANY solid block. All three functions also have a "specific" variation that lets you specify what entity or block to search for.
        - ALL DEFAULT FUNCTIONS WILL TERMINATE IF THEY HIT A SOLID BLOCK. This can be avoided by using the "specific" variations.
    - either.mcfunction DOES NOT have the $run_on_success parameter.
        - Instead, it has $run_on_entity_success and $run_on_block_success. These are commands that are run if the ray detects the targeted entity or block.

- "Specific" Functions: All "specific" functions take the additional input $solid_block_collision, which should be either "true" or "false". This enables or prevents the raycast from terminating if it hits a solid block.
    - block_specific.mcfunction takes the additional input $block, which is any block or block tag.
    - entity_specific.mcfunction takes the additional input $entity, which is any entity or entity tag.
    - either_specific.mcfunction takes additional inputs for both $block and $entity, and like its default version, DOES NOT have the $run_on_success parameter, and instead has $run_on_block_success and $run_on_entity_success.
        - either_specific.mcfunction also takes the parameter $condition, which is either "if" or "unless".
            - This is used for block detection, because the traditional unless character ("!") can't be used for block tags. !#example:block_tag throws an error, so instead, $condition can be set to "unless" to simulate the same thing.