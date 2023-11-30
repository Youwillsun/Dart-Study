main() {
  Duration interval = Duration(seconds: 1);

  Stream<int> stream = Stream<int>.periodic(interval, (count) {
    return count;
  }).take(5); // 使用take拿五条数据

  stream.listen((event) {
    print('take拿的数据: $event');
  }).onDone(() {
    print('done');
  });
}
