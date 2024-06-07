class Stack {
  List<int> queue = [];
  push(int data) {
    queue.add(data);
  }

  pop() {
    if (queue.isEmpty) {
      return;
    }
    queue.removeAt(0);
  }
}

// class QueueStack {
//   Stack s1 = Stack();
//   Stack s2 = Stack();
//   enqueue(int data) {
//     s1.queue.add(data);
//   }

//   dequeue() {
//     if (s2.queue.isEmpty) {
//       while (s1.queue.isNotEmpty) {
//         s2.queue.add(s1.pop());
//       }
//     }
//     s2.pop();
//   }
// }

// void main() {
//   QueueStack qk = QueueStack();
//   qk.enqueue(12);
//   qk.enqueue(13);
//   qk.enqueue(16);
//   //qk.dequeue();
//   print(qk.s1.queue);
// }
void main() {
  String s = "kann";
  String reversed = reverse(s);
  print(reversed);
}

String reverse(String s) {
  List<String> stack = [];
  for (int i = 0; i < s.length; i++) {
    stack.add(s[i]);
  }
  String rere = '';
  while (stack.isNotEmpty) {
    rere = rere + stack.removeLast();
  }
  return rere;
}
