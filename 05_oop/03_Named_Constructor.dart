class Point {
  num x = 0, y = 0;
  // 普通构造函数
  Point(this.x, this.y);
  // 命名构造函数
  Point.origin() {
    x = 0;
    y = 0;
  }
  Point.fromJson({x = 0, y = 0}) {
    this.x = x;
    this.y = y;
  }
}

void main() {
  Point p = new Point(1, 2);
  print(p.x);

  Point p1 = new Point.origin();
  print(p1.x);

  Point p2 = new Point.fromJson(x: 1, y: 2);
  print(p2.x);
}
