class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEnd = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String word) {
    TrieNode node = root;
    for (var i in word.split('')) {
      if (!node.children.containsKey(i)) {
        node.children[i] = TrieNode();
      }
      node = node.children[i]!;
    }
    node.isEnd = true;
  }

  //----
  bool search(String word) {
    TrieNode? node = contains(word, root);
    return node != null && node.isEnd;
  }

  bool startWith(String word) {
    return contains(word, root) != null;
  }

  TrieNode? contains(String word, TrieNode node) {
    for (var i in word.split('')) {
      if (node.children.containsKey(i)) {
        node = node.children[i]!;
      } else {
        return null;
      }
    }
    return node;
  }

  // bool deletable(TrieNode node, String word, int s) {
  //   if (word.length == s) {
  //     if (!node.isEnd) {
  //       return false;
  //     }
  //     node.isEnd = false;
  //     return node.children.isEmpty;
  //   }
  //   var w = word[s];
  //   var newNode = node.children[w];
  //   if (newNode == null) {
  //     return false;
  //   }
  //   bool isdeletable = deletable(newNode, word, s + 1);
  //   if (isdeletable) {
  //     node.children.remove(w);
  //     return node.children.isEmpty;
  //   }
  //   return false;
  // }

  void traverse(TrieNode node, String word) {
    if (node.isEnd) {
      print(word);
    }
    node.children.forEach((key, value) {
      traverse(value, word + key);
    });
  }
}

void main() {
  Trie trie = Trie();

  // Inserting words into the Trie
  trie.insert("apple");
  trie.insert("orange");
  trie.insert("banana");

  // Searching for words in the Trie
  // print(trie.search("apple")); // true
  // print(trie.search("app")); // true
  // print(trie.search("ban")); // false

  // Checking if a prefix exists in the Trie
  // print(trie.startWith("app")); // true
  // print(trie.startWith("ban")); // true
  // print(trie.startWith("ba")); // true
  // print(trie.startWith("bana")); // true
  // print(trie.startWith("bat")); // false

  // Deleting a word from the Trie
  // trie.deletable(trie.root, "apple", 0);
  print(trie.search("apple")); // false
  print(trie.search("app")); // true

  // Traversing the Trie and printing all words
  print("Words in the Trie:");
  trie.traverse(trie.root, "");
}
