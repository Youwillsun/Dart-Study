class Person {
  static String? name = 'zs';
  int age = 10;

  static printInfo() {
    // print(this.name); 会报错，提示：The static getter 'name' can't be accessed through an instance.
    print(Person.name);

    // 静态方法中无法访问非静态属性
    // print(this.age); // 会报错，提示：Invalid reference to 'this' expression.
  }

  printUserInfo() {
    // 非静态方法中可以访问静态属性
    print(Person.name);
  }
}

void main() {
  // 静态成员可以通过类名称直接访问
  print(Person.name);
  print(Person.printInfo());

  var p = new Person();
  print(p.age);
}
