# say si

# calculating
scoreboard players operation @s generic_b = @s parse_score_input
scoreboard players operation @s generic_b %= @s 10
scoreboard players operation @s parse_score_input /= @s 10

scoreboard players add @s parse_score_recursions 1

# finalize - nonnegative
$execute if score @s parse_score_recursions = @s parse_score_digits \
    unless score @s parse_score_prepend_position matches -1 \
    unless score @s parse_score_append_position = @s parse_score_digits \
    as @s[tag=!parse_score_negative] \
    run function $(function) {value:"$(value)",$(macros)}
    
$execute if score @s parse_score_recursions = @s parse_score_digits \
    unless score @s parse_score_prepend_position matches -1 \
    if score @s parse_score_append_position = @s parse_score_digits \
    as @s[tag=!parse_score_negative] \
    run function $(function) {value:"$(append)$(value)",$(macros)}
    
$execute if score @s parse_score_recursions = @s parse_score_digits \
    if score @s parse_score_prepend_position matches -1 \
    unless score @s parse_score_append_position = @s parse_score_digits \
    as @s[tag=!parse_score_negative] \
    run function $(function) {value:"$(prepend)$(value)",$(macros)}
    
$execute if score @s parse_score_recursions = @s parse_score_digits \
    if score @s parse_score_prepend_position matches -1 \
    if score @s parse_score_append_position = @s parse_score_digits \
    as @s[tag=!parse_score_negative] \
    run function $(function) {value:"$(prepend)$(append)$(value)",$(macros)}

# finalize - negative
$execute if score @s parse_score_recursions = @s parse_score_digits \
    unless score @s parse_score_prepend_position matches -1 \
    unless score @s parse_score_append_position = @s parse_score_digits \
    as @s[tag=parse_score_negative] \
    run function $(function) {value:"-$(value)",$(macros)}
    
$execute if score @s parse_score_recursions = @s parse_score_digits \
    unless score @s parse_score_prepend_position matches -1 \
    if score @s parse_score_append_position = @s parse_score_digits \
    as @s[tag=parse_score_negative] \
    run function $(function) {value:"-$(append)$(value)",$(macros)}
    
$execute if score @s parse_score_recursions = @s parse_score_digits \
    if score @s parse_score_prepend_position matches -1 \
    unless score @s parse_score_append_position = @s parse_score_digits \
    as @s[tag=parse_score_negative] \
    run function $(function) {value:"$(prepend)-$(value)",$(macros)}
    
$execute if score @s parse_score_recursions = @s parse_score_digits \
    if score @s parse_score_prepend_position matches -1 \
    if score @s parse_score_append_position = @s parse_score_digits \
    as @s[tag=parse_score_negative] \
    run function $(function) {value:"$(prepend)-$(append)$(value)",$(macros)}

# recur
$execute unless score @s parse_score_recursions = @s parse_score_digits \
    unless score @s parse_score_recursions = @s parse_score_append_position \
    unless score @s parse_score_recursions = @s parse_score_prepend_position \
    run function parse:score_recur {function:"$(function)",prepend:"$(prepend)",append:"$(append)",value:"$(value)",macros:"$(macros)"}

$execute unless score @s parse_score_recursions = @s parse_score_digits \
    unless score @s parse_score_recursions = @s parse_score_append_position \
    if score @s parse_score_recursions = @s parse_score_prepend_position \
    run function parse:score_recur {function:"$(function)",prepend:"$(prepend)",append:"$(append)",value:"$(prepend)$(value)",macros:"$(macros)"}

$execute unless score @s parse_score_recursions = @s parse_score_digits \
    if score @s parse_score_recursions = @s parse_score_append_position \
    unless score @s parse_score_recursions = @s parse_score_prepend_position \
    run function parse:score_recur {function:"$(function)",prepend:"$(prepend)",append:"$(append)",value:"$(append)$(value)",macros:"$(macros)"}

$execute unless score @s parse_score_recursions = @s parse_score_digits \
    if score @s parse_score_recursions = @s parse_score_append_position \
    if score @s parse_score_recursions = @s parse_score_prepend_position \
    run function parse:score_recur {function:"$(function)",prepend:"$(prepend)",append:"$(append)",value:"$(prepend)$(append)$(value)",macros:"$(macros)"}