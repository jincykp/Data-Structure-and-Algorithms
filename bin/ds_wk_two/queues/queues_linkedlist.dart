class Node {
  Node? next;
  int? data;

  Node(this.data);
}

// ignore: camel_case_types
class Queue {
  Node? front;
  Node? rear;

  void enquea(int data) {
    Node newnode = Node(data);

    if (front == null) {
      front = rear = newnode;
    } else {
      rear?.next = newnode;
      rear = newnode;
    }
  }

  void dequea() {
    if (front == null) {
      return;
    } else {
      front = front?.next;
    }
  }

  void disply() {
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Queue q = Queue();
  q.enquea(10);
  q.enquea(20);
  q.enquea(40);
  q.enquea(50);
  q.enquea(60);
  q.disply();
  print('\n');
}
