struct Packet{
int tcpseq;
};
int count = 0;
int maxseq = 0;
void func(struct Packet p){
if (!(!(!(!(p.tcpseq<maxseq&&1==1))&&1==1))) {if (1==1&&!(!(p.tcpseq<maxseq&&1==1))) {if (1==1&&1==1&&p.tcpseq<maxseq) {count=count+1;

;}

;}

 ;}else if (!(!(!(p.tcpseq<maxseq&&1==1))&&1==1)) {if (1==1&&!(p.tcpseq<maxseq&&1==1)) {maxseq=p.tcpseq;

;}

 ;}
}