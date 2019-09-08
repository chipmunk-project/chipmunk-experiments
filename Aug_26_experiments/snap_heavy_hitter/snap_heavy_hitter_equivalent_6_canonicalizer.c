/* 
// Original program: 
struct Packet {
    int srcip;
};
int heavy_hitter[1000000] = {0};
int hh_counter[1000000] = {0};
void func(struct Packet p){
p.srcip=p.srcip;
if (heavy_hitter[p.srcip]==0 && 1==1) {hh_counter[p.srcip]=hh_counter[p.srcip]+1;
if (hh_counter[p.srcip]==1000 && 1==1) {heavy_hitter[p.srcip]=1;

 }

 }
} */

struct Packet{
    int pkt_0;
};
int state_1 = {0};
int state_0 = {0};
void func(struct Packet p) {
p.pkt_0=p.pkt_0;
if (state_1==0&&1==1) {state_0=state_0+1;
if (state_0==1000&&1==1) {state_1=1;
;}
;}

}