from pygraphviz import *
g = AGraph(strict=False,directed=True)


nodes = ['A','B','C','D','E','F','G','H','I','J']
g.add_nodes_from(nodes)

g.get_node('A').attr['label'] = 'A - Inicio'
g.get_node('B').attr['label'] = 'B + $ 2'
g.get_node('C').attr['label'] = 'C - $ 5'
g.get_node('D').attr['label'] = 'D - $ 7'
g.get_node('E').attr['label'] = 'E + $ 11'
g.get_node('F').attr['label'] = 'F + $ 12'
g.get_node('G').attr['label'] = 'G - $ 10'
g.get_node('H').attr['label'] = 'H + $ 4'
g.get_node('I').attr['label'] = 'I - $ 5'
g.get_node('J').attr['label'] = 'J + $ 6'

g.add_edge('A','B')
g.add_edge('B','H')
g.add_edge('H','C')
g.add_edge('C','J')
g.add_edge('J','F')
g.add_edge('F','G')
g.add_edge('G','I')
g.add_edge('I','E')
g.add_edge('E','D')
g.add_edge('D','A')
g.graph_attr['label'] = 'Z = 15'
g.draw("solucion.png",prog='neato')





