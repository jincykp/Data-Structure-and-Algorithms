// //==========================BINARY SEARCH ==================//
int binarysearch(List arr, int target, int first, int last) {
  if (first > last) {
    return -1;
  }
  int mid = (first + (last - first) / 2).floor();

  if (arr[mid] == target) {
    return mid;
  } else if (arr[mid] < target) {
    return binarysearch(arr, target, first, mid - 1);
  } else {
    return binarysearch(arr, target, mid + 1, last);
  }
}

void main() {
  List arr = [9, 8, 7, 5, 4, 2, 1];
  int target = 4;
  int result = binarysearch(arr, target, 0, arr.length - 1);
  if (result >= 0) {
    print("elemet found at $result");
  } else {
    print("element not found");
  }
}
