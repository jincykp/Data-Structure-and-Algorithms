List<int> quick(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int pivot = arr[arr.length ~/ 2];
  List<int> left = [];
  List<int> equal = [];
  List<int> right = [];

  for (int num in arr) {
    if (num < pivot) {
      left.add(num);
    } else if (num == pivot) {
      equal.add(num);
    } else {
      right.add(num);
    }
  }

  return [...quick(left), ...equal, ...quick(right)];
  // List<int> sortedlist = [];
  // sortedlist.addAll(quick(left));
  // sortedlist.addAll(quick(equal));
  // sortedlist.addAll(quick(right));

  // return sortedlist;
}

void main() {
  List<int> arr = [1, 2, 4, 6, 7, 98, 5, 3];
  quick(arr);
  List<int> qu = quick(arr);
  print(qu);
}
