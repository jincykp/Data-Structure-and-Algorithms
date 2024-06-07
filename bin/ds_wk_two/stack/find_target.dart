// void main() {
//   List<int> stack = [12, 24, 13, 134, 44, 5];
//   bool find = false;
//   int target = 1;
//   for (var elements in stack) {
//     if (elements == target) {
//       find = true;
//       break;
//     }
//   }
//   if (find) {
//     print('target found');
//   } else {
//     print('given target not found');
//   }
// }
void main() {
  List<int> stack = [12, 13, 14, 15, 16, 27];
  int target = 12;
  bool found = false;
  for (int i = 0; i < stack.length; i++) {
    if (stack[i] == target) {
      found = true;
      break;
    }
  }
  if (!found) {
    print('target found  ');
  } else {
    print('not found');
  }
}
