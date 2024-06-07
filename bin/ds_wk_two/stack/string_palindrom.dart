void main() {
  String input = "madam";
  checkPalindrome(input);
}

void checkPalindrome(String input) {
  // Create a stack using a List
  List<String> stack = [];

  // Push all characters of the input string onto the stack
  for (int i = 0; i < input.length; i++) {
    stack.add(input[i]);
  }

  // Pop characters from the stack and build the reversed string
  String reversed = '';
  while (stack.isNotEmpty) {
    reversed += stack.removeLast();
  }

  // Compare the original string with the reversed string
  if (input == reversed) {
    print("The string '$input' is a palindrome.");
  } else {
    print("The string '$input' is not a palindrome.");
  }
}
