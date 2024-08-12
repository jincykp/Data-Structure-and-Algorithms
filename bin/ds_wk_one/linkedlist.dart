class Node {
  var data; 
  Node? next;
  Node(this.data);
}

class Linked {
  Node? head; 
  void add(var acd) {
    if (head == null) {
      head = Node(acd);
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = Node(acd);
    }
  }

  void insertAfterData(var targetData, var newData) {
    Node? current = head;
    while (current != null && current.data != targetData) {
      current = current.next;
    }
    if (current == null) {
      print("Node with data $targetData not found.");
      return;
    }
    Node newNode = Node(newData);
    newNode.next = current.next;
    current.next = newNode;
  }

//-------------------------diplay--------
  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

//-------------------------delete Head-----------
  void delete() {
    if (head == null) {
      print('List is empty');
      return;
    }
    head = head!.next;
  }

//=================delete middle================
  void middledelete() {
    if (head == null && head!.next == null) {
      return;
    }
    Node? slow = head;
    Node? fast = head;
    Node? prev = null;
    while (fast != null && fast.next != null) {
      prev = slow;
      slow = slow!.next;
      fast = fast.next!.next;
    }
    if (prev != null) {
      prev.next = slow!.next;
    } else {
      head = head!.next;
    }
  }

  // ================SUM=============

  int sum() {
    Node? current = head;
    dynamic total = 0;
    while (current != null) {
      total = total + current.data;
      current = current.next;
    }
    return total;
  } //======

  void reverse() {
    Node? previous = null;
    Node? current = head;
    Node? next;
    while (current != null) {
      next = current.next;
      current.next = previous;
      previous = current;
      current = next;
    }
    head = previous;
  }
}

void main() {
  Linked l = Linked();
  l.add(1);
  l.add(2);
  l.add(3);
  l.add(4);
  l.middledelete();
  //l.add(5);
  // l.add(6);
  l.display();
  print('\n');
  l.delete();
  l.display();
  print('\n');
  l.middledelete();
  l.display();
  print('\n');
  int sumis = l.sum();
  print(' sum of linked list is = $sumis');
  print('\n');
  l.reverse();

  l.display();
  l.insertAfterData(1, 66);
  l.display();
}

//==================add first ,end,after in a linkedlist-======

// class Node {
//   var data;
//   Node? next;

//   Node(this.data);
// }

// class SinglyNodeList {
//   Node? head;

//   void addToEnd(var data) {
//     if (head == null) {
//       head = Node(data);
//     } else {
//       Node? current = head;
//       while (current!.next != null) {
//         current = current.next;
//       }
//       current.next = Node(data);
//     }
//   }

//   void addtoFirst(var data) {
//     Node newNode = Node(data);
//     newNode.next = head;
//     head = newNode;
//   }

//   // void insertAfter(Node? prevNode, var data) {
//   //   if (prevNode == null) {
//   //     print("Previous node cannot be null");
//   //     return;
//   //   }
//   //   Node newNode = Node(data);
//   //   newNode.next = prevNode.next;
//   //   prevNode.next = newNode;
//   // }

//   void display() {
//     Node? current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   SinglyNodeList list = SinglyNodeList();
//   // list.addtoFirst(1);
//   // list.addtoFirst(3);
//   list.add(2);

//   // list.addToEnd(5); // Add to end (original behavior)
//   // list.addToEnd(4); // Add to end (original behavior)
//   // Add 3 to the front
//   //list.display(); // Output: 3 1 2

//   // Insert after the first node
//   Node? firstNode = list.head;
//   list.insertAfter(3, 9);
//   list.display(); // Output: 3 4 1 2
// }
