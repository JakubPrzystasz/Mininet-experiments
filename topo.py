from mininet.topo import Topo

class MyTopo(Topo):
    def build(self):


        h0 = self.addHost('h0')
        h1 = self.addHost('h1')
        h2 = self.addHost('h2')
        h3 = self.addHost('h3')
        h4 = self.addHost('h4')
        h5 = self.addHost('h5')
        h6 = self.addHost('h6')
        h7 = self.addHost('h7')
        h8 = self.addHost('h8')
        h9 = self.addHost('h9')


        s0 = self.addSwitch('s0')
        s1 = self.addSwitch('s1')
        s2 = self.addSwitch('s2')
        s3 = self.addSwitch('s3')
        s4 = self.addSwitch('s4')
        s5 = self.addSwitch('s5')
        s6 = self.addSwitch('s6')
        s7 = self.addSwitch('s7')
        s8 = self.addSwitch('s8')
        s9 = self.addSwitch('s9')


        self.addLink(s0, h0)
        self.addLink(s1, h1)
        self.addLink(s2, h2)
        self.addLink(s3, h3)
        self.addLink(s4, h4)
        self.addLink(s5, h5)
        self.addLink(s6, h6)
        self.addLink(s7, h7)
        self.addLink(s8, h8)
        self.addLink(s9, h9)


        self.addLink(s9, s5)
        self.addLink(s5, s6)
        self.addLink(s7, s3)
        self.addLink(s6, s5)
        self.addLink(s5, s3)
        self.addLink(s3, s1)
        self.addLink(s1, s0)
        self.addLink(s0, s7)
        self.addLink(s0, s9)
        self.addLink(s5, s8)
        self.addLink(s8, s9)
        self.addLink(s9, s1)
        self.addLink(s4, s5)
        self.addLink(s1, s2)
        self.addLink(s2, s3)
        self.addLink(s7, s5)
        self.addLink(s5, s7)

topos = {'mytopo':(lambda:MyTopo())}
