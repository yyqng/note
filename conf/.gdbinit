#source ~/mygdbinit0
#source ~/mygdbinit1 

define pp
 p gp->referenceFigureType[i]
 p gp->referenceFigureLevel[i]
# p param->ruleEndTableMaxSpace
# p (*(struct tbxRuleParam*)(p->param[ntag])).ruleEndTableMaxSpace
end

define pcsba
 c
 p a->pi_pps->sba
end

define pnsba
 n
 p a->pi_pps->sba
end

define ppi
 n
 p ((dt_vtx_t**) (a->pi_pps->sba))[0]->point
 p a->pi_pps->start0
 p a->pi_pps->end0
end

define psw
 p wi
 p si
 n
 p bias
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
