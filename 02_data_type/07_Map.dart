void main() {
  // 字面量
  Map map = {
    'name': 'Bob',
    'age': 25,
    'city': 'Shanghai',
    'hobby': ['coding', 'basketball'],
  };
  print(map);

  // 不可变Map
  Map map1 = const {
    'name': 'Bob',
    'age': 25,
    'city': 'Shanghai',
    'hobby': ['coding', 'basketball'],
  };
  // map1.addAll({'name_1': 'Bob1'}); // Unsupported operation: Cannot modify unmodifiable map
  print(map1);

  // 构造函数创建(new 关键字可以省略)
  Map map2 = Map();
  map2['name'] = 'Bob';
  map2['age'] = 25;
  print(map2);

  // 访问map2的属性
  print(map2['name']);
  // 判断key是否存在
  print(map2.containsKey('name'));
  // 判断value是否存在
  print(map2.containsValue('Bob1'));

  // 赋值：如果key不存在才赋值，否则不赋值
  Map map3 = Map();
  map3.putIfAbsent('name', () => 'Bob1');
  map3.putIfAbsent('age', () => 25);
  map3.putIfAbsent('city', () => 'Shanghai');
  print(map3);
  map3.putIfAbsent('name', () => 'Bob2');
  print(map3); // 仍然只有Bob1

  // 移除map3的key
  map3.remove('name');
  print(map3);
  map3.removeWhere((key, value) => key == 'age');
  print(map3);

  Map map4 = {
    'name': 'Bob',
    'age': 25,
    'city': 'Shanghai',
    'hobby': ['coding', 'basketball'],
  };
  print(map4.length);
  print(map4.isEmpty);
  // 获取所有的key
  print(map4.keys);
  // 获取所有的值
  print(map4.values);
  // 循环
  map4.forEach((key, value) {
    print('$key: $value');
  });
  // 清空
  map4.clear();
  print(map4);
}
