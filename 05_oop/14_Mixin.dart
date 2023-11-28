class Father {}

// class MixinA extends Father{ // 混入的类除了继承Object,不能继承其他类，不然会有错误: The class 'MixinA' can't be used as a mixin because it extends a class other than 'Object'.
class MixinA {
  String name = 'MixinA';

  // MixinA(); // 用作混入的类不能有构造函数：不然会有错误：The class 'MixinA' can't be used as a mixin because it declares a constructor

  void printA() {
    print('A');
  }

  void run() {
    print('A is runing');
  }
}

mixin MixinB {
  String name = 'MixinB';

  void printB() {
    print('B');
  }

  void run() {
    print('B is runing');
  }
}

class MyClass with MixinA, MixinB {}

void main() {
  MyClass myClass = MyClass();
  myClass.printA(); // MixinA
  myClass.printB(); // MixinB

  print(myClass.name); // 只会输出MixinB，后者覆盖了前面的
  myClass.run(); // 方法也是一样，指挥输出 B is runing
}
