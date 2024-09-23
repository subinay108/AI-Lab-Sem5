# WAPP for Breadth First Search Traversal

def bfsTraversal(graph, start):
    queue = [start]
    visited = set()
    
    while queue:
        # print('queue:', queue)
        node = queue.pop(0)
        if node not in visited:
            visited.add(node)
            print(node, end='->')

            for neighbor in graph[node]:
                if neighbor not in visited:
                    queue.append(neighbor)

if __name__ == '__main__':
    graph = { 
        1: [2, 3, 4], 
        2: [1, 4, 5],
        3: [1, 6, 7, 8],
        4: [1, 2],
        5: [2],
        6: [3, 7],
        7: [3, 6, 8],
        8: [3, 7]
    }
    bfsTraversal(graph, 2)


