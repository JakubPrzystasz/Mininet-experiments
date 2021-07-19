import sys
import copy

class Node:
    def __init__(self):
        self.interfaces = dict()

    def add_int(self, dst, port):
        self.interfaces[dst] = port

    def __repr__(self):
        return f'{self.interfaces}\n'


class Edge:
    def __init__(self, node1, node2):
        self.node1 = node1
        self.node2 = node2


class Path:
    def __init__(self, src, dst, edges):
        self.edges = edges
        self.src = src
        self.dst = dst

    def create_flows(self, nodes):
        for edge in self.edges:
            print(f"ovs-ofctl add-flow s{edge.node1} -O OpenFlow13 "
                  f"dl_src=00:00:00:00:00:0{(int(self.src + 1)):x},"
                  f"dl_dst=00:00:00:00:00:0{(int(self.dst + 1)):x},"
                  f"actions=output:{nodes[f's{edge.node1}'].interfaces[f's{edge.node2}']}")


    def __str__(self):
        return f'path{self.src}{self.dst}'

    def create_reverse(self):
        edges = self.edges.copy().reverse()
        for edge,i in enumerate(edges):
            self.node1,self.node2 = self.node2,self.node1
        return Path(self.dst, self.src,edges)


def LinkToHosts(nodes):
    for key in nodes.keys():
        if key[0] == 's':
            for key1 in nodes[key].interfaces:
                if key1[0] == 'h':
                    print(f"ovs-ofctl add-flow {key} -O OpenFlow13 "
                        f"dl_dst=00:00:00:00:00:0{(int(key1[1:]) + 1):x},"
                        f"actions=output:{nodes[key].interfaces[key1]}")

if __name__ == "__main__":
    nodes = dict()

    with open("links.txt") as file:
        for line in file.readlines():
            line = line.rstrip()
            line = line.replace('(OK OK)', '')
            str_node = line.split('<->')
            for i, node in enumerate(str_node):
                str_node[i] = node.split('-')

            src = str_node[0]
            dst = str_node[1]

            if src[0] not in nodes.keys():
                nodes[src[0]] = Node()

            nodes[src[0]].add_int(dst[0], src[1][3:])

            if dst[0] not in nodes.keys():
                nodes[dst[0]] = Node()

            nodes[dst[0]].add_int(src[0], dst[1][3:])

            src = str_node[0]
            dst = str_node[1]

            if src[0] not in nodes.keys():
                nodes[src[0]] = Node()

            nodes[src[0]].add_int(dst[0], src[1][3:])

            if dst[0] not in nodes.keys():
                nodes[dst[0]] = Node()

            nodes[dst[0]].add_int(src[0], dst[1][3:])

    paths = [
        Path(9, 6, [Edge(9, 5), Edge(5, 6)]),

        Path(7, 3, [Edge(7, 3)]),

        Path(6, 0, [Edge(6, 5), Edge(5, 4), Edge(4, 0)]),
        Path(0, 6, [Edge(0, 4), Edge(4, 5), Edge(5, 6)]),

        Path(3, 7, [Edge(3, 1), Edge(1, 9), Edge(9, 7)]),
        
        Path(1, 8, [Edge(1, 9), Edge(9, 7), Edge(7, 8)]),
        Path(8, 1, [Edge(8, 7), Edge(7, 9), Edge(9, 1)]),

        Path(6, 9, [Edge(6, 9)]),
        
        Path(8, 5, [Edge(8, 5)]),
        Path(5, 8, [Edge(5, 8)]),

        Path(9, 1, [Edge(9, 1)]),
        Path(1, 9, [Edge(1, 9)]),

        Path(3, 0, [Edge(3, 1), Edge(1, 0)]),
        Path(0, 3, [Edge(0, 1), Edge(1, 3)]),

        Path(4, 3, [Edge(4, 5), Edge(5, 3)]),
        Path(3, 4, [Edge(3, 5), Edge(5, 4)]),

        Path(7, 2, [Edge(7, 6), Edge(6, 2)]),
        Path(2, 7, [Edge(2, 6), Edge(6, 7)]),
        
        Path(0, 8, [Edge(0, 5), Edge(5, 8)]),
        Path(8, 0, [Edge(8, 5), Edge(5, 0)]),

        Path(6, 1, [Edge(6, 9), Edge(9, 1)]),
        Path(1, 6, [Edge(1, 9), Edge(9, 6)]),

        Path(2, 1, [Edge(2, 3), Edge(3, 1)]),
        Path(1, 2, [Edge(1, 3), Edge(3, 2)]),
        
        Path(5, 0, [Edge(5, 4), Edge(4, 0)]),
        Path(0, 5, [Edge(0, 4), Edge(4, 5)]),      

        Path(7, 2, [Edge(7, 6), Edge(6, 2)]),
        Path(2, 7, [Edge(2, 6), Edge(6, 7)]),

        Path(6, 5, [Edge(6, 5)]),
        Path(5, 6, [Edge(5, 6)]),

        Path(7, 5, [Edge(7, 5)]),

        Path(5, 7, [Edge(5, 7)])
    ]

    for path in paths:
        path.create_flows(nodes)

    LinkToHosts(nodes)

