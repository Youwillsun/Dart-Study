main() {
  Duration interval = Duration(seconds: 1);

  Stream<int> stream = Stream<int>.periodic(interval, (count) {
    return count;
  }).takeWhile((elment) {
    return elment <= 5;
  }).map((event) {
    return event * 100;
  }); // 使用map将所有的数据都  * 100

  stream.listen((event) {
    print('map加工后的数据: $event');
  }).onDone(() {
    print('done');
  });
}
