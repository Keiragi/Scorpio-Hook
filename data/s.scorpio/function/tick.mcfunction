## 常時実行

# interactionを削除
  kill @e[type=interaction,tag=S.Scorpio]

# interaction生成
  execute as @a if items entity @s weapon.mainhand nether_star[minecraft:custom_data={S.Data:{ItemID:"Hook"}}] at @s anchored eyes positioned ^ ^ ^ run summon interaction ~ ~-0.36 ~ {Tags:["S.Scorpio"],height:1,width:0.5}

# Hook演出
  execute as @e[type=item,tag=S.Scorpio] at @s on origin run particle firework ~ ~ ~ 0 0 0 0 1 force @s
  scoreboard players add @e[type=item,tag=S.Scorpio,nbt={OnGround:1b}] S.Scorpio_Timer 1
  scoreboard players reset @e[type=item,tag=S.Scorpio,nbt={OnGround:0b}] S.Scorpio_Timer
  kill @e[type=item,tag=S.Scorpio,scores={S.Scorpio_Timer=30}]
