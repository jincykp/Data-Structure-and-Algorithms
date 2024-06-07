class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class Stack {
  Node? top;

  void push(dynamic data) {
    Node newnode = Node(data);
    if (top == null) {
      top = newnode;
    } else {
      newnode.next = top;
      top = newnode;
    }
  }

  void pop() {
    if (top == null) {
      return;
    } else {
      top = top?.next;
    }
  }

  void show() {
    Node? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Stack st = Stack();
  st.push(49);
  st.push(45);
  st.push(24);
  st.push(22);
  st.push(2);

  st.show();
}
