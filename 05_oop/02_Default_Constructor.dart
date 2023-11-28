class Point {
  num x = 0, y = 0;

  // 声明普通构造函数
  Point() {
    // this 可以省略，默认指向当前实例对象
    x = 10;
    y = 10;
    // 当命名只想有歧义时，this不可省略，比如我有一个成员x，有一个参数也是x
    this.x = 10;
    this.y = 10;
    print('我是默认构造函数，实例化时会被第一个调用');
  }
}

class Point2 {
  num x = 0, y = 0;

  // 声明普通构造函数
  // Point2(num x, num y) {
  //   this.x = x;
  //   this.y = y;
  //   print('我是默认构造函数，实例化时会被第一个调用');
  // }

  // 简化写法
  Point2(this.x, this.y) {
    print('我是默认构造函数，实例化时会被第一个调用');
  }
}

void main() {
  // Point p = new Point();
  Point2 p = new Point2(10, 10);
  print(p.x);
}
