void main() {
  List<int> stack = [12, 3, 4, 5, 6];
  int count = 0;
  while (stack.isNotEmpty) {
    if (stack.last % 2 == 0) {
      count++;
    }
    stack.removeLast();
  }
  print(count);
}
