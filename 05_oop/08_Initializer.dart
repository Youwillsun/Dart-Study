class Rect {
  int? height;
  int? width;

  // Rect({this.height, this.width});

  // Rect({int height = 2, int width = 10}) {
  //   this.height = height;
  //   this.width = width;
  //   print('${this.height} -- ${this.width}');
  // }

  // 初始化列表
  Rect()
      : height = 2,
        width = 10 {
    print('${this.height} -- ${this.width}');
  }
}

class Point {
  double? x, y, z;
  Point(this.x, this.y, this.z);
  // 初始化列表的特殊用法(重定向构造函数)
  Point.twoD(double x, double y) : this(x, y, 0);
}

void main() {
  var rect = new Rect();

  var point = new Point(1, 2, 3);
  print(point.z);
  var point2 = new Point.twoD(1, 2);
  print(point2.z);
}
