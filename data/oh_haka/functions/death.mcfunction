# お墓を作る
execute at @s run function oh_haka:create_grave/

# ドロップしたアイテムと経験値を消去
execute at @s as @e[distance=..4,predicate=oh_haka:dropped_item] run kill @s
execute at @s as @e[distance=..4,predicate=oh_haka:dropped_xp] run kill @s

# リセット
scoreboard players reset @s ohh-death
advancement revoke @s only oh_haka:death