#source ~/mygdbinit0
#source ~/mygdbinit1 

define psw
 p w
 p s
 c
end 

set print pretty on
set print elements 200
set breakpoint pending on
set print thread-events off
#winheight CMD -10
focus cmd

#dir /home/yoyu/tachyon_as

b lstate.c:f_luaopen
