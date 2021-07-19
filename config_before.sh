
# Allow ARP
ovs-ofctl add-flow s0 -O OpenFlow13 dl_type=0x806,nw_proto=1,action=flood
ovs-ofctl add-flow s1 -O OpenFlow13 dl_type=0x806,nw_proto=1,action=flood
ovs-ofctl add-flow s2 -O OpenFlow13 dl_type=0x806,nw_proto=1,action=flood
ovs-ofctl add-flow s3 -O OpenFlow13 dl_type=0x806,nw_proto=1,action=flood
ovs-ofctl add-flow s4 -O OpenFlow13 dl_type=0x806,nw_proto=1,action=flood
ovs-ofctl add-flow s5 -O OpenFlow13 dl_type=0x806,nw_proto=1,action=flood
ovs-ofctl add-flow s6 -O OpenFlow13 dl_type=0x806,nw_proto=1,action=flood
ovs-ofctl add-flow s7 -O OpenFlow13 dl_type=0x806,nw_proto=1,action=flood
ovs-ofctl add-flow s8 -O OpenFlow13 dl_type=0x806,nw_proto=1,action=flood
ovs-ofctl add-flow s9 -O OpenFlow13 dl_type=0x806,nw_proto=1,action=flood


# Switch to Host
ovs-ofctl add-flow s0 -O OpenFlow13 priority=40000,dl_dst=00:00:00:00:00:01,actions=output:1
ovs-ofctl add-flow s1 -O OpenFlow13 priority=40000,dl_dst=00:00:00:00:00:02,actions=output:1
ovs-ofctl add-flow s2 -O OpenFlow13 priority=40000,dl_dst=00:00:00:00:00:03,actions=output:1
ovs-ofctl add-flow s3 -O OpenFlow13 priority=40000,dl_dst=00:00:00:00:00:04,actions=output:1
ovs-ofctl add-flow s4 -O OpenFlow13 priority=40000,dl_dst=00:00:00:00:00:05,actions=output:1
ovs-ofctl add-flow s5 -O OpenFlow13 priority=40000,dl_dst=00:00:00:00:00:06,actions=output:1
ovs-ofctl add-flow s6 -O OpenFlow13 priority=40000,dl_dst=00:00:00:00:00:07,actions=output:1
ovs-ofctl add-flow s7 -O OpenFlow13 priority=40000,dl_dst=00:00:00:00:00:08,actions=output:1
ovs-ofctl add-flow s8 -O OpenFlow13 priority=40000,dl_dst=00:00:00:00:00:09,actions=output:1
ovs-ofctl add-flow s9 -O OpenFlow13 priority=40000,dl_dst=00:00:00:00:00:0a,actions=output:1


#F9,6
ovs-ofctl add-flow s9 -O OpenFlow13 dl_src=00:00:00:00:00:0a,dl_dst=00:00:00:00:00:07,actions=output:2
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:0a,dl_dst=00:00:00:00:00:07,actions=output:3

#F7,3
ovs-ofctl add-flow s7 -O OpenFlow13 dl_src=00:00:00:00:00:08,dl_dst=00:00:00:00:00:04,actions=output:2

#F6,0
ovs-ofctl add-flow s6 -O OpenFlow13 dl_src=00:00:00:00:00:07,dl_dst=00:00:00:00:00:01,actions=output:3
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:07,dl_dst=00:00:00:00:00:01,actions=output:5
ovs-ofctl add-flow s3 -O OpenFlow13 dl_src=00:00:00:00:00:07,dl_dst=00:00:00:00:00:01,actions=output:4
ovs-ofctl add-flow s1 -O OpenFlow13 dl_src=00:00:00:00:00:07,dl_dst=00:00:00:00:00:01,actions=output:3

#R F0,6
ovs-ofctl add-flow s0 -O OpenFlow13 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:07,actions=output:2
ovs-ofctl add-flow s1 -O OpenFlow13 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:07,actions=output:2
ovs-ofctl add-flow s3 -O OpenFlow13 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:07,actions=output:3
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:07,actions=output:4

#F3,7
ovs-ofctl add-flow s3 -O OpenFlow13 dl_src=00:00:00:00:00:04,dl_dst=00:00:00:00:00:08,actions=output:4
ovs-ofctl add-flow s1 -O OpenFlow13 dl_src=00:00:00:00:00:04,dl_dst=00:00:00:00:00:08,actions=output:3
ovs-ofctl add-flow s0 -O OpenFlow13 dl_src=00:00:00:00:00:04,dl_dst=00:00:00:00:00:08,actions=output:3

