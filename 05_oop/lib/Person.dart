class Person {
  String? name;

  // 声明私有属性
  num _money = 100;

  Person(this.name);

  num getMoney() {
    return _money;
  }

  // 声明私有方法
  String _getAge() {
    return '20';
  }
}
