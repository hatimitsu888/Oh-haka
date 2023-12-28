#パーティクルと音
function oh_haka:break_grave/break/particle

#同じidの頭を取得
scoreboard players operation $ohh-id-tmp ohh-id-0 = @s ohh-id-0
scoreboard players operation $ohh-id-tmp ohh-id-1 = @s ohh-id-1
scoreboard players operation $ohh-id-tmp ohh-id-2 = @s ohh-id-2
scoreboard players operation $ohh-id-tmp ohh-id-3 = @s ohh-id-3
execute as @e[tag=ohh-grave-head] if score @s ohh-id-0 = $ohh-id-tmp ohh-id-0 if score @s ohh-id-1 = $ohh-id-tmp ohh-id-1 if score @s ohh-id-2 = $ohh-id-tmp ohh-id-2 if score @s ohh-id-3 = $ohh-id-tmp ohh-id-3 run tag @s add ohh-this-head

#アイテムをドロップ
execute as @e[tag=ohh-this-head] if data entity @s item.tag.Inventory[-1] run function oh_haka:break_grave/break/drop_item
#経験値をドロップ
execute as @e[tag=ohh-this-head] run function oh_haka:break_grave/break/drop_xp

#頭のタグを削除
tag @e[tag=ohh-this-head] remove ohh-this-head

#同じidのお墓を削除
execute as @e[tag=ohh-grave] if score @s ohh-id-0 = $ohh-id-tmp ohh-id-0 if score @s ohh-id-1 = $ohh-id-tmp ohh-id-1 if score @s ohh-id-2 = $ohh-id-tmp ohh-id-2 if score @s ohh-id-3 = $ohh-id-tmp ohh-id-3 run kill @s
