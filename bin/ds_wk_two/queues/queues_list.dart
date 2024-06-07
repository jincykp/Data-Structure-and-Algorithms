// ignore: camel_case_types
class Listss {
  List<int> quea = [];

  int front = -1;
  int rear = -1;
  void enquea(int data) {
    if (front == -1) {
      front = rear = 0;
      quea.add(data);
    } else {
      rear++;
      quea.add(data);
    }
  }

  void dequea() {
    quea.removeAt(front);
    rear--;
  }

  void show() {
    for (var i = 0; i < quea.length; i++) {
      print(quea[i]);
    }
  }
}

void main() {
  Listss li = Listss();
  li.enquea(10);
  li.enquea(20);
  li.enquea(30);
  li.enquea(40);
  li.dequea();
  li.show();
}
