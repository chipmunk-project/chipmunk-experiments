int input_traffic_Bytes = 0;
int sum_rtt_Tr = 0;
int num_pkts_with_rtt = 0;
struct Packet {
    int size_bytes;
    int rtt;
};
void func(struct Packet pkt){
input_traffic_Bytes+=pkt.size_bytes;
if (1==1&&pkt.rtt<30&&1==1 && 1==1) {sum_rtt_Tr+=pkt.rtt;
num_pkts_with_rtt+=1;

 }
}