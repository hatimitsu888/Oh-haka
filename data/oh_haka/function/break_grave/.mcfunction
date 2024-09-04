#クリックしたプレイヤーを指定
tag @s add this-player
#クリックしたプレイヤーのidを取得
scoreboard players operation $ohh-player-id-tmp ohh-tmp = @s ohh-player-id

#クリックされたインタラクションを取得
execute as @e[tag=ohh-grave-click, predicate=oh_haka:clicked_interaction] at @s run function oh_haka:break_grave/check

#リセット
scoreboard players reset $ohh-player-id-tmp ohh-tmp
tag @s remove this-player

#進捗剥奪
advancement revoke @s only oh_haka:click_grave