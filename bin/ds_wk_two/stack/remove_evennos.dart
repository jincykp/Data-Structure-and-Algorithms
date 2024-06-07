void main() {
  List<int> stack = [1, 2, 3, 4, 5, 6, 7, 8];
  List<int> result = [];
  while (stack.isNotEmpty) {
    if (stack.last % 2 != 0) {
      result.add(stack.last);
    }
    stack.removeLast();
  }

  print(' $result');
}
