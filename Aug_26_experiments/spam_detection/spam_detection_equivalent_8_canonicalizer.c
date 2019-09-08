/* 
// Original program: 
struct Packet{
int smtp_mta;
};
int mail_counter[1000000] = {0};
int mta_dir[1000000] = {1};
void func(struct Packet p){
p.smtp_mta=p.smtp_mta;
if (1==1&&mta_dir[p.smtp_mta]==1&&1==1) {mta_dir[p.smtp_mta]=2;
mail_counter[p.smtp_mta]=0;
;}
if (1==1&&mta_dir[p.smtp_mta]==2&&1==1) {mail_counter[p.smtp_mta]=mail_counter[p.smtp_mta]+1;
if (1==1&&mail_counter[p.smtp_mta]==1000&&1==1) {mta_dir[p.smtp_mta]=3;
;}
;}
} */

struct Packet{
    int pkt_0;
};
int state_1 = {0};
int state_0 = {1};
void func(struct Packet p) {
p.pkt_0=p.pkt_0;
if (1==1&&state_0==1&&1==1) {state_0=2;
state_1=0;

;}
if (1==1&&state_0==2&&1==1) {state_1=state_1+1;
if (1==1&&state_1==1000&&1==1) {state_0=3;

;}

;}

}