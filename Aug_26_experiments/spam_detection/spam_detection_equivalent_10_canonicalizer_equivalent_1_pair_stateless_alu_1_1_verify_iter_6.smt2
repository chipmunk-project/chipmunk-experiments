(assert (forall ((pkt_0_4_6_0  Int  )(state_group_0_state_0_5_7_0  Int  )(state_group_0_state_1_6_8_0  Int  )) (let ((_n0 state_group_0_state_0_5_7_0 ))
(let ((_n1 2 ))
(let ((_n2 (ite (=  _n0  1)  _n1   _n0  ) ))
(let ((_n3 state_group_0_state_1_6_8_0 ))
(let ((_n4 false ))
(let ((_n5 (ite (=  _n0  1)  (ite  _n4  1 0)   _n3  ) ))
(let ((_n6 3 ))
(let ((_n7 (ite (=  _n5  999)  _n6   _n2  ) ))
(let ((_n8 (ite (=  _n2  2)  _n7   _n2  ) ))
(let ((_n9 true ))
(let ((_n10 (=   _n0   (ite  _n9  1 0) ) ))
(let ((_n11 (ite (=  _n0  1)  (ite  _n4  1 0)   _n0  ) ))
(let ((_n12 (=   _n11   _n1 ) ))
(let ((_n13 (ite (=  _n0  1)  _n4   _n12  ) ))
(let ((_n14 (not  _n13 ) ))
(let ((_n15 (or   _n14   _n10 ) ))
(let ((_n16 999 ))
(let ((_n17 (ite  _n15   (ite  _n4  1 0)   _n3  ) ))
(let ((_n18 (<   _n17   _n16 ) ))
(let ((_n19 (ite  _n15   _n4   _n18  ) ))
(let ((_n20 (or   _n19   _n15 ) ))
(let ((_n21 (ite  _n20   (ite  _n4  1 0)   _n6  ) ))
(let ((_n22 (ite  _n20   _n0   (ite  _n4  1 0)  ) ))
(let ((_n23 (+   _n22   _n21 ) ))
(let ((_n24 (not  _n19 ) ))
(let ((_n25 (or   _n24   _n15 ) ))
(let ((_n26 (not  _n25 ) ))
(let ((_n27 (-  (ite  _n26  1 0) )))
(let ((_n28 (ite  _n25   (ite  _n4  1 0)   _n6  ) ))
(let ((_n29 (+   _n28   _n27 ) ))
(let ((_n30 (ite  _n25   (ite  _n4  1 0)   _n29  ) ))
(let ((_n31 (ite  _n25   _n0   (ite  _n4  1 0)  ) ))
(let ((_n32 (+   _n31   _n30 ) ))
(let ((_n33 (ite (=  (ite  _n19  1 0)  1)  _n32   _n23  ) ))
(let ((_n34 (ite (=  (ite  _n13  1 0)  1)  _n33   _n0  ) ))
(let ((_n35 pkt_0_4_6_0 ))
(let ((_n36 (ite (=  _n0  1)  _n35   (ite  _n4  1 0)  ) ))
(let ((_n37 (=   _n36   (ite  _n9  1 0) ) ))
(let ((_n38 (ite (=  _n0  1)  _n37   _n4  ) ))
(let ((_n39 (not  _n10 ) ))
(let ((_n40 (or   _n38   _n39 ) ))
(let ((_n41 (ite  _n40   (ite  _n4  1 0)   _n1  ) ))
(let ((_n42 (ite  _n40   _n0   (ite  _n4  1 0)  ) ))
(let ((_n43 (+   _n42   _n41 ) ))
(let ((_n44 (and   _n38   _n10 ) ))
(let ((_n45 (ite  _n44   _n35   (ite  _n4  1 0)  ) ))
(let ((_n46 (-  _n45 )))
(let ((_n47 (ite  _n44   _n1   (ite  _n4  1 0)  ) ))
(let ((_n48 (+   _n47   _n46 ) ))
(let ((_n49 (ite  _n44   _n48   (ite  _n4  1 0)  ) ))
(let ((_n50 (+   _n0   _n49 ) ))
(let ((_n51 (ite (=  (ite  _n38  1 0)  1)  _n50   _n43  ) ))
(let ((_n52 (ite (=  (ite  _n10  1 0)  1)  _n51   _n34  ) ))
(let ((_n53 (=   _n52   _n8 ) ))
(let ((_n55 (+   _n5   (ite  _n9  1 0) ) ))
(let ((_n56 (ite (=  _n2  2)  _n55   _n5  ) ))
(let ((_n57 (not  _n20 ) ))
(let ((_n58 (+   _n3   (ite  _n57  1 0) ) ))
(let ((_n59 (+   _n3   (ite  _n26  1 0) ) ))
(let ((_n60 (ite (=  (ite  _n19  1 0)  1)  _n59   _n58  ) ))
(let ((_n61 (ite (=  (ite  _n13  1 0)  1)  _n60   _n3  ) ))
(let ((_n62 (-  _n41 )))
(let ((_n63 (ite  _n40   (ite  _n4  1 0)   _n6  ) ))
(let ((_n64 (+   _n63   _n62 ) ))
(let ((_n65 (ite  _n40   (ite  _n4  1 0)   _n64  ) ))
(let ((_n66 (ite  _n40   _n3   (ite  _n4  1 0)  ) ))
(let ((_n67 (+   _n66   _n65 ) ))
(let ((_n68 (-  _n47 )))
(let ((_n69 (ite  _n44   _n6   (ite  _n4  1 0)  ) ))
(let ((_n70 (+   _n69   _n68 ) ))
(let ((_n71 (ite  _n44   _n70   (ite  _n4  1 0)  ) ))
(let ((_n72 (ite  _n44   (ite  _n4  1 0)   _n3  ) ))
(let ((_n73 (+   _n72   _n71 ) ))
(let ((_n74 (ite (=  (ite  _n38  1 0)  1)  _n73   _n67  ) ))
(let ((_n75 (ite (=  (ite  _n10  1 0)  1)  _n74   _n61  ) ))
(let ((_n76 (=   _n75   _n56 ) ))
(let ((_n78 (ite (=  _n35  0)  _n35   (ite  _n4  1 0)  ) ))
(let ((_n79 (ite (=  _n35  0)  _n78   _n35  ) ))
(let ((_n80 (=   _n79   _n35 ) ))
(implies  (and (and (>= state_group_0_state_1_6_8_0 0) (< state_group_0_state_1_6_8_0 1024 ))  (and (and (>= state_group_0_state_0_5_7_0 0) (< state_group_0_state_0_5_7_0 1024 ))  (and (>= pkt_0_4_6_0 0) (< pkt_0_4_6_0 1024 )) ) )   (and  _n53  _n76  _n80 )  ))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
(get-model)
(exit)