#死を検知
scoreboard objectives add ohh-death deathCount

#お墓のid
#同時に存在できるお墓の数は約 40億の4乗 まで
scoreboard objectives add ohh-id-0 dummy
scoreboard objectives add ohh-id-1 dummy
scoreboard objectives add ohh-id-2 dummy
scoreboard objectives add ohh-id-3 dummy
    #> 
    # idの最大値
    # @internal
        #define score_holder $ohh-id-max
    execute unless score $ohh-id-max ohh-id-0 matches -2147483648..2147483647 run scoreboard players set $ohh-id-max ohh-id-0 -2147483648
    execute unless score $ohh-id-max ohh-id-1 matches -2147483648..2147483647 run scoreboard players set $ohh-id-max ohh-id-1 -2147483648
    execute unless score $ohh-id-max ohh-id-2 matches -2147483648..2147483647 run scoreboard players set $ohh-id-max ohh-id-2 -2147483648
    execute unless score $ohh-id-max ohh-id-3 matches -2147483648..2147483647 run scoreboard players set $ohh-id-max ohh-id-3 -2147483648

#一時スコア
scoreboard objectives add ohh-tmp dummy

#お墓のクリック回数
scoreboard objectives add ohh-click-cnt dummy
