void main() {
  // 调用函数
  printInfo();

  print(getNum());

// 匿名函数
  var myPrint = (int msg) {
    print(msg);
  };
  List<int> list = [1, 2, 3];
  list.forEach(myPrint);
  // 箭头函数
  list.forEach((int msg) => print(msg));

  // 立即执行函数
  (() {
    print('Hello world!');
  })();
}

void printInfo() {
  print('Hello world!');
}

// 约定返回值类型
int getNum() {
  // return '123'; // Error: A value of type 'String' can't be returned from a function with return type 'int'.
  return 123;
}
