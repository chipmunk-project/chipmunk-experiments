(assert (forall ((pkt_0_4_6_0  Int  )(state_group_0_state_0_5_7_0  Int  )(state_group_0_state_1_6_8_0  Int  )) (let ((_n0 state_group_0_state_1_6_8_0 ))
(let ((_n1 state_group_0_state_0_5_7_0 ))
(let ((_n2 true ))
(let ((_n3 (+   _n1   (ite  _n2  1 0) ) ))
(let ((_n4 (ite (=  _n0  0)  _n3   _n1  ) ))
(let ((_n5 999 ))
(let ((_n6 (=   _n1   _n5 ) ))
(let ((_n7 false ))
(let ((_n8 (ite (=  _n1  999)  (ite  _n7  1 0)   _n0  ) ))
(let ((_n9 (<   _n8   (ite  _n2  1 0) ) ))
(let ((_n10 (ite (=  _n1  999)  _n7   _n9  ) ))
(let ((_n11 (not  _n10 ) ))
(let ((_n12 (or   _n11   _n6 ) ))
(let ((_n13 (ite  _n12   (ite  _n7  1 0)   _n1  ) ))
(let ((_n14 (=   _n13   (ite  _n7  1 0) ) ))
(let ((_n15 (not  _n14 ) ))
(let ((_n16 (not  _n12 ) ))
(let ((_n17 (and   _n16   _n15 ) ))
(let ((_n18 (or   _n17   _n12 ) ))
(let ((_n19 (not  _n18 ) ))
(let ((_n20 (-  (ite  _n19  1 0) )))
(let ((_n21 2 ))
(let ((_n22 (ite  _n18   (ite  _n7  1 0)   _n21  ) ))
(let ((_n23 (+   _n22   _n20 ) ))
(let ((_n24 (ite  _n18   (ite  _n7  1 0)   _n23  ) ))
(let ((_n25 (+   _n1   _n24 ) ))
(let ((_n26 (not  _n17 ) ))
(let ((_n27 (or   _n26   _n12 ) ))
(let ((_n28 (not  _n27 ) ))
(let ((_n29 (+   _n1   (ite  _n28  1 0) ) ))
(let ((_n30 (ite (=  (ite  _n17  1 0)  1)  _n29   _n25  ) ))
(let ((_n31 (ite (=  (ite  _n10  1 0)  1)  _n30   _n1  ) ))
(let ((_n32 (ite (=  _n1  999)  _n1   (ite  _n7  1 0)  ) ))
(let ((_n33 (=   _n32   (ite  _n2  1 0) ) ))
(let ((_n34 (ite (=  _n1  999)  _n33   _n7  ) ))
(let ((_n35 (not  _n6 ) ))
(let ((_n36 (or   _n34   _n35 ) ))
(let ((_n37 1000 ))
(let ((_n38 (ite  _n36   (ite  _n7  1 0)   _n37  ) ))
(let ((_n39 (ite  _n36   _n1   (ite  _n7  1 0)  ) ))
(let ((_n40 (+   _n39   _n38 ) ))
(let ((_n41 (and   _n34   _n6 ) ))
(let ((_n42 pkt_0_4_6_0 ))
(let ((_n43 (ite  _n41   _n42   (ite  _n7  1 0)  ) ))
(let ((_n44 (+   _n43   _n43 ) ))
(let ((_n45 (ite  _n41   _n44   (ite  _n7  1 0)  ) ))
(let ((_n46 (+   _n1   _n45 ) ))
(let ((_n47 (ite (=  (ite  _n34  1 0)  1)  _n46   _n40  ) ))
(let ((_n48 (ite (=  (ite  _n6  1 0)  1)  _n47   _n31  ) ))
(let ((_n49 (=   _n48   _n4 ) ))
(let ((_n51 (ite (=  _n1  999)  (ite  _n2  1 0)   _n0  ) ))
(let ((_n52 (ite (=  _n0  0)  _n51   _n0  ) ))
(let ((_n53 (not  _n36 ) ))
(let ((_n54 (+   _n0   (ite  _n53  1 0) ) ))
(let ((_n55 (+   _n0   _n45 ) ))
(let ((_n56 (ite (=  (ite  _n34  1 0)  1)  _n55   _n54  ) ))
(let ((_n57 (ite (=  (ite  _n6  1 0)  1)  _n56   _n0  ) ))
(let ((_n58 (=   _n57   _n52 ) ))
(implies  (and (and (>= state_group_0_state_1_6_8_0 0) (< state_group_0_state_1_6_8_0 1024 ))  (and (and (>= state_group_0_state_0_5_7_0 0) (< state_group_0_state_0_5_7_0 1024 ))  (and (>= pkt_0_4_6_0 0) (< pkt_0_4_6_0 1024 )) ) )   (and  _n49  _n58 )  )))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
(get-model)
(exit)