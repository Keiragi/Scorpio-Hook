## 常時実行

# interactionを削除
  kill @e[type=interaction,tag=S.Scorpio]

# interaction生成
  execute as @a if items entity @s weapon.mainhand nether_star[minecraft:custom_data={S.Data:{ItemID:"Hook"}}] at @s anchored eyes positioned ^ ^ ^ run summon interaction ~ ~-0.36 ~ {Tags:["S.Scorpio"],height:1,width:0.5}

  execute as @e[type=item,tag=S.Scorpio] at @s run function s.scorpio:hook/tick
