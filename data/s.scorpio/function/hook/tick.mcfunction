## アイテムエンティティを元に実行

# 演出
  execute on origin run particle firework ~ ~0.35 ~ 0 0 0 0 1 force @s

# leap処理
  execute positioned ~-0.6 ~-0.6 ~-0.6 if entity @e[type=!#s.scorpio:non_hookable,dx=0.2,dy=0.2,dz=0.2] at @s run function s.scorpio:leap/op

## 削除処理
  # 空中にいなければカウント
    execute unless predicate s.scorpio:alive run scoreboard players add @s S.Scorpio_Timer 1
    execute if predicate s.scorpio:alive run scoreboard players reset @s S.Scorpio_Timer

  # 1.5秒経過で削除
    execute unless score @s S.Scorpio_Timer matches 30.. run return 0
    particle minecraft:item{item:nether_star} ~ ~0.35 ~ 0 0 0 0.1 10
    playsound minecraft:block.glass.break player @a[distance=..8] ~ ~ ~ 0.1 2
    kill @s

  # y=ax+b をつくってxに最大値代入 yの最小大値がでる それが範囲内にあるか
