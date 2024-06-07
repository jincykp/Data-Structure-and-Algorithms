//to find least repeated key in hash table
class HashTable<K, V> {
  int length;
  late List<List<Entry<K, V>>> bucket;
  HashTable(this.length) {
    bucket = List.generate(length, (index) => []);
  }
  int hashKey(K key) {
    return key.hashCode % length;
  }

  addData(K key, V value) {
    int index = hashKey(key);
    Entry<K, V> entry = Entry(key: key, value: [value]);
    for (var entries in bucket[index]) {
      if (entries.key == key) {
        entries.value.add(value);
        return;
      }
    }
    bucket[index].add(entry);
  }

  printBucket() {
    for (var i = 0; i < bucket.length; i++) {
      print('Bucket : ${i + 1}');
      for (var j = 0; j < bucket[i].length; i++) {
        print('${bucket[i][j].key} : ${bucket[i][j].value}');
      }
    }
  }

  find() {
    int min = 100;
    late K key;
    for (int i = 0; i < bucket.length; i++) {
      for (int j = 0; j < bucket[i].length; i++) {
        if (bucket[i][j].value.length < min) {
          min = bucket[i][j].value.length;
          key = bucket[i][j].key;
        }
      }
    }
    return 'least repeated element is $key';
  }
}

class Entry<K, V> {
  K key;
  List value;
  Entry({required this.key, required this.value});
}

void main() {
  HashTable hash = HashTable(13);
  hash.addData(1, 1);
  hash.addData(1, 1);
  hash.addData(2, 2);
  hash.addData(1, 1);
  hash.printBucket();

  print(hash.find());
}
