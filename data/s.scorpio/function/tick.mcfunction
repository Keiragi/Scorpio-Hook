## 常時実行 (function → advancement → enchant)

# interactionを削除
  kill @e[type=interaction,tag=S.Scorpio]

# interaction生成
  execute as @a if items entity @s weapon.mainhand potion[minecraft:custom_data={S.Data:{ItemID:"Hook"}}] at @s anchored eyes positioned ^ ^ ^ run summon interaction ~ ~-0.36 ~ {Tags:["S.Scorpio"],height:0.5,width:0.5}

# Hookで実行
  execute as @e[type=item,tag=S.Scorpio] at @s run function s.scorpio:hook/tick
