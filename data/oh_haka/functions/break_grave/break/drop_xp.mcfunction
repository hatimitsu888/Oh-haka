#経験値オーブをドロップ
summon experience_orb ~ ~ ~ {Tags:["ohh-xp-orb", "ohh-summon"]}

#経験値を代入
data modify entity @e[tag=ohh-xp-orb, tag=ohh-summon, limit=1, distance=..1] Value set from entity @s item.tag.Xp

#タグ削除
tag @e[tag=ohh-summon] remove ohh-summon