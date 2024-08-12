class Graph {
  Map<int, List<int>> graph = {};

  void insert(int vertix, int edge, [bool isbidirectional = false]) {
    if (!graph.containsKey(vertix)) {
      graph[vertix] = [];
    }
    if (!graph.containsKey(edge)) {
      graph[edge] = [];
    }
    graph[vertix]!.add(edge);
    if (isbidirectional) {
      graph[edge]!.add(vertix);
    }
  }

  void showedges(int vertix) {
    if (graph.containsKey(vertix)) {
      print(graph[vertix]);
    }
  }

  bfs(int vertix) {
    Set<int> visited = {};
    List<int> que = [];

    visited.add(vertix);
    que.add(vertix);
    while (que.isNotEmpty) {
      int current = que.removeAt(0);
      for (var i in graph[current]!) {
        if (!visited.contains(i)) {
          visited.add(i);
          que.add(i);
        }
      }
    }
    print(visited);
  }

  dfs(int vertix) {
    if (graph.containsKey(vertix)) {
      Set<int> visited = {};
      dfshelper(vertix, visited);
      print(visited.toList());
    }
  }

  dfshelper(int vertix, Set<int> visited) {
    visited.add(vertix);
    for (var i in graph[vertix]!) {
      if (!visited.contains(i)) {
        dfshelper(i, visited);
      }
    }
  }

  void display() {
    graph.forEach((key, vertix) {
      print('$key:$vertix');
    });
  }
}

void main() {
  Graph grap = Graph();
  grap.insert(10, 14);
  grap.insert(10, 15);
  grap.insert(19, 10);
  grap.insert(10, 17);
  grap.insert(10, 18);
  grap.insert(17, 19);
  grap.insert(17, 20);
  grap.bfs(10);
}
