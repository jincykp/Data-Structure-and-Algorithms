//stack using 2queue
class Queue {
  List queue = [];
  enqueue(int value) {
    queue.add(value);
  }

  dequeue() {
    if (queue.isEmpty) {
      return;
    }
    return queue.removeAt(0);
  }
}

class StackusingQueue {
  Queue q1 = Queue();
  Queue q2 = Queue();
  push(int value) {
    while (q1.queue.isNotEmpty) {
      q2.enqueue(q1.dequeue());
    }
    q1.enqueue(value);
    while (q2.queue.isNotEmpty) {
      q1.enqueue(q2.dequeue());
    }
    //return q1.queue;
  }

  pop() {
    q1.dequeue();
  }
}

void main() {
  StackusingQueue stack = StackusingQueue();

  stack.push(4);
  stack.push(5);
  stack.push(6);
  print(stack.q1.queue);
  print("*********");
  stack.pop();
  print(stack.q1.queue);
}
