/* 
// Original program: 
struct Packet {
    int sample;
};
int count = 0;
void func(struct Packet pkt){
if (!(!(1==1&&!(count==29&&1==1))) && 1==1) {if (!(count==29&&1==1)&&1==1 && 1==1) {pkt.sample=0;
count=count+1;

 }

 }else {if (!(1==1&&!(count==29&&1==1)) && 1==1) {if (1==1&&count==29&&1==1 && 1==1) {pkt.sample=1;
count=0;

 }

 } }
} */

struct Packet{
    int pkt_0;
};
int state_0 = 0;
void func(struct Packet p) {
if (!(!(1==1&&!(state_0==29&&1==1)))&&1==1) {if (!(state_0==29&&1==1)&&1==1&&1==1) {p.pkt_0=0;
state_0=state_0+1;
;}
;}else {if (!(1==1&&!(state_0==29&&1==1))&&1==1) {if (1==1&&state_0==29&&1==1&&1==1) {p.pkt_0=1;
state_0=0;
;}
;}
;}

}