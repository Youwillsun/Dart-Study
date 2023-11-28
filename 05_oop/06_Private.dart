import 'lib/Person.dart';

class Person2 {
  String? name;

  // 声明私有属性
  num _money = 100;

  Person2(this.name);
}

void main() {
  var person2 = Person2('张三');
  print(person2.name);
  print(person2._money); // 依然会输出100，声明的私有内容和main函数处在同一个作用域，所以不起作用

  // 此时我们在 05_oop 目录下，新建一个lib文件夹，在里面新建文件，写一个类，声明私有内容
  var person = Person('张三');
  print(person.name);
  // print(person._money); // 此时在访问_money时会报错，提示：The getter '_money' isn't defined for the class 'Person'，因为_money是私有属性，只能在类内部访问.
  print(person.getMoney());

  // print(person._getAge());// 此时在访问_getAge时会报错，提示：The method '_getAge' isn't defined for the class 'Person'. 因为_getAge是私有方法，只能在类内部访问.
}
