abstract class A {
  void m1(); // 抽象方法
  void m2(); // 抽象方法
}

class B extends A {
  // 继承了抽象类，必须实现抽象类中的所有抽象方法
  @override
  void m1() {
    print('m1');
  }

  @override
  void m2() {
    print('m2');
  }

  // void m3(); // 普通类中不能有抽象方法
}

void main() {
  // 抽象类不能被实例化
  // var a = A(); // 错误：Abstract classes can't be instantiated.
  var b = B();
  b.m1();
  b.m2();
}
