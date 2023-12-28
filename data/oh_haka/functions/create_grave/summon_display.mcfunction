#下層部の丸石
summon block_display ~ ~ ~ {Tags:["ohh-grave","ohh-summon"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.4f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:cobblestone_slab",Properties:{type:"bottom"}}}
#上の土
summon block_display ~ ~ ~ {Tags:["ohh-grave","ohh-summon"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.3f,-0.4f],scale:[0.8f,0.5f,0.8f]},block_state:{Name:"minecraft:coarse_dirt"}}
#プレイヤーの頭
summon item_display ~ ~ ~ {Tags:["ohh-grave","ohh-grave-head","ohh-summon"],transformation:{left_rotation:{axis:[1f, 0f, 0f],angle:0.5236f},right_rotation:[0f,0f,0f,1f],translation:[0f,0.45f,0.2f],scale:[1f,1f,1f]},item:{id:"minecraft:player_head",Count:1b}}
#プレイヤーの名前
summon text_display ~ ~ ~ {Tags:["ohh-grave","ohh-grave-text","ohh-summon"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]}, text:'',shadow:0b,billboard:"vertical"}
#当たり判定
summon interaction ~ ~ ~ {Tags:["ohh-grave","ohh-grave-click","ohh-summon"],width:1f,height:0.5f}

#頭を死亡したプレイヤーに
loot spawn ~ ~ ~ loot oh_haka:player_head
data modify entity @e[distance=..1, tag=ohh-summon, tag=ohh-grave-head, limit=1] item.tag.SkullOwner set from entity @e[predicate=oh_haka:dropped_player_head, distance=..1, limit=1] Item.tag.SkullOwner
kill @e[predicate=oh_haka:dropped_player_head, distance=..1]

#プレイヤーを指定
tag @s add ohh-this-player
#お墓の名前
data modify entity @e[distance=..1, tag=ohh-summon, tag=ohh-grave-text, limit=1] text set value '[{"selector":"@p[tag=ohh-this-player]"},{"text":"のお墓"}]'
#タグ削除
tag @s remove ohh-this-player

#破壊可能かの設定
scoreboard players operation @e[tag=ohh-summon, tag=ohh-grave-click] ohh-unbreaking = @s ohh-unbreaking

#idを付与
function oh_haka:create_grave/id
#クリック回数を付与
scoreboard players set @e[tag=ohh-grave-click, tag=ohh-summon] ohh-click-cnt 0
