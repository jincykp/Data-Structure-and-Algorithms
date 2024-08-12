//queue using 2stack

class Stack {
  List stack = [];
  push(int value) {
    stack.add(value);
  }

  pop() {
    if (stack.isEmpty) {
      return;
    }
    return stack.removeAt(0);
  }
}

class QueueStack {
  Stack s1 = Stack();
  Stack s2 = Stack();
  enqueue(int data) {
    s1.push(data);
  }

  dequeue() {
    if (s2.stack.isEmpty) {
      while (s1.stack.isNotEmpty) {
        s2.push(s1.pop());
      }
    }
    s2.pop();
  }
}

void main() {
  QueueStack que = QueueStack();
  que.enqueue(3);
  que.enqueue(4);
  print(que.s1.stack);
  que.dequeue();
  que.dequeue();
  print('****');
  print(que.s2.stack);
}
