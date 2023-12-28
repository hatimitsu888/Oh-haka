#初期値
scoreboard players set @e[tag=ohh-grave, tag=ohh-summon] ohh-id-0 2147483647
scoreboard players set @e[tag=ohh-grave, tag=ohh-summon] ohh-id-1 2147483647
scoreboard players set @e[tag=ohh-grave, tag=ohh-summon] ohh-id-2 2147483647
scoreboard players set @e[tag=ohh-grave, tag=ohh-summon] ohh-id-3 2147483647
#同じidのお墓は消去
execute as @e[tag=ohh-grave] if score @s ohh-id-0 = $ohh-id-max ohh-id-0 if score @s ohh-id-1 = $ohh-id-max ohh-id-1 if score @s ohh-id-2 = $ohh-id-max ohh-id-2 if score @s ohh-id-3 = $ohh-id-max ohh-id-3 run kill @s
#idを付与
scoreboard players operation @e[tag=ohh-grave, tag=ohh-summon] ohh-id-0 = $ohh-id-max ohh-id-0
scoreboard players operation @e[tag=ohh-grave, tag=ohh-summon] ohh-id-1 = $ohh-id-max ohh-id-1
scoreboard players operation @e[tag=ohh-grave, tag=ohh-summon] ohh-id-2 = $ohh-id-max ohh-id-2
scoreboard players operation @e[tag=ohh-grave, tag=ohh-summon] ohh-id-3 = $ohh-id-max ohh-id-3
#id繰り上げ
scoreboard players add $ohh-id-max ohh-id-0 1
execute if score $ohh-id-max ohh-id-0 matches 2147483646 run scoreboard players add $ohh-id-max ohh-id-1 1
execute if score $ohh-id-max ohh-id-1 matches 2147483646 run scoreboard players add $ohh-id-max ohh-id-2 1
execute if score $ohh-id-max ohh-id-2 matches 2147483646 run scoreboard players add $ohh-id-max ohh-id-3 1
#idを戻す
execute if score $ohh-id-max ohh-id-0 matches 2147483646 run scoreboard players set $ohh-id-max ohh-id-0 -2147483648
execute if score $ohh-id-max ohh-id-1 matches 2147483646 run scoreboard players set $ohh-id-max ohh-id-1 -2147483648
execute if score $ohh-id-max ohh-id-2 matches 2147483646 run scoreboard players set $ohh-id-max ohh-id-2 -2147483648
execute if score $ohh-id-max ohh-id-3 matches 2147483646 run scoreboard players set $ohh-id-max ohh-id-3 -2147483648
