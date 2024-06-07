void main() {
  List<int> stack = [12, 1, 3, 2, 3, 9, 5, 6, 7, 89, 88];
  List<int> result = [];
  while (stack.isNotEmpty) {
    int count = 0;
    int value = stack.removeLast();
    for (int i = 1; i <= value; i++) {
      if (value % i == 0) {
        count++;
      }
    }
    if (count <= 2) {
      result.add(value);
    }
  }
  print(result);
}
