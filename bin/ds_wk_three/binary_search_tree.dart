//===============binary_search_tree-------
import 'dart:io';

class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data, {this.left, this.right});
}

class BST {
  Node? root;

  //to insert an node===================
  insert(int data) {
    Node? newNode = Node(data);
    if (root == null) {
      root = newNode;
    } else {
      Node? current = root;
      while (true) {
        if (data < current!.data) {
          if (current.left == null) {
            return current.left = newNode;
          } else {
            current = current.left;
          }
        } else {
          if (current.right == null) {
            return current.right = newNode;
          } else {
            current = current.right;
          }
        }
      }
    }
  }

//===================to remove an node=============
  remove(int data) {
    removeHelper(data, root, null);
  }

  removeHelper(int data, Node? current, Node? parent) {
    while (current != null) {
      if (data < current.data) {
        parent = current;
        current = current.left;
      } else if (data > current.data) {
        parent = current;
        current = current.right;
      } else {
        if (current.left != null && current.right != null) {
          current.data = getMin(current.right);
          removeHelper(current.data, current.right, current);
        } else {
          if (parent == null) {
            if (current.right == null) {
              root = current.left;
            } else {
              root = current.right;
            }
          } else {
            if (parent.left == current) {
              if (current.right == null) {
                parent.left = current.left;
              } else {
                parent.left = current.right;
              }
            } else {
              if (current.left == null) {
                parent.right = current.left;
              } else {
                parent.right = current.right;
              }
            }
          }
        }
        break;
      }
    }
  }

  getMin(Node? current) {
    if (current?.left == null) {
      return current?.data;
    } else {
      getMin(current?.left);
    }
  }

/* =================================================*/

  // return true if the tree contains the value

  bool contains(int value) {
    Node? current = root;
    while (current != null) {
      if (value < current.data) {
        current = current.left;
      } else if (value > current.data) {
        current = current.right;
      } else {
        return true;
      }
    }
    return false;
  }

  /* =================================================*/

//print nodes inorder
  inOrder() {
    inOrderHelper(root);
  }

  inOrderHelper(Node? current) {
    if (current != null) {
      inOrderHelper(current.left);
      print(current.data);
      inOrderHelper(current.right);
    }
  }

/* =================================================*/

  //toprint preorder
  preOder() {
    preOderHelper(root);
  }

  preOderHelper(Node? current) {
    if (current != null) {
      stdout.write('${current.data} ');
      preOderHelper(current.left);
      preOderHelper(current.right);
    }
  }
/* =================================================*/

//to print post order

  postOrder() {
    postOderHelper(root);
  }

  postOderHelper(Node? current) {
    if (current != null) {
      postOderHelper(current.left);
      postOderHelper(current.right);
      stdout.write('${current.data} ');
    }
  }

/* =================================================*/

//to find closest elemnt to the target  in the tree

  findClosest(int target) {
    Node? current = root;
    int? closest = current?.data;
    while (current != null) {
      if ((target - closest!).abs() > (target - current.data).abs()) {
        closest = current.data;
      }
      if (target < current.data) {
        current = current.left;
      } else if (target > current.data) {
        current = current.right;
      } else {
        break;
      }
    }
    return closest;
  }

//=================length========
  int length(Node? node) {
    if (node == null) {
      return 0;
    }
    int left = length(node.left);
    int right = length(node.right);
    return left > right ? left + 1 : right + 1;
  }

//=======================check_tree_is_balanced_or_not==========================
  bool isbalanced(Node? node) {
    if (node == null) {
      return true;
    }
    int leftheight = length(node.left);
    int rightheight = length(node.right);
    if ((leftheight - rightheight).abs() <= 1 &&
        isbalanced(node.left) &&
        isbalanced(node.right)) {
      return true;
    }
    return false;
  }

//=======================min_value===============
  findmin() {
    if (root == null) {
      return ("Tree is empty");
    }
    Node? current = root;
    while (current!.left != null) {
      current = current.left;
    }
    return current.data;
  }
//=======================max_value===============

  findmax() {
    if (root == null) {
      return ("tree is empty");
    }
    Node? current = root;
    while (current!.right != null) {
      current = current.right;
    }
    return current.data;
  }

//======================second__smallest================
  secondSmallest() {
    if (root == null || (root!.left == null && root!.right == null)) {
      return ("Tree doesn't have enough elements");
    }

    Node? current = root;

    // If there is no left child, the second smallest is the root
    if (current!.left == null) {
      return current.right!.data;
    }

    // Find the minimum element
    Node? parent;
    current = root;
    while (current!.left != null) {
      parent = current;
      current = current.left;
    }

    // If the smallest node has a right child
    if (current.right != null) {
      current = current.right;
      while (current!.left != null) {
        current = current.left;
      }
      return current.data;
    }

    return parent!.data;
  }

//====================second_largest===========================
  secondLargest() {
    if (root == null || (root!.left == null && root!.right == null)) {
      return ("Tree doesn't have enough elements");
    }

    Node? current = root;

    // If there is no right child, the second largest is the root
    if (current!.right == null) {
      return current.left!.data;
    }

    // Find the maximum element
    Node? parent;
    current = root;
    while (current!.right != null) {
      parent = current;
      current = current.right;
    }

    // If the largest node has a left child
    if (current.left != null) {
      current = current.left;
      while (current!.right != null) {
        current = current.right;
      }
      return current.data;
    }

    return parent!.data;
  }

  //=======================================depth===============

  int getDepth() {
    return length(root) - 1;
  }
  //=================== Check if the tree is a valid BST============================

  bool isBST() {
    return isBSTHelper(root, null, null);
  }

  bool isBSTHelper(Node? node, int? min, int? max) {
    if (node == null) {
      return true;
    }
    if ((min != null && node.data <= min) ||
        (max != null && node.data >= max)) {
      return false;
    }
    return isBSTHelper(node.left, min, node.data) &&
        isBSTHelper(node.right, node.data, max);
  }

  //================================= Check if a number is a power of 2=================================

  //=== Traverse the tree and print all power of 2 values
  void printPowerOfTwoValues() {
    powerhelper(root);
  }

  void powerhelper(Node? node) {
    if (node == null) {
      return;
    }
    powerhelper(node.left);
    if (powerpower(node.data)) {
      print(node.data);
    }
    powerhelper(node.right);
  }

  bool powerpower(int number) {
    return number > 0 && (number & (number - 1)) == 0;
  }
}

void main() {
  BST bst = BST();
  bst.insert(480);
  bst.insert(16);
  bst.insert(168);
//  bst.remove(4);
  bst.insert(26);
//  print(bst.findClosest(15));
  print(bst.secondSmallest());
  // bst.insert(10);
  // bst.insert(2);
  // bst.insert(23);

  // print(bst.contains(4));
  // bst.inOrder();
  // bst.preOder();
  // stdout.writeln();
  // bst.postOrder();
  // stdout.writeln();
  //int treelength = bst.length(bst.root);
  // print('height=$treelength');
  // print("min element is ${bst.findmin()}");
  // print("min element is ${bst.findmax()}");
  // print('is the tree is balanced ${bst.isbalanced(bst.root)}');
  // print("Is a valid BST: ${bst.isBST()}");
  print("Power of 2 values in the tree:");
  bst.printPowerOfTwoValues();
  // print("Tree depth: ${bst.getDepth()}");
}
