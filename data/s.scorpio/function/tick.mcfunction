## 常時実行

# interactionを削除
  kill @e[type=interaction,tag=S.Scorpio]

# Hook演出
  execute as @e[type=item,tag=S.Scorpio] at @s on origin run particle firework ~ ~ ~ 0 0 0 0 1 force @s
  scoreboard players add @e[type=item,tag=S.Scorpio,nbt={OnGround:1b}] S.Scorpio_Timer 1
  scoreboard players reset @e[type=item,tag=S.Scorpio,nbt={OnGround:0b}] S.Scorpio_Timer
  kill @e[type=item,tag=S.Scorpio,scores={S.Scorpio_Timer=30}]
