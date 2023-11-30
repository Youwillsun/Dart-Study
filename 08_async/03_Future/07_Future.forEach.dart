main() {
  print('start');

  Future.forEach([1, 2, 4], (element) {
    return Future.delayed(Duration(seconds: 2), () {
      print(element);
      return element.toString() + '_AAA';
    }).then((value) => print('处理结果：$value'));
  });

  print('end');

  // output:
  // start
  // end
  // 1
  // 处理结果：1_AAA
  // 2
  // 处理结果：2_AAA
  // 4
  // 处理结果：4_AAA
}
