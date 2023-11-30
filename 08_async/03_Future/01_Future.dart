main() {
  // 创建Future对象
  final f = new Future(() {
    print('create a future');
    return 123;
  });

  print(f);

  // then 是异步的
  f.then((value) => {print('then: $value')});

  print('Done with main');
}
