

//=========Numbers from 10 to 1==============

// void displayDescending(int n) {
//   if (n == 0) {
//     return;
//   } else {
//     print(n);
//     displayDescending(n - 1);
//   }
// }

// void main() {
//   displayDescending(10);
// }

//------------========sumofdigits-===========------
// int sumOfDigits(int n) {
//   if (n == 0) {
//     return 0;
//   } else {
//     return (n % 10) + sumOfDigits(n ~/ 10);
//   }
// }

// void main() {
//   int number = 12345;
//   int sum = sumOfDigits(number);
//   print("The sum of digits of $number is $sum");
// }

//==========================target findout and aa position il 0 aakuka ==================//
// int binarysearch(List arr, int target, int first, int last) {
//   if (first > last) {
//     return -1;
//   }
//   int mid = (first + (last - first) / 2).floor();

//   if (arr[mid] == target) {
//     arr[mid] = 0;
//     return mid;
//   } else if (arr[mid] > target) {
//     return binarysearch(arr, target, first, mid - 1);
//   } else {
//     return binarysearch(arr, target, mid + 1, last);
//   }
// }

// void main() {
//   List arr = [-1, 1, 222, 3, 4, 5, 6];
//   int target = -1;
//   int result = binarysearch(arr, target, 0, arr.length - 1);
//   if (result >= 0) {
//     print("element found at $result");
//     print('after $arr');
//   } else
//     print("element not found");
// }
//================STRING--REVERSE===========
// String reverseString(String s) {
//   if (s.length <= 1) {
//     return s;
//   } else {
//     return reverseString(s.substring(1)) + s.substring(0, 1);
//   }
// }

// void main() {
//   String originalString = "Hello, world!";
//   String reversedString = reverseString(originalString);
//   print("Original: $originalString");
//   print("Reversed: $reversedString");
// }



//=================even no s  only print===================
// List evennum(List arr, [int index = 0]) {
//   if (index >= arr.length) {
//     return [];
//   }

//   if (arr[index] % 2 == 0 && arr[index] != 0) {
//     return [arr[index]] +  evennum(arr, index + 1);
//   } else {
//     return evennum(arr, index + 1);
//   }
// }

// void main() {
//   List<int> arr = [0, -1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//   List evenNumbers = evennum(arr);
//   print("Even numbers: $evenNumbers");
// }
//==============string palindrome=============
// String checkPalindrome(String str) {
//   if (str.length <= 1) {
//     return "Palindrome";
//   }
//   if (str[0] != str[str.length - 1]) {
//     return "Not Palindrome";
//   }
//   return checkPalindrome(str.substring(1, str.length - 1));
// }

// void main() {
//   String testStr = "radarwz";
//   print("'$testStr' is ${checkPalindrome(testStr)}");
// }
//==============factorial =========
// void main() {
//   int result = factorial(4);
//   print("factorial of 4 is $result ");
// }

// int factorial(int n) {
//   if (n == 0) {
//     return 1;
//   } else {
//     return n * factorial(n - 1);
//   }
// }
// =================fibanoccii===================
// void main() {
//   int n = 8;
//   for (int i = 0; i < n; i++) {
//     print(fibanocci(i));
//   }
// }

// int fibanocci(int n) {
//   if (n <= 1) {
//     return n;
//   } else {
//     return fibanocci(n - 1) + fibanocci(n - 2);
//   }
// }


