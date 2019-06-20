/* 
// Original program: 
struct Packet{
int drop;
int src;
int dst;
int array_index;
};
int established[1000000] = {0};
void func(struct Packet p){
p.array_index=p.src*1+p.dst;
if (!(!(!(!(p.src==3&&1==1))&&1==1))) {if (1==1&&!(!(p.src==3&&1==1))) {if (1==1&&1==1&&p.src==3) {established[p.array_index]=1;

;}

;}

 ;}else if (!(!(!(p.src==3&&1==1))&&1==1)) {if (1==1&&!(p.src==3&&1==1)) {if (1==1&&1==1&&p.dst==3) {p.drop=(established[p.array_index]==0);

;}

;}

 ;}
} */

struct Packet{
    int pkt_3;
    int pkt_1;
    int pkt_0;
    int pkt_2;
};
int state_0 = {0};
void func(struct Packet p) {
p.pkt_2=p.pkt_1*1+p.pkt_0;
if (!(!(!(!(p.pkt_1==3&&1==1))&&1==1))) {if (1==1&&!(!(p.pkt_1==3&&1==1))) {if (1==1&&1==1&&p.pkt_1==3) {state_0=1;

;}

;}

;}else {if (!(!(!(p.pkt_1==3&&1==1))&&1==1)) {if (1==1&&!(p.pkt_1==3&&1==1)) {if (1==1&&1==1&&p.pkt_0==3) {p.pkt_3=(state_0==0);

;}

;}

;};}

}