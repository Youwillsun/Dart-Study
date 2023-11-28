class Circle {
  final double PI = 3.1415;
  num? r;
  Circle(this.r);

  // num area() {
  //   return this.PI * this.r! * this.r!;
  // }

  // 使用get声明（方法不能有小括号）
  num get area => this.PI * this.r! * this.r!;

  // 使用set
  set setR(value) => this.r = value;
}

void main() {
  var c = Circle(10);
  // print(c.area().round());
  print(c.area.round());
  c.setR = 20;
  print(c.area.round());
}
