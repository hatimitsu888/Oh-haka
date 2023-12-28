#ディスプレイ達を召喚
function oh_haka:create_grave/summon_display
#ドロップしたxpを設定
function oh_haka:create_grave/xp
#ドロップしたアイテムを保存
execute as @e[distance=..4,predicate=oh_haka:dropped_item] run data modify entity @e[tag=ohh-grave-head, tag=ohh-summon, limit=1] item.tag.Inventory append from entity @s Item

#タグ削除
tag @e[tag=ohh-summon] remove ohh-summon
