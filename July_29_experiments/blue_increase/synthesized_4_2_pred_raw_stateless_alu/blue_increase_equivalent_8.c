struct Packet{
int loss;
int qlen;
int now;
int link_idle;
int cond1;
int now_plus_free;
};
int last_update;
int p_mark;
void func(struct Packet p){
p.now_plus_free=p.now-10;
if (1==1&&p.now_plus_free>last_update&&1==1) {p_mark=p_mark+1;
last_update=p.now;
;}
}