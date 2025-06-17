execute store result score Marker.X S.Scorpio_Pos run data get entity @s Pos[0] 1000
execute store result score Marker.Y S.Scorpio_Pos run data get entity @s Pos[1] 1000
execute store result score Marker.Z S.Scorpio_Pos run data get entity @s Pos[2] 1000

scoreboard players operation Marker.X S.Scorpio_Pos -= Player.X S.Scorpio_Pos
scoreboard players operation Marker.Y S.Scorpio_Pos -= Player.Y S.Scorpio_Pos
scoreboard players operation Marker.Z S.Scorpio_Pos -= Player.Z S.Scorpio_Pos

data modify storage s.scorpio:temp Motion set value [0.0,0.0,0.0]

execute store result storage s.scorpio:temp Motion[0] double 0.0012 run scoreboard players get Marker.X S.Scorpio_Pos
execute store result storage s.scorpio:temp Motion[1] double 0.0012 run scoreboard players get Marker.Y S.Scorpio_Pos
execute store result storage s.scorpio:temp Motion[2] double 0.0012 run scoreboard players get Marker.Z S.Scorpio_Pos

execute at @s run particle end_rod
kill @s
