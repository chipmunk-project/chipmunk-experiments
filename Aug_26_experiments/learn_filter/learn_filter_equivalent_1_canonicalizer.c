/* 
// Original program: 
struct Packet {
    int sport;
    int dport;
    int member;
    int filter1_idx;
    int filter2_idx;
    int filter3_idx;
};
int filter1[256] = {0};
int filter2[256] = {0};
int filter3[256] = {0};
void func(struct Packet pkt){
if (1==1&&filter1[pkt.filter1_idx]!=0&&filter2[pkt.filter2_idx]!=0&&filter3[pkt.filter3_idx]!=0&&1==1 && 1==1) {pkt.member=1;

 }
filter1[pkt.filter1_idx]=1;
filter2[pkt.filter2_idx]=1;
filter3[pkt.filter3_idx]=1;
} */

struct Packet{
    int sport;
    int dport;
    int pkt_0;
    int filter1_idx;
    int filter2_idx;
    int filter3_idx;
};
int state_2 = {0};
int state_1 = {0};
int state_0 = {0};
void func(struct Packet p) {
if (1==1&&state_2!=0&&state_1!=0&&state_0!=0&&1==1&&1==1) {p.pkt_0=1;
;}
state_2=1;
state_1=1;
state_0=1;

}