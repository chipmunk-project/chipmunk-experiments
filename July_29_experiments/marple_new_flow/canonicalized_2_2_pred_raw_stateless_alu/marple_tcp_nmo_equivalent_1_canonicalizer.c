/* 
// Original program: 
struct Packet {
    int tcpseq;
};
int count = 0;
int maxseq = 0;
void func(struct Packet p){
if (1==1&&!(!(!(p.tcpseq<maxseq&&1==1))) && 1==1) {if (1==1&&!(p.tcpseq<maxseq&&1==1) && 1==1) {maxseq=p.tcpseq;

 }

 }else {if (1==1&&!(!(p.tcpseq<maxseq&&1==1)) && 1==1) {if (1==1&&p.tcpseq<maxseq&&1==1 && 1==1) {count=count+1;

 }

 }

 }
} */

struct Packet{
    int pkt_0;
};
int state_1 = 0;
int state_0 = 0;
void func(struct Packet p) {
if (1==1&&!(!(!(p.pkt_0<state_0&&1==1)))&&1==1) {if (1==1&&!(p.pkt_0<state_0&&1==1)&&1==1) {state_0=p.pkt_0;
;}
;}else {if (1==1&&!(!(p.pkt_0<state_0&&1==1))&&1==1) {if (1==1&&p.pkt_0<state_0&&1==1&&1==1) {state_1=state_1+1;
;}
;}
;}

}