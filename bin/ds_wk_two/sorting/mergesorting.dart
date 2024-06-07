//===================merge sort================
List<int> mergeSort(List<int> array) {
  if (array.length <= 1) {
    return array;
  }

  int middle = (array.length / 2).floor();
  List<int> left = mergeSort(array.sublist(0, middle));
  List<int> right = mergeSort(array.sublist(middle));

  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int leftIndex = 0;
  int rightIndex = 0;

  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] < right[rightIndex]) {
      result.add(left[leftIndex]);
      leftIndex++;
    } else {
      result.add(right[rightIndex]);
      rightIndex++;
    }
  }

  while (leftIndex < left.length) {
    result.add(left[leftIndex]);
    leftIndex++;
  }

  while (rightIndex < right.length) {
    result.add(right[rightIndex]);
    rightIndex++;
  }

  return result;
}

void main() {
  List<int> array = [5, 2, 4, 7, 1, 3, 2, 6];
  print("Original array: $array");
  List<int> sortedArray = mergeSort(array);
  print("Sorted array: $sortedArray");
}
//time=O(log n)
//space=O(n)