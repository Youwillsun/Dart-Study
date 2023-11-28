void main() {
  bool isTrue = true;
  print(isTrue);

  // 显示的进行判断
  var flag;
  // if (flag) { // 会有警告 type 'Null' is not a subtype of type 'bool'
  //   print('真');
  // }
  if (flag == null) {
    print('真');
  }

  var n1 = 0 / 0;
  print(n1); // NaN
  // 判断是否是 NaN
  print(n1.isNaN);
}
