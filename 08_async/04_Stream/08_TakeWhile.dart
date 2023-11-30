main() {
  Duration interval = Duration(seconds: 1);

  Stream<int> stream = Stream<int>.periodic(interval, (count) {
    return count;
  }).takeWhile((elment) {
    return elment <= 3;
  }); // 手动设置结束条件

  stream.listen((event) {
    print('takeWhile拿的数据: $event');
  }).onDone(() {
    print('done');
  });
}
