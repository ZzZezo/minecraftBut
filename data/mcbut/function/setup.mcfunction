tellraw @a [{"color":"#80FF88","text":"R"},{"color":"#7AFA82","text":"e"},{"color":"#75F57B","text":"l"},{"color":"#6FF075","text":"o"},{"color":"#6AEB6E","text":"a"},{"color":"#64E668","text":"d"},{"color":"#5EE061","text":"e"},{"color":"#59DB5B","text":"d "},{"color":"#53D654","text":"s"},{"color":"#4DD14E","text":"u"},{"color":"#48CC47","text":"c"},{"color":"#42C741","text":"c"},{"color":"#3DC23A","text":"e"},{"color":"#37BD34","text":"s"},{"color":"#31B82D","text":"s"},{"color":"#2CB327","text":"f"},{"color":"#26AD20","text":"u"},{"color":"#20A81A","text":"l"},{"color":"#1BA313","text":"l"},{"color":"#159E0D","text":"y"},{"color":"#0A9400","text":". "},{player:{name:"ZezoHD"},color:"#ffffff",hover_event:{action:"show_text",value:[{text:"Made with ",color:"#3584e4"},{text:"❤",color:"#c01c28"},{text:" by Zezo",color:"#3584e4"}]}}]

#create scoreboards
#Timer
scoreboard objectives add mcb.Timer dummy "The Timer logic"
#set gameticks to 0 if not set
execute unless score gameticks mcb.Timer matches 0.. run scoreboard players set gameticks mcb.Timer 0
#if TIMER_RUNNING == 0: game paused, else game running
scoreboard players set TIMER_RUNNING mcb.Timer 0

#triggers
scoreboard objectives add mcb.start_timer trigger
scoreboard objectives add mcb.stop_timer trigger
scoreboard objectives add mcb.reset_timer trigger
scoreboard objectives add mcb.start_challenge trigger