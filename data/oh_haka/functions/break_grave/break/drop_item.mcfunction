#ベースアイテムをドロップ
loot spawn ~ ~ ~ loot oh_haka:drop_item_base

#アイテムをすり替え
data modify entity @e[predicate=oh_haka:dropped_base_item, limit=1, distance=..1] Item set from entity @s item.tag.Inventory[-1]

#ベースアイテムのフラグを削除
data remove entity @e[predicate=oh_haka:dropped_base_item, limit=1, distance=..1] Item.tag.item_drop_base

#タグ内のアイテムを消去
data remove entity @s item.tag.Inventory[-1]

#タグ内のアイテム部分が無くなるまで再帰
execute if data entity @s item.tag.Inventory[-1] run function oh_haka:break_grave/break/drop_item
