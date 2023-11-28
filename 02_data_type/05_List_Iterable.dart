void main() {
  var list = [1, 2, 3, 4, 5];
  print(list);

  // for循环遍历
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  // for in 遍历
  for (var item in list) {
    print(item);
  }

  // forEach 遍历
  list.forEach((item) {
    print(item);
  });

  // map遍历
  list.map((item) {
    return item * 2;
  }).forEach((item) {
    print(item);
  });
  var list2 = list.map((e) => e * 3);
  print(list2);
  print(list2.toList());

  // 返回符合条件的元素
  var list3 = list.where((item) => item > 2).toList()..add(100);
  print(list3);

  // reduce 聚合
  var list4 = list.reduce((a, b) => a + b);
  print(list4);

  // 是否有大于2的元素
  print(list.any((item) => item > 2));
  // 是否全部大于0
  print(list.every((item) => item > 0));

  // 排序
  list.sort((a, b) => a - b);
  print(list);

  // 去重
  List list5 = [1, 2, 3, 3, 4, 5, 5, 5];
  print(list5.toSet().toList());

  // 降维
  List list6 = [
    [1, 2],
    [3, 4],
    [5, 6]
  ];
  print(list6.expand((item) => item).toList());

  // 折叠
  List<int> list7 = [1, 2, 3, 4, 5, 6];
  print(list7.fold<int>(0, (p, element) => p + element));
}
