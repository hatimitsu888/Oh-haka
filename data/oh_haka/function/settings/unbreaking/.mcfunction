#切替
function oh_haka:settings/unbreaking/toggle
#設定変更
tag @s add this-player
execute as @e[tag=ohh-grave-click] if score @s ohh-player-id = @p[tag=this-player] ohh-player-id run scoreboard players operation @s ohh-unbreaking = @p[tag=this-player] ohh-unbreaking
tag @s remove this-player
