/* 
// Original program: 
struct Packet {
    int sport;
    int dport;
    int new_hop;
    int arrival;
    int next_hop;
    int id;
};
int last_time[8000] = {0};
int saved_hop[8000] = {0};
void flowlet(struct Packet pkt){
pkt.new_hop=pkt.new_hop;
pkt.id=pkt.id;
if (pkt.arrival-last_time[pkt.id]>2&&1==1 && 1==1) {saved_hop[pkt.id]=pkt.new_hop;

 }
last_time[pkt.id]=pkt.arrival;
pkt.next_hop=saved_hop[pkt.id];
} */

struct Packet{
    int sport;
    int dport;
    int pkt_0;
    int pkt_2;
    int pkt_3;
    int pkt_1;
};
int state_1 = {0};
int state_0 = {0};
void func(struct Packet p) {
p.pkt_0=p.pkt_0;
p.pkt_1=p.pkt_1;
if (p.pkt_2-state_1>2&&1==1&&1==1) {state_0=p.pkt_0;
;}
state_1=p.pkt_2;
p.pkt_3=state_0;

}