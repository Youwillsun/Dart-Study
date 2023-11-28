class Person {
  String? name;

  // 保存当前类的实例
  static Person? instance;

  // 工厂构造函数
  factory Person([String name = '刘备']) {
    // 工厂构造函数无法被实例化
    // 工厂构造函数中，不能使用 this 关键字
    if (Person.instance == null) {
      // 第一次实例化
      Person.instance = Person.newSelf(name);
    }
    // 非第一次实例化
    return Person.instance!;
  }

  // 命名构造函数
  Person.newSelf(this.name);
}

void main() {
  Person person1 = Person('张飞');
  print(person1.name); // 输出张飞
  Person person2 = Person('关羽');
  print(person2.name); // 输出张飞

  print(person1 == person2); // true

  // 这其实就是一个单例模式，类只实例化一次，无论new多少次。
}
