class Person {
  // 成员
  String name = '张三';
  // 方法
  void say() {
    print('hello $name');
  }
}

void main() {
  // 实例化类
  Person p = new Person();
  print(p.name);
  p.say();
}
