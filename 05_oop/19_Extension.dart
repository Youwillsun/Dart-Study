// 扩展内置类
extension StringExtension on String {
  // 将字符串形式的数字，转化成数字
  parseInt() {
    return int.parse(this);
  }
}

// 扩展自定义类
class Person {
  say() {
    print('say something');
  }
}

extension StudentPerson on Person {
  // 扩展方法
  study() {
    print('Study hard');
  }
}

void main() {
  String str = '123';
  print(str.parseInt());

  Person person = Person();
  person.say();
  person.study();
}
