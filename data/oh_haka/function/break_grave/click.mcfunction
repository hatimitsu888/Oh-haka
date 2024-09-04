#パーティクルと音
function oh_haka:break_grave/particle

#カウントを増やす
scoreboard players add @s ohh-click-cnt 1

#頭を動かす
function oh_haka:break_grave/head_pos

#壊れる
execute if score @s ohh-click-cnt matches 5.. run function oh_haka:break_grave/break/

#クリック検知をリセット
data remove entity @s attack
data remove entity @s interaction
