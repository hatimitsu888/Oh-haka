#クリックされたインタラクションを取得
execute as @e[tag=ohh-grave-click, predicate=oh_haka:clicked_interaction] at @s run function oh_haka:break_grave/click

#進捗剥奪
advancement revoke @s only oh_haka:click_grave