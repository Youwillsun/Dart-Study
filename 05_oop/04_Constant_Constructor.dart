class Point {
  num x = 0, y = 0;
  Point(this.x, this.y);
}

class ImmutablePoint {
  // 使用常量构造函数时，属性必须通过final声明
  final num x, y;
  // 常量构造函数，必须通过const声明，且不能存在函数体
  const ImmutablePoint(this.x, this.y);
}

void main() {
  // 实例化时new可以省略
  var p1 = new Point(1, 2);
  var p2 = new Point(1, 2);
  print(p1 == p2); // false p1和p2虽然是同一个类构造出来的对象，但是对象了两个不同的内存地址

  var p3 = new ImmutablePoint(1, 2);
  var p4 = new ImmutablePoint(1, 2);
  print(p3 == p4); // false  常量构造函数可以通过普通的使用方式使用，此时p3和p4是同一个类构造出来的对象，但是对象地址依然不同

  var p5 = const ImmutablePoint(1, 2);
  var p6 = const ImmutablePoint(1, 2);
  print(p5 == p6); // true  使用不可变对象时，必须通过const关键字声明
}
