#プレイヤーにidをセット
scoreboard players operation @s ohh-player-id = $ohh-player-id-max ohh-player-id
#最大値に1加算
scoreboard players add $ohh-player-id-max ohh-player-id 1

#トリガーを有効に
scoreboard players enable @s ohh-setting
scoreboard players enable @s ohh-setting-items

#設定初期値
scoreboard players set @s ohh-unbreaking 1
