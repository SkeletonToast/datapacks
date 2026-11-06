scoreboard players set @s Characters 7
function crowskeep:charactertagreset

$tag @s add chr_$(chr1)
scoreboard players remove @s[tag=chr_NULL] Characters 1
$tag @s remove chr_$(chr1)

$tag @s add chr_$(chr2)
scoreboard players remove @s[tag=chr_NULL] Characters 1
$tag @s remove chr_$(chr2)

$tag @s add chr_$(chr3)
scoreboard players remove @s[tag=chr_NULL] Characters 1
$tag @s remove chr_$(chr3)

$tag @s add chr_$(chr4)
scoreboard players remove @s[tag=chr_NULL] Characters 1
$tag @s remove chr_$(chr4)

$tag @s add chr_$(chr5)
scoreboard players remove @s[tag=chr_NULL] Characters 1
$tag @s remove chr_$(chr5)

$tag @s add chr_$(chr6)
scoreboard players remove @s[tag=chr_NULL] Characters 1
$tag @s remove chr_$(chr6)

$tag @s add chr_$(chr7)
scoreboard players remove @s[tag=chr_NULL] Characters 1
$tag @s remove chr_$(chr7)

$tag @s[scores={Character=1}] add chr_$(chr1)
$tag @s[scores={Character=2}] add chr_$(chr2)
$tag @s[scores={Character=3}] add chr_$(chr3)
$tag @s[scores={Character=4}] add chr_$(chr4)
$tag @s[scores={Character=5}] add chr_$(chr5)
$tag @s[scores={Character=6}] add chr_$(chr6)
$tag @s[scores={Character=7}] add chr_$(chr7)