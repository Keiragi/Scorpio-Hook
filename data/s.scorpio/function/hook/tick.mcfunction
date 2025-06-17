## アイテムエンティティを元に実行

# 演出
  execute on origin run particle firework ~ ~0.35 ~ 0 0 0 0 1 force @s

# leap処理

## 削除処理
  # 空中にいなければカウント
    execute unless predicate s.scorpio:alive run scoreboard players add @s S.Scorpio_Timer 1
    execute if predicate s.scorpio:alive run scoreboard players reset @s S.Scorpio_Timer

  # 1.5秒経過で削除
    execute unless score @s S.Scorpio_Timer matches 30.. run return 0
    particle minecraft:item{item:nether_star} ~ ~0.35 ~ 0 0 0 0.1 10
    playsound minecraft:block.glass.break player @a[distance=..8] ~ ~ ~ 0.1 2
    kill @s
