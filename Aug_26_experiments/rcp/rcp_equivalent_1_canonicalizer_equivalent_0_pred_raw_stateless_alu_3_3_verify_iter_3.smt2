(assert (forall ((pkt_0_6_8_0  Int  )(pkt_1_7_9_0  Int  )(state_group_0_state_0_8_a_0  Int  )(state_group_1_state_0_9_b_0  Int  )(state_group_2_state_0_a_c_0  Int  )) (let ((_n0 30 ))
(let ((_n1 pkt_1_7_9_0 ))
(let ((_n2 (<   _n1   _n0 ) ))
(let ((_n3 state_group_1_state_0_9_b_0 ))
(let ((_n4 (+   _n3   _n1 ) ))
(let ((_n5 (ite  _n2   _n4   _n3  ) ))
(let ((_n6 false ))
(let ((_n7 (=   _n1   (ite  _n6  1 0) ) ))
(let ((_n8 (not  _n7 ) ))
(let ((_n9 (ite (=  _n1  0)  (ite  _n6  1 0)   _n1  ) ))
(let ((_n10 (ite (=  (ite  _n8  1 0)  1)  _n9   (ite  _n6  1 0)  ) ))
(let ((_n11 (ite  _n2   _n10   (ite  _n6  1 0)  ) ))
(let ((_n12 (+   _n3   _n11 ) ))
(let ((_n13 (ite (=  (ite  _n2  1 0)  1)  _n12   _n3  ) ))
(let ((_n14 (=   _n13   _n5 ) ))
(let ((_n16 state_group_2_state_0_a_c_0 ))
(let ((_n17 true ))
(let ((_n18 (+   _n16   (ite  _n17  1 0) ) ))
(let ((_n19 (ite  _n2   _n18   _n16  ) ))
(let ((_n20 (<   (ite  _n6  1 0)   (ite  _n2  1 0) ) ))
(let ((_n21 (and   _n20   _n2 ) ))
(let ((_n22 (+   _n16   (ite  _n21  1 0) ) ))
(let ((_n23 (ite (=  (ite  _n20  1 0)  1)  _n22   _n16  ) ))
(let ((_n24 (=   _n23   _n19 ) ))
(let ((_n26 pkt_0_6_8_0 ))
(let ((_n27 (-  _n1 )))
(let ((_n28 (+   _n26   _n27 ) ))
(let ((_n29 (=   _n28   (ite  _n6  1 0) ) ))
(let ((_n30 (not  _n29 ) ))
(let ((_n31 (ite (=  _n28  0)  (ite  _n6  1 0)   _n28  ) ))
(let ((_n32 (ite (=  (ite  _n30  1 0)  1)  _n31   (ite  _n6  1 0)  ) ))
(let ((_n33 (+   _n10   _n32 ) ))
(let ((_n34 (=   _n33   _n26 ) ))
(let ((_n36 (=   _n10   _n1 ) ))
(let ((_n38 state_group_0_state_0_8_a_0 ))
(implies  (and (and (>= state_group_2_state_0_a_c_0 0) (< state_group_2_state_0_a_c_0 1024 ))  (and (and (>= state_group_1_state_0_9_b_0 0) (< state_group_1_state_0_9_b_0 1024 ))  (and (and (>= state_group_0_state_0_8_a_0 0) (< state_group_0_state_0_8_a_0 1024 ))  (and (and (>= pkt_1_7_9_0 0) (< pkt_1_7_9_0 1024 ))  (and (>= pkt_0_6_8_0 0) (< pkt_0_6_8_0 1024 )) ) ) ) )   (and  _n14  _n24  _n34  _n36 )  ))))))))))))))))))))))))))))))))))))))
(check-sat)
(get-model)
(exit)