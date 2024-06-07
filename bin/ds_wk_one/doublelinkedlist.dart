class Node {
  var data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;

  void append(var data) {
    final newNode = Node(data);
    if (tail == null) {
      head = tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  void prepend(var data) {
    final newNode = Node(data);
    if (head == null) {
      head = tail = newNode;
    } else {
      newNode.next = head;
      head!.prev = newNode;
      head = newNode;
    }
  }

  bool delete(var data) {
    Node? current = head;
    while (current != null) {
      if (current.data == data) {
        if (current.prev != null) {
          current.prev!.next = current.next;
        } else {
          head = current.next;
        }
        if (current.next != null) {
          current.next!.prev = current.prev;
        } else {
          tail = current.prev;
        }
        return true;
      }
      current = current.next;
    }
    return false;
  }

  void printForward() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void printBackward() {
    Node? current = tail;
    while (current != null) {
      print(current.data);
      current = current.prev;
    }
  }
}

void main() {
  final list = DoublyLinkedList();

  // Adding elements to the end of the list
  list.append(1);
  list.append(2);
  list.append(3);

  // Adding elements to the beginning of the list
  list.prepend(0);
  list.prepend(-1);

  // Print the list forward
  print('Print forward:');
  list.printForward();

  // Delete an element
  list.delete(2);

  // Print the list forward after deletion
  print('After deleting 2, print forward:');
  list.printForward();

  // Print the list backward
  print('Print backward:');
  list.printBackward();
}
