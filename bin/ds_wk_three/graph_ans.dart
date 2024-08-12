import 'dart:collection';

class Graph {
  Map<int, List<int>> graph = {};

  void vertex(int value) {
    if (!graph.containsKey(value)) {
      graph[value] = [];
    }
  }

  void addEdge(int source, int destination) {
    if (!graph.containsKey(source)) {
      vertex(source);
    }
    if (!graph.containsKey(destination)) {
      vertex(destination);
    }
    graph[source]!.add(destination);
  }

  // void remove(int source) {
  //   if (graph.containsKey(source)) {
  //     graph.remove(source);
  //   }
  //   graph.forEach((key, value) {
  //     value.remove(source);
  //   });
  // }
  void bfsTraversal() {
    Set<int> visited = {};
    Queue<int> queue = Queue<int>();
    graph.forEach((key, value) {
      if (!visited.contains(key)) {
        queue.add(key);
        visited.add(key);

        while (queue.isNotEmpty) {
          int current = queue.removeFirst();
          print(current);

          for (int neighbor in graph[current]!) {
            if (!visited.contains(neighbor)) {
              queue.add(neighbor);
              visited.add(neighbor);
            }
          }
        }
      }
    });
  }

  void dfsTraversal() {
    Set<int> visited = {};

    void dfs(int vertex) {
      print(vertex);
      visited.add(vertex);

      for (var i in graph[vertex]!) {
        if (!visited.contains(i)) {
          dfs(i);
        }
      }
    }

    graph.forEach((key, value) {
      if (!visited.contains(key)) {
        dfs(key);
      }
    });
  }
}

void main() {
  Graph g = Graph();
  g.addEdge(100, 120);
  g.addEdge(10, 100);
  g.addEdge(10, 120);
  g.addEdge(10, 150);
  g.addEdge(100, 12);

  g.bfsTraversal();
}
