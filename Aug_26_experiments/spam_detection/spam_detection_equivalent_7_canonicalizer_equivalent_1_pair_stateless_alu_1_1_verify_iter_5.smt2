(assert (forall ((pkt_0_4_6_0  Int  )(state_group_0_state_0_5_7_0  Int  )(state_group_0_state_1_6_8_0  Int  )) (let ((_n0 state_group_0_state_0_5_7_0 ))
(let ((_n1 2 ))
(let ((_n2 (ite (=  _n0  1)  _n1   _n0  ) ))
(let ((_n3 state_group_0_state_1_6_8_0 ))
(let ((_n4 false ))
(let ((_n5 (ite (=  _n0  1)  (ite  _n4  1 0)   _n3  ) ))
(let ((_n6 3 ))
(let ((_n7 (ite (=  _n5  999)  _n6   _n2  ) ))
(let ((_n8 (ite (=  _n2  2)  _n7   _n2  ) ))
(let ((_n9 (=   _n0   _n1 ) ))
(let ((_n10 true ))
(let ((_n11 (ite (=  _n0  2)  (ite  _n4  1 0)   _n0  ) ))
(let ((_n12 (=   _n11   (ite  _n10  1 0) ) ))
(let ((_n13 (ite (=  _n0  2)  _n4   _n12  ) ))
(let ((_n14 (not  _n13 ) ))
(let ((_n15 (or   _n14   _n9 ) ))
(let ((_n16 (ite  _n15   (ite  _n4  1 0)   _n0  ) ))
(let ((_n17 (=   _n16   (ite  _n4  1 0) ) ))
(let ((_n18 (ite  _n15   _n4   _n17  ) ))
(let ((_n19 (or   _n18   _n15 ) ))
(let ((_n20 (not  _n19 ) ))
(let ((_n21 (+   _n0   (ite  _n20  1 0) ) ))
(let ((_n22 (not  _n18 ) ))
(let ((_n23 (or   _n22   _n15 ) ))
(let ((_n24 pkt_0_4_6_0 ))
(let ((_n25 (ite  _n23   (ite  _n4  1 0)   _n24  ) ))
(let ((_n26 (+   _n25   _n25 ) ))
(let ((_n27 (ite  _n23   (ite  _n4  1 0)   _n26  ) ))
(let ((_n28 (+   _n0   _n27 ) ))
(let ((_n29 (ite (=  (ite  _n18  1 0)  1)  _n28   _n21  ) ))
(let ((_n30 (ite (=  (ite  _n13  1 0)  1)  _n29   _n0  ) ))
(let ((_n31 999 ))
(let ((_n32 (ite (=  _n0  2)  _n3   (ite  _n4  1 0)  ) ))
(let ((_n33 (=   _n32   _n31 ) ))
(let ((_n34 (ite (=  _n0  2)  _n33   _n4  ) ))
(let ((_n35 (and   _n34   _n9 ) ))
(let ((_n36 (ite  _n35   _n6   (ite  _n4  1 0)  ) ))
(let ((_n37 (ite  _n35   (ite  _n4  1 0)   _n0  ) ))
(let ((_n38 (+   _n37   _n36 ) ))
(let ((_n39 (ite (=  (ite  _n34  1 0)  1)  _n38   _n0  ) ))
(let ((_n40 (ite (=  (ite  _n9  1 0)  1)  _n39   _n30  ) ))
(let ((_n41 (=   _n40   _n8 ) ))
(let ((_n43 (+   _n5   (ite  _n10  1 0) ) ))
(let ((_n44 (ite (=  _n2  2)  _n43   _n5  ) ))
(let ((_n45 (ite  _n19   _n3   (ite  _n4  1 0)  ) ))
(let ((_n46 (+   _n45   (ite  _n20  1 0) ) ))
(let ((_n47 (+   _n3   _n25 ) ))
(let ((_n48 (ite (=  (ite  _n18  1 0)  1)  _n47   _n46  ) ))
(let ((_n49 (ite (=  (ite  _n13  1 0)  1)  _n48   _n3  ) ))
(let ((_n50 (not  _n9 ) ))
(let ((_n51 (or   _n34   _n50 ) ))
(let ((_n52 (not  _n51 ) ))
(let ((_n53 (+   _n3   (ite  _n52  1 0) ) ))
(let ((_n54 (+   _n3   (ite  _n35  1 0) ) ))
(let ((_n55 (ite (=  (ite  _n34  1 0)  1)  _n54   _n53  ) ))
(let ((_n56 (ite (=  (ite  _n9  1 0)  1)  _n55   _n49  ) ))
(let ((_n57 (=   _n56   _n44 ) ))
(let ((_n59 (ite (=  _n24  0)  _n24   (ite  _n4  1 0)  ) ))
(let ((_n60 (ite (=  _n24  0)  _n59   _n24  ) ))
(let ((_n61 (=   _n60   _n24 ) ))
(implies  (and (and (>= state_group_0_state_1_6_8_0 0) (< state_group_0_state_1_6_8_0 1024 ))  (and (and (>= state_group_0_state_0_5_7_0 0) (< state_group_0_state_0_5_7_0 1024 ))  (and (>= pkt_0_4_6_0 0) (< pkt_0_4_6_0 1024 )) ) )   (and  _n41  _n57  _n61 )  )))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
(get-model)
(exit)