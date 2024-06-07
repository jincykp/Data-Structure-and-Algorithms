insertion(List list) {
  return helper(list, 1);
}

helper(List list, int i) {
  if (i >= list.length) {
    return list;
  }
  findmin(list, i, i - 1, list[i]);
  return helper(list, ++i);
}

findmin(List list, int i, int j, int current) {
  if (j >= 0 && list[j] > current) {
    list[j + 1] = list[j];
    findmin(list, i, --j, current);
  } else {
    list[j + 1] = current;
  }
}

void main() {
  print(insertion([200, 6, 500, 100, 90, 45]));
}
