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
}