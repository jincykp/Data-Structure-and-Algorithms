//==========     max_heap==========
class MaxHeap {
  List heap = [];
  insert(List list) {
    for (var i in list) {
      heap.add(i);
      heapifyUp(heap.length - 1);
    }
  }

  heapifyUp(int currentIndex) {
    while (currentIndex > 0) {
      int parent = (currentIndex - 1) ~/ 2;
      if (heap[currentIndex] > heap[parent]) {
        swap(currentIndex, parent);
        currentIndex = parent;
      } else {
        break;
      }
    }
  }

  swap(int current, int parent) {
    int temp = heap[current];
    heap[current] = heap[parent];
    heap[parent] = temp;
  }

  remove() {
    int min = heap.removeLast();
    heap[0] = min;
    heapifyDown(0);
  }

  heapifyDown(int current) {
    int min = current;
    int left = 2 * min + 1;
    int right = 2 * min + 2;
    if (left < heap.length && heap[left] > heap[min]) {
      min = left;
    }
    if (right < heap.length && heap[right] > heap[min]) {
      min = right;
    }
    if (min != current) {
      swap(current, min);
      heapifyDown(min);
    }
  }
}

void main() {
  MaxHeap heap = MaxHeap();
  heap.insert([12, 34, 5]);
  // heap.remove();
  print(heap.heap);
}
