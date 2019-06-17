/* 
// Original program: 
struct Packet {
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
p.now_plus_free=p.now-1;
if (p.now_plus_free>last_update&&1==1 && 1==1) {p_mark=p_mark-2;
last_update=p.now;

 }
} */

struct Packet{
    int loss;
    int qlen;
    int pkt_0;
    int link_idle;
    int cond1;
    int pkt_1;
};
int state_1;
int state_0;
void func(struct Packet p) {
p.pkt_1=p.pkt_0-1;
if (p.pkt_1>state_1&&1==1&&1==1) {state_0=state_0-2;
state_1=p.pkt_0;
;}

}