class Node {
  Node(this.value);
  final int value;
  int next;

  set value(int val) => value = val;
}

class LinkedList {
  LinkedList({this.head});
  Node head;
  int count = 0;

  void insert(int val) {
    final newNode = Node(val)..next = head.next;
    head.value = newNode.value;
    count++;
  }

  Node find(int val) {
    final item = head;
    while (item != null) {
      if (item.value == val) {
        return item;
      } else {
        item.next = item.next;
      }
    }
    return null;
  }
}

// doesn't work
void main() {
  final itemList = LinkedList()
    ..insert(38)
    ..insert(49)
    ..insert(13)
    ..insert(15);

  print('Item count:  $itemList.count');
  print('Finding item: ${itemList.find(13)}');
  print('Finding item: ${itemList.find(78)}');
}
