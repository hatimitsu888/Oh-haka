#破壊可能
execute if score @s ohh-unbreaking matches 1 run function oh_haka:break_grave/click
execute if score @s ohh-unbreaking matches 2 if score @s ohh-unbreaking = $ohh-player-id-tmp ohh-tmp run function oh_haka:break_grave/click

#破壊不可
execute if score @s ohh-unbreaking matches 2 unless score @s ohh-unbreaking = $ohh-player-id-tmp ohh-tmp run function oh_haka:break_grave/unbreaking
