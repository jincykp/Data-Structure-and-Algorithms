//========================bubble sorting============================
void bubbleSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n - 1; i++) {
    // Track if any swap happened
    bool swapped = false;
    for (int j = 0; j < n - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        // Swap elements
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
        swapped = true;
      }
    }
    // If no elements were swapped, the list is already sorted
    if (!swapped) {
      break;
    }
  }
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  print('Unsorted list: $numbers');
  bubbleSort(numbers);

  print('Sorted list: $numbers');
}
//time=O(n)
//space=O(1)