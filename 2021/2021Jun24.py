#!/usr/bin/env python3
## Given an undirected graph, determine if a cycle exists in the graph.
## 
## Here is a function signature:
## 
## Can you solve this in linear time, linear space?

def find_cycle(graph, duplicate=0, acc=[]):
    # Fill this in.
    print(acc)
    keys = list(graph.keys())
    if keys == []:
        return False
    
    if duplicate == 2:
        return True

    acc = acc+keys

    for i in range(len(keys)):
        if graph[i] in acc:
            duplicate += 1
    for i in range(len(keys)):
        return find_cycle(graph[i], duplicate, acc)

graph = {
  'a': {'a2':{}, 'a3':{} },
  'b': {'b2':{}},
  'c': {}
}
print(find_cycle(graph, 0))
# False
graph['c'] = graph
print(find_cycle(graph))
# True

