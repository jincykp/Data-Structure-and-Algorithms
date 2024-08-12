//--------------min_heap------------
class HeapMin {
  List<int> heap = [];

  //convert list to heap tree

  insert(List<int> list) {
    for (var num in list) {
      heap.add(num);
      heapifyup();
    }
  }

  heapifyup() {
    int currentIndex = heap.length - 1;
    while (currentIndex > 0) {
      int parentIndex = (currentIndex - 1) ~/ 2;
      if (heap[parentIndex] > heap[currentIndex]) {
        swap(parentIndex, currentIndex);
        currentIndex = parentIndex;
      } else {
        break;
      }
    }
  }
/*=================================*/

//used to swap elements in both insert and remove functions
  swap(int parentIndex, int currentIndex) {
    int temp = heap[parentIndex];
    heap[parentIndex] = heap[currentIndex];
    heap[currentIndex] = temp;
  }

/*==================================*/

  remove() {
    int min = heap.removeLast();
    heap[0] = min;
    heapifyDown(0);
  }

  heapifyDown(int current) {
    int minIndex = current;
    int left = 2 * minIndex + 1;
    int right = 2 * minIndex + 2;
    if (left < heap.length && heap[left] < heap[minIndex]) {
      minIndex = left;
    }
    if (right < heap.length && heap[right] < heap[minIndex]) {
      minIndex = right;
    }

    if (current != minIndex) {
      swap(minIndex, current);
      heapifyDown(minIndex);
    }
  }
}

void main() {
  HeapMin min = HeapMin();
  min.insert([1, 5, 6, 3, 4, 15]);
  print(min.heap);
  min.remove();
  print('******');
  print(min.heap);
}
