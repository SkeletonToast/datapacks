scoreboard objectives add parsetest dummy
scoreboard objectives add parsetest_recursions dummy
scoreboard objectives add parsetest_digits dummy
scoreboard objectives add parsetest_append_position dummy
scoreboard objectives add parsetest_prepend_position dummy

scoreboard players set @s parsetest 12345
say parsing the testing
function parse:score {"function":"parse:parsetest","score":"parsetest",prepend:"+",append:"-",prepend_position:5,append_position:5}
say parsing the testing 2
function parse:score {"function":"parse:parsetest","score":"parsetest",prepend:"+",append:"-",prepend_position:4,append_position:2}
say parsing the testing 3
function parse:score {"function":"parse:parsetest","score":"parsetest",prepend:"+",append:"-",prepend_position:3,append_position:4}
say parsing the testing 4
function parse:score {"function":"parse:parsetest","score":"parsetest",prepend:"+",append:"-",prepend_position:2,append_position:0}
say parsing the testing 5
function parse:score {"function":"parse:parsetest","score":"parsetest",prepend:"+",append:"-",prepend_position:1,append_position:3}
say parsing the testing 6
function parse:score {"function":"parse:parsetest","score":"parsetest",prepend:"+",append:"-",prepend_position:0,append_position:1}
say parsing the testing 6
function parse:score {"function":"parse:parsetest","score":"parsetest",prepend:"",append:".",prepend_position:0,append_position:2}
function parse:score {"function":"parse:parsetest","score":"parsetest",prepend:".",append:"",prepend_position:2,append_position:2}

scoreboard players operation @s parsetest_recursions = @s parse_score_recursions
scoreboard players operation @s parsetest_digits = @s parse_score_digits
scoreboard players operation @s parsetest_append_position = @s parse_score_append_position
scoreboard players operation @s parsetest_prepend_position = @s parse_score_prepend_position