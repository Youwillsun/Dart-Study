void main() {
  // 声明list
  List list = [1, 2, 3, 4, 5];
  print(list);

  // 限定元素类型
  // List list2 = <int>[1, 2, 3, 4, '5']; // The element type 'String' can't be assigned to the list type 'int'.
  List list2 = <int>[1, 2, 3, 4];
  print(list2);

  List list_const = const <int>[1, 2, 3, 4, 5];
  // list_const.add(10); // Unsupported operation: Cannot add to an unmodifiable list
  print(list_const);

  // 通过构造函数声明
  List list1 = new List.empty(growable: true); // growable默认为false，即数组长度不可变
  list1.add(1);
  print(list1);
  List list3 = List.filled(5, 1);
  print(list3);

  // 扩展操作符
  List list4 = [1, 2, 3, 4, 5];
  List list5 = [0, ...list4];
  print(list5);

  var list6;
  // List list7 = [0, ...list6]; // type 'Null' is not a subtype of type 'Iterable<dynamic>'
  List list7 = [0, ...?list6]; // ...? 表示在扩展list6之前，先判断是否为null
  print(list7);

  // 返回列表长度
  print(list.length);
  // 列表反转
  print(list.reversed); // 反转后虽然可迭代，但已经不是列表
  print(list.reversed.toList());
  // 添加元素
  list.add(6);
  print(list);
  list.addAll([7, 8, 9]);
  print(list);
  // 在指定位置添加元素
  list.insert(0, 10);
  print(list);
  // 直接指定删除的元素，比如删除1
  list.remove(1);
  print(list);
  // 移除指定下标位置的元素
  list.removeAt(0);
  print(list);
  // 移除最后一个
  list.removeLast();
  print(list);
  // 清空
  list.clear();
  print(list);
  // 判断是否为空
  print(list.isEmpty);
  // 拼接
  List list8 = ['hello', 'world'];
  print(list8.join('-'));
}
