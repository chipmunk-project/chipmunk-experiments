struct Packet{
int sample;
};
int count = 0;
void func(struct Packet pkt){
if (!(!(!(!(count==3-1&&1==1))&&1==1))) {if (1==1&&!(!(count==3-1&&1==1))) {if (1==1&&1==1&&count==3-1) {pkt.sample=1;
count=0;

;}

;}

 ;}else if (!(!(!(count==3-1&&1==1))&&1==1)) {if (1==1&&!(count==3-1&&1==1)) {pkt.sample=0;
count=count+1;

;}

 ;}
}