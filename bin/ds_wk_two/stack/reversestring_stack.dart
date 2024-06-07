//reverse string using stack

String reverseString(String s) {
  List<String> stack = []; // Initialize an empty stack

  // Push all characters of the string onto the stack
  for (int i = 0; i < s.length; i++) {
    stack.add(s[i]); // This is the push operation
  }

  // Initialize the result  string
  String reversedString = '';

  // Pop characters from the stack until it's empty
  while (stack.isNotEmpty) {
    reversedString =
        reversedString + stack.removeLast(); // This is the pop operation
  }

  return reversedString;
}

void main() {
  String s = "brototype";
  String reversedS = reverseString(s);
  print(reversedS); // Output: "olleh"
}
