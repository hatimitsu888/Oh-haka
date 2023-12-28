#同じidの頭を取得
scoreboard players operation $ohh-id-tmp ohh-id-0 = @s ohh-id-0
scoreboard players operation $ohh-id-tmp ohh-id-1 = @s ohh-id-1
scoreboard players operation $ohh-id-tmp ohh-id-2 = @s ohh-id-2
scoreboard players operation $ohh-id-tmp ohh-id-3 = @s ohh-id-3
execute as @e[tag=ohh-grave-head] if score @s ohh-id-0 = $ohh-id-tmp ohh-id-0 if score @s ohh-id-1 = $ohh-id-tmp ohh-id-1 if score @s ohh-id-2 = $ohh-id-tmp ohh-id-2 if score @s ohh-id-3 = $ohh-id-tmp ohh-id-3 run tag @s add ohh-this-head

#クリック回数によって頭を回転移動させる
execute if score @s ohh-click-cnt matches 1 as @e[tag=ohh-this-head] run data modify entity @s transformation set value {left_rotation:[0.2566f, 0.0338f, 0.1261f, 0.9577f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,0.38f,0.15f],scale:[1f,1f,1f]}
execute if score @s ohh-click-cnt matches 2 as @e[tag=ohh-this-head] run data modify entity @s transformation set value {left_rotation:[0.126f, -0.099f, -0.2391f, 0.9577f],right_rotation:[0f,0f,0f,1f],translation:[0.1f,0.32f,0.08f],scale:[1f,1f,1f]}
execute if score @s ohh-click-cnt matches 3 as @e[tag=ohh-this-head] run data modify entity @s transformation set value {left_rotation:[0.3545f, 0.1102f, 0.1044f, 0.9227f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.23f,0.2f],scale:[1f,1f,1f]}
execute if score @s ohh-click-cnt matches 4 as @e[tag=ohh-this-head] run data modify entity @s transformation set value {left_rotation:[0.2479f, -0.1295f, -0.357f, 0.8912f],right_rotation:[0f,0f,0f,1f],translation:[0.15f,0.05f,0.08f],scale:[1f,1f,1f]}

tag @e[tag=ohh-this-head] remove ohh-this-head