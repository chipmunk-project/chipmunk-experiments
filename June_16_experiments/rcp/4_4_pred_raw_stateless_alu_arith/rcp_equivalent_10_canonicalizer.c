/* 
// Original program: 
int input_traffic_Bytes = 0;
int sum_rtt_Tr = 0;
int num_pkts_with_rtt = 0;
struct Packet {
    int size_bytes;
    int rtt;
};
void func(struct Packet pkt){
input_traffic_Bytes+=pkt.size_bytes;
if (pkt.rtt<3&&1==1 && 1==1) {sum_rtt_Tr+=pkt.rtt;
num_pkts_with_rtt+=1;

 }
} */

int state_0 = 0;
int state_1 = 0;
int state_2 = 0;
struct Packet{
    int pkt_0;
    int pkt_1;
};
void func(struct Packet p) {
state_0+=p.pkt_0;
if (p.pkt_1<3&&1==1&&1==1) {state_1+=p.pkt_1;
state_2+=1;
;}

}