#F1,8
ovs-ofctl add-flow s1 -O OpenFlow13 dl_src=00:00:00:00:00:02,dl_dst=00:00:00:00:00:09,actions=output:3
ovs-ofctl add-flow s0 -O OpenFlow13 dl_src=00:00:00:00:00:02,dl_dst=00:00:00:00:00:09,actions=output:4
ovs-ofctl add-flow s9 -O OpenFlow13 dl_src=00:00:00:00:00:02,dl_dst=00:00:00:00:00:09,actions=output:2
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:02,dl_dst=00:00:00:00:00:09,actions=output:6

#R F8,1
ovs-ofctl add-flow s8 -O OpenFlow13 dl_src=00:00:00:00:00:09,dl_dst=00:00:00:00:00:02,actions=output:2
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:09,dl_dst=00:00:00:00:00:02,actions=output:2
ovs-ofctl add-flow s9 -O OpenFlow13 dl_src=00:00:00:00:00:09,dl_dst=00:00:00:00:00:02,actions=output:3
ovs-ofctl add-flow s0 -O OpenFlow13 dl_src=00:00:00:00:00:09,dl_dst=00:00:00:00:00:02,actions=output:2

#F6,9
ovs-ofctl add-flow s6 -O OpenFlow13 dl_src=00:00:00:00:00:07,dl_dst=00:00:00:00:00:0a,actions=output:3
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:07,dl_dst=00:00:00:00:00:0a,actions=output:6
ovs-ofctl add-flow s8 -O OpenFlow13 dl_src=00:00:00:00:00:07,dl_dst=00:00:00:00:00:0a,actions=output:3

#F8,5
ovs-ofctl add-flow s8 -O OpenFlow13 dl_src=00:00:00:00:00:09,dl_dst=00:00:00:00:00:06,actions=output:3
ovs-ofctl add-flow s9 -O OpenFlow13 dl_src=00:00:00:00:00:09,dl_dst=00:00:00:00:00:06,actions=output:2

#R F5,8
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:06,dl_dst=00:00:00:00:00:09,actions=output:2
ovs-ofctl add-flow s9 -O OpenFlow13 dl_src=00:00:00:00:00:06,dl_dst=00:00:00:00:00:09,actions=output:4

#F9,1
ovs-ofctl add-flow s9 -O OpenFlow13 dl_src=00:00:00:00:00:0a,dl_dst=00:00:00:00:00:02,actions=output:5

#R F1,9
ovs-ofctl add-flow s1 -O OpenFlow13 dl_src=00:00:00:00:00:02,dl_dst=00:00:00:00:00:0a,actions=output:4

#F3,0
ovs-ofctl add-flow s3 -O OpenFlow13 dl_src=00:00:00:00:00:04,dl_dst=00:00:00:00:00:01,actions=output:4
ovs-ofctl add-flow s1 -O OpenFlow13 dl_src=00:00:00:00:00:04,dl_dst=00:00:00:00:00:01,actions=output:3

#R F0,3
ovs-ofctl add-flow s0 -O OpenFlow13 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:04,actions=output:2
ovs-ofctl add-flow s1 -O OpenFlow13 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:04,actions=output:2

#F4,3
ovs-ofctl add-flow s4 -O OpenFlow13 dl_src=00:00:00:00:00:05,dl_dst=00:00:00:00:00:04,actions=output:2
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:05,dl_dst=00:00:00:00:00:04,actions=output:5

#R F3,4
ovs-ofctl add-flow s3 -O OpenFlow13 dl_src=00:00:00:00:00:04,dl_dst=00:00:00:00:00:05,actions=output:3
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:04,dl_dst=00:00:00:00:00:05,actions=output:7

#F7,2
ovs-ofctl add-flow s7 -O OpenFlow13 dl_src=00:00:00:00:00:08,dl_dst=00:00:00:00:00:03,actions=output:2
ovs-ofctl add-flow s3 -O OpenFlow13 dl_src=00:00:00:00:00:08,dl_dst=00:00:00:00:00:03,actions=output:4
ovs-ofctl add-flow s1 -O OpenFlow13 dl_src=00:00:00:00:00:08,dl_dst=00:00:00:00:00:03,actions=output:5

