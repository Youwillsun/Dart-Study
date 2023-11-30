main() {
  print('start');

  // 等待异步任务完成，并收集所有结果
  Future.wait([
    Future.delayed(Duration(seconds: 4)).then((value) {
      print('Future 1 执行完成');
      return 1;
    }),
    Future.delayed(Duration(seconds: 3)).then((value) {
      print('Future 2 执行完成');
      return 2;
    }),
    Future.delayed(Duration(seconds: 2)).then((value) {
      print('Future 3 执行完成');
      return 3;
    }),
  ]).then((value) {
    print(value); // [1, 2, 3]
  });

  print('end');

  // output:
  // start
  // end
  // Future 3 执行完成
  // Future 2 执行完成
  // Future 1 执行完成
  // [1, 2, 3]
}
