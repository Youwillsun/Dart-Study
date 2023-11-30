main() {
  Duration interval = Duration(seconds: 1);

  Stream<int> stream = Stream<int>.periodic(interval, (count) {
    return count;
  }).takeWhile((elment) {
    return elment <= 5;
  }).skipWhile((event) {
    return event <= 2;
  }); // 使用skip跳过小于2的数

  stream.listen((event) {
    print('skipWhere跳过后的数据: $event');
  }).onDone(() {
    print('done');
  });
}
