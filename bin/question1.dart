// import 'dart:io';
// void main(){
//   p rint("enter character");
//   var a=stdin.readLineSync();
//   print("you are entered: $a");
// }
// import 'dart:io';----------------------------1470shuffle

// void main() {
//   List<int> a = [1, 33, 55, 2, 44, 6];
//   int n = 3;
//   List<int> result = [];
//   for (int i = 0; i < n; i++) {
//     result.add(a[i]);
//     result.add(a[i + n]);
//   }
//   print(result);
// }
//---------------------------------1480--------sumaddd
// void main() {
//   List<int> a = [1, 2, 3, 4, 5];
//   int sum = 0;
//   List<int> b = [];
//   for (int i = 0; i < a.length; i++) {
//     {
//       sum = sum + a[i];
//     }
//     b.add(sum);
//   }
//   print(b);
// }
// void main() {
//   int n = 3;
//   List<int> a = [1, 3, 5, 2, 4, 6];
//   List<int> result = [];
//   for (int i = 0; i < a.length; i++) {
//     result.add(a[i]);
//     result.add(a[i + n]);
//   }
//   print(result);
// }
// import 'dart:io';
//------------------------------------join()--------------
// void main() {
//   List<String> words = ["i", 'am', 'jincy'];
//   String w = words.join(",");
//   print(w);
// }
// import 'dart:io';

// //-------------------------split----String ne list lek convert aakkan------
// void main() {
//   String s = "jincy,kp,olavilam,kannur,mahe";
//   String sw = s.split(" ").join();
//   print(sw);
// }
// import 'dart:io';

// void main() {
//   List<int> a = [1, 2, 4, 5, 6];
//   int t = 21;
//   List<int> op = first(a, t);
//   print(op);
// }

// first(List<int> a, int t) {
//   List<int> result = [];
//   for (int i = 0; i < a.length; i++) {
//     for (int j = i + 1; j < a.length; j++) {
//       if (a[i] + a[j] == t) {
//         result.add(a[i]);
//         result.add(a[j]);
//         // result = [i, j];
//       }
//     }
//   }
//   return result;
// }
// import 'dart:io';

// void main() {
//   List<int> a = [1, 2, 4, 5, 6];
//   int t = 7;
//   List<int> op = first(a, t);
//   print(op);
// }

// first(List<int> a, int target) {
//   Set<int> nums = {};
//   List<int> result = [];
//   for (int i = 0; i < a.length; i++) {
//     int num = a[i];
//     int match = target - num;
//     if (nums.contains(match)) {
//       result.add(num);
//       result.add(match);
//     } else {
//       nums.add(num);
//     }
//   }
//   return result;
// }
