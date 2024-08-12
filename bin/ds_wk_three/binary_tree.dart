import 'dart:io';

class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data, {this.left, this.right});
}

class BST {
  Node? root;

  //to insert an node
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

/* =================================================*/

//to remove an node
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
}

void main() {
  BST bst = BST();
  bst.insert(4);
  bst.insert(5);
  bst.insert(1);
  bst.remove(4);
  bst.insert(8);
  bst.insert(10);
  bst.insert(2);
  print(bst.contains(4));
  bst.inOrder();
  bst.preOder();
  stdout.writeln();
  bst.postOrder();
  stdout.writeln();
  print(bst.findClosest(3));
}
