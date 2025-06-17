playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.1 1

execute store result score Player.X S.Scorpio_Pos run data get entity @s Pos[0] 1000
execute store result score Player.Y S.Scorpio_Pos run data get entity @s Pos[1] 1000
execute store result score Player.Z S.Scorpio_Pos run data get entity @s Pos[2] 1000
execute positioned ^ ^ ^1 summon marker run function s.scorpio:detect_use/position

execute anchored eyes positioned ^ ^ ^ run summon item ~ ~ ~ {PickupDelay:32767,Invulnerable:1b,Item:{id:"minecraft:nether_star",count:1},Tags:["S.Scorpio","S.Scorpio_init"]}
data modify entity @e[type=item,tag=S.Scorpio_init,limit=1] Thrower set from entity @s UUID
execute as @e[type=item,tag=S.Scorpio_init,limit=1] run function s.scorpio:detect_use/item_data

#execute if entity @s[advancements={s.scorpio:click={attack=true}}] run playsound block.note_block.harp player @s ~ ~ ~ 1 0.7
#execute if entity @s[advancements={s.scorpio:click={interact=true}}] run playsound block.note_block.harp player @s ~ ~ ~ 1 1.4

advancement revoke @s only s.scorpio:click
