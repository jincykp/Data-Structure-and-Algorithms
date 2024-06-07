//selection sort using recurssion
selection(List list) {
  return helper(list, 0);
}

helper(List list, int i) {
  if (i >= list.length) {
    return list;
  }
  int min = findMin(list, i,
      i + 1); //to find min index we are creating a new recurssive fun(Line 17)
  int temp = list[min];
  list[min] = list[i];
  list[i] = temp;
  return helper(list, i + 1);
}

findMin(List list, int min, int j) {
  if (j >= list.length) {
    return min;
  }
  if (list[min] > list[j]) {
    min = j;
  }
  return findMin(list, min, j + 1);
}

void main() {
  print(selection([1, 2, 3, 4, 0, -7]));
}
