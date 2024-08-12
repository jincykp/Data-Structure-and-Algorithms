//------------------binary_search_tree-_-------
class Node {
  int value;
  Node? left;
  Node? right;
  Node(this.value);
}

class Tree {
  Node? root;
  void insert(int value) {
    if (root == null) {
      root = Node(value);
    } else {
      _insert(value, root!);
    }
  }

  void _insert(int value, Node? node) {
    if (value < node!.value) {
      if (node.left == null) {
        node.left = Node(value);
      } else {
        _insert(value, node.left);
      }
    } else {
      if (node.right == null) {
        node.right = Node(value);
      } else {
        _insert(value, node.right);
      }
    }
  }

  bool contains(int value, Node? node) {
    if (node == null) {
      return false;
    }
    if (node.value == value) {
      return true;
    } else if (value < node.value) {
      return contains(value, node.left);
    } else {
      return contains(value, node.right);
    }
  }

  void traversal(Node? node) {
    if (node == null) {
      return;
    }
    print(node.value);
    traversal(node.left);
    traversal(node.right);
  }

  int length(Node? node) {
    if (node == null) {
      return 0;
    }
    int left = length(node.left);
    int right = length(node.right);
    return left > right ? left + 1 : right + 1;
  }

  bool same(Node? root1, Node? root2) {
    if (root1 == null && root2 == null) {
      return true;
    }
    if (root1 == null || root2 == null) {
      return false;
    }
    if (root1.value != root2.value) {
      return false;
    }
    return same(root1.left, root2.left) && same(root1.right, root2.right);
  }
}
