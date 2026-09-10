$scoreboard players add @a[scores={$(source).$(status).runtime=1..}] $(source).$(status).runtime 1
$execute as @a[scores={$(source).$(status).runtime=1..}] run function $(status_function)