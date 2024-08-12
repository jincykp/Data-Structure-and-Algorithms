class Node {
  Node? data;
  Node? right;
  Node? left;
  Node(this.data);
}

class BinaryTree {
  Node? root;
  void adddata(var data) {
    Node newdata = Node(data);
    if (root == null) {
      root = newdata;
    } else {
      Node? current = root;
    }
  }
}
