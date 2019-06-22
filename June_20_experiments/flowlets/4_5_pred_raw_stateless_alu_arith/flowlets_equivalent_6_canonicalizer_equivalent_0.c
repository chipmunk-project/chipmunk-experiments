struct Packet{
    int sport;
    int dport;
    int pkt_0;
    int pkt_2;
    int pkt_3;
    int pkt_1;
};
int state_group_1_state_0 = {0};
int state_group_0_state_0 = {0};
void func(struct Packet p){
p.pkt_0=p.pkt_0;
p.pkt_1=p.pkt_1;
if (p.pkt_2-state_group_1_state_0>2&&1==1) {state_group_0_state_0=p.pkt_0;

;}
state_group_1_state_0=p.pkt_2;
p.pkt_3=state_group_0_state_0;
}