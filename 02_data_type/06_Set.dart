void main() {
  // 字面量声明
  Set<int> set1 = {1, 2, 4};
  print(set1);
  // 构造函数声明
  Set<int> set = new Set();
  set.add(1);
  print(set);

  // 集合操作
  print(set.length);
  print(set.isEmpty);
  print(set.contains(1));
  print(set.containsAll({1, 2, 3}));

  // 求交集
  Set<int> set2 = {2, 3, 4};
  Set<int> set3 = {3, 4, 5};
  print(set2.intersection(set3));

  // 求并集
  print(set2.union(set3));

  // 求差集
  print(set2.difference(set3));

  // 转成数组
  Set set4 = {1, 2, 3};
  print(set4.toList());

  Set set5 = {1, 2, 3};
  print(set5.toString());

  Set set6 = {1, 2, 3};
  print(set6.map((e) => e * 2));
  print(set6.where((e) => e > 1));
  print(set6.expand((e) => [e, e * 2]));
  print(set6.take(2));
  print(set6.takeWhile((e) => e < 3));
  print(set6.skip(2));
  print(set6.skipWhile((e) => e < 3));
  print(set6.first);
  print(set6.last);
  print(set6.reduce((value, element) => value + element));

  // single
  Set set7 = {1};
  print(set7.single);

  Set<int> set8 = {1, 2, 3};
  set8.clear();
  print(set8);
}
