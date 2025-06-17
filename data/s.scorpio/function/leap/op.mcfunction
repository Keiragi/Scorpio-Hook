# アイテムの方向を見てMotionの実行
  execute on origin run tp @s @s
  scoreboard players set $strength hb.Motion 40000
  execute on origin rotated as @s rotated ~ -10 run function #p_motion:looking

# 演出
  execute on origin at @s run playsound minecraft:block.chest.locked player @s ~ ~ ~ 3 0.5
  kill @s
