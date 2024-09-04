#設定が変更された
execute if score @s ohh-setting-items matches 1 run function oh_haka:settings/unbreaking/

#設定
tellraw @s [{"text":"------- Oh haka -------"}]
execute if score @s ohh-unbreaking matches 1 run tellraw @s [{"text":"自分以外のお墓の破壊："},{"text":"[オン]","color":"green","hoverEvent":{"action":"show_text","contents":"クリックでオフにする"},"clickEvent":{"action":"run_command","value":"/trigger ohh-setting-items set 1"}}]
execute if score @s ohh-unbreaking matches 2 run tellraw @s [{"text":"自分以外のお墓の破壊："},{"text":"[オフ]","color":"red","hoverEvent":{"action":"show_text","contents":"クリックでオンにする"},"clickEvent":{"action":"run_command","value":"/trigger ohh-setting-items set 1"}}]
tellraw @s [{"text":"----------------------"}]

#トリガーリセット
scoreboard players set @s ohh-setting 0
scoreboard players enable @s ohh-setting
scoreboard players set @s ohh-setting-items 0
scoreboard players enable @s ohh-setting-items

#進捗剥奪
advancement revoke @s only oh_haka:setting