#R F2,7
ovs-ofctl add-flow s2 -O OpenFlow13 dl_src=00:00:00:00:00:03,dl_dst=00:00:00:00:00:08,actions=output:2
ovs-ofctl add-flow s1 -O OpenFlow13 dl_src=00:00:00:00:00:03,dl_dst=00:00:00:00:00:08,actions=output:2
ovs-ofctl add-flow s3 -O OpenFlow13 dl_src=00:00:00:00:00:03,dl_dst=00:00:00:00:00:08,actions=output:2

#F0,8
ovs-ofctl add-flow s0 -O OpenFlow13 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:09,actions=output:4
ovs-ofctl add-flow s9 -O OpenFlow13 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:09,actions=output:2
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:09,actions=output:6

#R F8,0
ovs-ofctl add-flow s8 -O OpenFlow13 dl_src=00:00:00:00:00:09,dl_dst=00:00:00:00:00:01,actions=output:2
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:09,dl_dst=00:00:00:00:00:01,actions=output:2
ovs-ofctl add-flow s9 -O OpenFlow13 dl_src=00:00:00:00:00:09,dl_dst=00:00:00:00:00:01,actions=output:3

#F6,1
ovs-ofctl add-flow s6 -O OpenFlow13 dl_src=00:00:00:00:00:07,dl_dst=00:00:00:00:00:02,actions=output:3
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:07,dl_dst=00:00:00:00:00:02,actions=output:5
ovs-ofctl add-flow s3 -O OpenFlow13 dl_src=00:00:00:00:00:07,dl_dst=00:00:00:00:00:02,actions=output:4

#R F1,6
ovs-ofctl add-flow s1 -O OpenFlow13 dl_src=00:00:00:00:00:02,dl_dst=00:00:00:00:00:07,actions=output:2
ovs-ofctl add-flow s3 -O OpenFlow13 dl_src=00:00:00:00:00:02,dl_dst=00:00:00:00:00:07,actions=output:3
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:02,dl_dst=00:00:00:00:00:07,actions=output:4

#F2,1
ovs-ofctl add-flow s2 -O OpenFlow13 dl_src=00:00:00:00:00:03,dl_dst=00:00:00:00:00:02,actions=output:3
ovs-ofctl add-flow s3 -O OpenFlow13 dl_src=00:00:00:00:00:03,dl_dst=00:00:00:00:00:02,actions=output:4

#R F1,2
ovs-ofctl add-flow s1 -O OpenFlow13 dl_src=00:00:00:00:00:02,dl_dst=00:00:00:00:00:03,actions=output:2
ovs-ofctl add-flow s3 -O OpenFlow13 dl_src=00:00:00:00:00:02,dl_dst=00:00:00:00:00:03,actions=output:5

#F5,0
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:06,dl_dst=00:00:00:00:00:01,actions=output:5
ovs-ofctl add-flow s3 -O OpenFlow13 dl_src=00:00:00:00:00:06,dl_dst=00:00:00:00:00:01,actions=output:4
ovs-ofctl add-flow s1 -O OpenFlow13 dl_src=00:00:00:00:00:06,dl_dst=00:00:00:00:00:01,actions=output:3

#R F0,5
ovs-ofctl add-flow s0 -O OpenFlow13 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:06,actions=output:2
ovs-ofctl add-flow s1 -O OpenFlow13 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:06,actions=output:2
ovs-ofctl add-flow s3 -O OpenFlow13 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:06,actions=output:3

#F7,5
ovs-ofctl add-flow s7 -O OpenFlow13 dl_src=00:00:00:00:00:08,dl_dst=00:00:00:00:00:06,actions=output:4

#F6,5
ovs-ofctl add-flow s6 -O OpenFlow13 dl_src=00:00:00:00:00:07,dl_dst=00:00:00:00:00:06,actions=output:3

#R F5,6
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:06,dl_dst=00:00:00:00:00:07,actions=output:4

#F5,7
ovs-ofctl add-flow s5 -O OpenFlow13 dl_src=00:00:00:00:00:06,dl_dst=00:00:00:00:00:08,actions=output:9


#sudo mn --custom topo.py --topo mytopo --mac --arp  --switch ovs,protocol=OpenFlow13 --controller none
