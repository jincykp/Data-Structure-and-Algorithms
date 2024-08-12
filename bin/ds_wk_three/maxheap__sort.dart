//-----------heap _sort=============
class HeapSort {
  heapSort(List list) {
    int parent = ((list.length - 1) - 1) ~/ 2;

    for (int i = parent; i >= 0; i--) {
      heapifyDown(list, i, list.length);
    }
    for (int i = list.length - 1; i > 0; i--) {
      swap(list, 0, i);
      heapifyDown(list, 0, i);
    }
    return list;
  }

  heapifyDown(List list, int current, int length) {
    int maxIndex = current;
    int left = 2 * maxIndex + 1;
    int right = 2 * maxIndex + 2;
    if (left < length && list[left] > list[maxIndex]) {
      maxIndex = left;
    }
    if (right < length && list[right] > list[maxIndex]) {
      maxIndex = right;
    }
    if (maxIndex != current) {
      swap(list, current, maxIndex);
      heapifyDown(list, maxIndex, length);
    }
  }

  swap(List list, int current, int max) {
    int temp = list[current];
    list[current] = list[max];
    list[max] = temp;
  }
}

void main() {
  HeapSort heap = HeapSort();
  print(heap.heapSort([6, 8, 34, 12, 1, 0, 9]));
}
