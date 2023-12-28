# 経験値のドロップ数はxp * 7
# ※最大で100
scoreboard players set $ohh-xp-7 ohh-tmp 7
execute store result score $ohh-xp-tmp ohh-tmp run data get entity @s XpLevel

#レベル*7
scoreboard players operation $ohh-xp-tmp ohh-tmp *= $ohh-xp-7 ohh-tmp

#100以上だったら
execute if score $ohh-xp-tmp ohh-tmp matches 101.. run scoreboard players set $ohh-xp-tmp ohh-tmp 100

#プレイヤーの頭にxpを設定
execute as @e[tag=ohh-grave-head, tag=ohh-summon] store result entity @s item.tag.Xp int 1 run scoreboard players get $ohh-xp-tmp ohh-tmp
