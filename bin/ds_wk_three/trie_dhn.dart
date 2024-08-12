class Trinode {
  Map<String, Trinode> charecter = {};

  bool isendofword = false;
}

class Tri {
  Trinode root = Trinode();

  void insert(String word) {
    Trinode temp = root;

    for (var i = 0; i < word.length; i++) {
      String char = word[i];
      temp.charecter.putIfAbsent(char, () => Trinode());

      temp = temp.charecter[char]!;
    }
    temp.isendofword = true;
  }

  // bool search(String word) {
  //   Trinode temp = root;
  //   for (var char in word.split('')) {
  //     if (!temp.charecter.containsKey(char)) {
  //       return false;
  //     }

  //     temp = temp.charecter[char]!;
  //   }
  //   return true;
  // }

  List<String> prefix(String prefix) {
    List<String> result = [];
    Trinode temp = root;
    for (var char in prefix.split('')) {
      if (!temp.charecter.containsKey(char)) {
        // ignore: unnecessary_brace_in_string_interps
        print('${prefix} is not this list');
        return result;
      }

      temp = temp.charecter[char]!;
    }
    prefixhelper(temp, prefix, result);
    return result;
  }

  void prefixhelper(Trinode node, String currentword, List<String> result) {
    //print(node.charecter);
    if (node.isendofword) {
      result.add(currentword);
    }
    for (var char in node.charecter.keys) {
      prefixhelper(node.charecter[char]!, currentword + char, result);
    }
  }
}

//
void main() {
  Tri trie = Tri();
  trie.insert("apple");
  trie.insert('banana');
  trie.insert('application');
  // print(trie.search("apple"));
  // print(trie.search("app"));

  print(trie.prefix("ba"));
  print(trie.prefix("watermelone"));
  print(trie.prefix("ap"));
}
