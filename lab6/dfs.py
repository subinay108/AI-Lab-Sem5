# WAPP for Depth First Search

def dfs(graph, start):
    stack = [start]
    visited = set()
    
    while stack:
        node = stack.pop()
        if node not in visited:
            visited.add(node)
            print(node, end='->')

            for neighbor in graph[node]:
                if neighbor not in visited:
                    stack.append(neighbor)
    
    

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
    dfs(graph, 1)


