(assert (forall ((pkt_0_8_a_0  Int  )(pkt_1_9_b_0  Int  )(pkt_2_a_c_0  Int  )(pkt_3_b_d_0  Int  )(pkt_4_c_e_0  Int  )(state_group_0_state_0_d_f_0  Int  )(state_group_0_state_1_e_10_0  Int  )) (let ((_n0 state_group_0_state_1_e_10_0 ))
(let ((_n1 pkt_4_c_e_0 ))
(let ((_n2 (=   _n1   _n0 ) ))
(let ((_n3 state_group_0_state_0_d_f_0 ))
(let ((_n4 pkt_3_b_d_0 ))
(let ((_n5 (<   _n4   _n3 ) ))
(let ((_n6 (not  _n5 ) ))
(let ((_n7 (and   _n6   _n2 ) ))
(let ((_n8 (and   _n6   _n7 ) ))
(let ((_n9 (and   _n6   _n8 ) ))
(let ((_n10 (or   _n5   _n9 ) ))
(let ((_n11 (ite  _n10   _n4   _n3  ) ))
(let ((_n12 true ))
(let ((_n13 (-  _n4 )))
(let ((_n14 (+   _n3   _n13 ) ))
(let ((_n15 (<   _n14   (ite  _n12  1 0) ) ))
(let ((_n16 false ))
(let ((_n17 (ite  _n15   (ite  _n16  1 0)   _n4  ) ))
(let ((_n18 (ite  _n15   (ite  _n16  1 0)   _n3  ) ))
(let ((_n19 (+   _n18   _n17 ) ))
(let ((_n20 (=   _n19   (ite  _n16  1 0) ) ))
(let ((_n21 (not  _n20 ) ))
(let ((_n22 (not  _n15 ) ))
(let ((_n23 (and   _n22   _n21 ) ))
(let ((_n24 (not  _n23 ) ))
(let ((_n25 (or   _n24   _n15 ) ))
(let ((_n26 (ite  _n25   (ite  _n16  1 0)   _n4  ) ))
(let ((_n27 (-  _n26 )))
(let ((_n28 (ite  _n25   (ite  _n16  1 0)   _n3  ) ))
(let ((_n29 (+   _n28   _n27 ) ))
(let ((_n30 (<   _n29   (ite  _n16  1 0) ) ))
(let ((_n31 (ite  _n25   _n16   _n30  ) ))
(let ((_n32 (or   _n31   _n25 ) ))
(let ((_n33 (ite  _n32   (ite  _n16  1 0)   _n4  ) ))
(let ((_n34 (ite  _n32   _n3   (ite  _n16  1 0)  ) ))
(let ((_n35 (+   _n34   _n33 ) ))
(let ((_n36 (not  _n31 ) ))
(let ((_n37 (or   _n36   _n25 ) ))
(let ((_n38 (ite  _n37   (ite  _n16  1 0)   _n4  ) ))
(let ((_n39 (-  _n38 )))
(let ((_n40 2 ))
(let ((_n41 (ite  _n37   (ite  _n16  1 0)   _n40  ) ))
(let ((_n42 (+   _n41   _n39 ) ))
(let ((_n43 (ite  _n37   (ite  _n16  1 0)   _n42  ) ))
(let ((_n44 (+   _n3   _n43 ) ))
(let ((_n45 (ite (=  (ite  _n31  1 0)  1)  _n44   _n35  ) ))
(let ((_n46 (ite (=  (ite  _n23  1 0)  1)  _n45   _n3  ) ))
(let ((_n47 (ite  _n15   _n1   (ite  _n16  1 0)  ) ))
(let ((_n48 (-  _n47 )))
(let ((_n49 (ite  _n15   _n0   (ite  _n16  1 0)  ) ))
(let ((_n50 (+   _n49   _n48 ) ))
(let ((_n51 (=   _n50   (ite  _n16  1 0) ) ))
(let ((_n52 (and   _n15   _n51 ) ))
(let ((_n53 (and   _n52   _n15 ) ))
(let ((_n54 (ite  _n53   _n4   (ite  _n16  1 0)  ) ))
(let ((_n55 (ite  _n53   (ite  _n16  1 0)   _n3  ) ))
(let ((_n56 (+   _n55   _n54 ) ))
(let ((_n57 (ite (=  (ite  _n52  1 0)  1)  _n56   _n3  ) ))
(let ((_n58 (ite (=  (ite  _n15  1 0)  1)  _n57   _n46  ) ))
(let ((_n59 (=   _n58   _n11 ) ))
(let ((_n61 (ite  _n5   _n1   _n0  ) ))
(let ((_n62 (ite  _n32   (ite  _n16  1 0)   _n1  ) ))
(let ((_n63 (ite  _n32   _n0   (ite  _n16  1 0)  ) ))
(let ((_n64 (+   _n63   _n62 ) ))
(let ((_n65 (ite (=  (ite  _n31  1 0)  1)  _n0   _n64  ) ))
(let ((_n66 (ite (=  (ite  _n23  1 0)  1)  _n65   _n0  ) ))
(let ((_n67 (ite  _n53   _n1   (ite  _n16  1 0)  ) ))
(let ((_n68 (ite  _n53   (ite  _n16  1 0)   _n0  ) ))
(let ((_n69 (+   _n68   _n67 ) ))
(let ((_n70 (ite (=  (ite  _n52  1 0)  1)  _n69   _n0  ) ))
(let ((_n71 (ite (=  (ite  _n15  1 0)  1)  _n70   _n66  ) ))
(let ((_n72 (=   _n71   _n61 ) ))
(let ((_n74 pkt_0_8_a_0 ))
(let ((_n75 (ite (=  _n74  0)  _n74   (ite  _n16  1 0)  ) ))
(let ((_n76 (ite (=  _n74  0)  _n75   _n74  ) ))
(let ((_n77 (=   _n76   _n74 ) ))
(let ((_n79 (<   _n74   (ite  _n16  1 0) ) ))
(let ((_n80 (ite  _n79   (ite  _n16  1 0)   _n74  ) ))
(let ((_n81 (=   _n74   _n80 ) ))
(let ((_n83 (ite (=  _n74  0)  (ite  _n16  1 0)   _n74  ) ))
(let ((_n84 (=   _n83   _n80 ) ))
(let ((_n86 pkt_1_9_b_0 ))
(let ((_n87 (ite (=  _n86  0)  _n4   (ite  _n16  1 0)  ) ))
(let ((_n88 (ite (=  _n86  0)  _n87   _n4  ) ))
(let ((_n89 (=   _n88   _n4 ) ))
(let ((_n91 pkt_2_a_c_0 ))
(implies  (and (and (>= state_group_0_state_1_e_10_0 0) (< state_group_0_state_1_e_10_0 1024 ))  (and (and (>= state_group_0_state_0_d_f_0 0) (< state_group_0_state_0_d_f_0 1024 ))  (and (and (>= pkt_4_c_e_0 0) (< pkt_4_c_e_0 1024 ))  (and (and (>= pkt_3_b_d_0 0) (< pkt_3_b_d_0 1024 ))  (and (and (>= pkt_2_a_c_0 0) (< pkt_2_a_c_0 1024 ))  (and (and (>= pkt_1_9_b_0 0) (< pkt_1_9_b_0 1024 ))  (and (>= pkt_0_8_a_0 0) (< pkt_0_8_a_0 1024 )) ) ) ) ) ) )   (and  _n59  _n72  _n77  _n81  _n84  _n89 )  )))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
(get-model)
(exit)