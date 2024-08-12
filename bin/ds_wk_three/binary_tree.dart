// Define the Node class
import 'dart:collection';

class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}

// Define the BinaryTree class
class BinaryTree {
  Node? root;

  // Method to insert a new value into the tree
  void insert(int value) {
    Node newNode = Node(value);
    if (root == null) {
      root = newNode;
    } else {
      Queue<Node> queue = Queue<Node>();
      queue.add(root!);

      while (queue.isNotEmpty) {
        Node current = queue.removeFirst();

        if (current.left == null) {
          current.left = newNode;
          break;
        } else {
          queue.add(current.left!);
        }

        if (current.right == null) {
          current.right = newNode;
          break;
        } else {
          queue.add(current.right!);
        }
      }
    }
  }

  // In-order traversal
  void inOrderTraversal(Node? node) {
    if (node != null) {
      inOrderTraversal(node.left);
      print(node.data);
      inOrderTraversal(node.right);
    }
  }

  // Pre-order traversal
  void preOrderTraversal(Node? node) {
    if (node != null) {
      print(node.data);
      preOrderTraversal(node.left);
      preOrderTraversal(node.right);
    }
  }

  // Post-order traversal
  void postOrderTraversal(Node? node) {
    if (node != null) {
      postOrderTraversal(node.left);
      postOrderTraversal(node.right);
      print(node.data);
    }
  }
}

void main() {
  BinaryTree tree = BinaryTree();
  tree.insert(1);
  tree.insert(2);
  tree.insert(3);
  tree.insert(4);
  tree.insert(5);
  tree.insert(6);
  tree.insert(7);

  print('In-order traversal:');
  tree.inOrderTraversal(tree.root);

  print('Pre-order traversal:');
  tree.preOrderTraversal(tree.root);

  print('Post-order traversal:');
  tree.postOrderTraversal(tree.root);
}
