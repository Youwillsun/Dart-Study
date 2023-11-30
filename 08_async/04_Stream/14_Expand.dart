main() {
  Duration interval = Duration(seconds: 1);

  Stream<int> stream = Stream<int>.periodic(interval, (count) {
    return count;
  }).takeWhile((elment) {
    return elment <= 5;
  }).expand((element) {
     // 数据本身，增长10倍，增长20倍
    return [element, element * 10, element * 100];
  });

  stream.listen((event) {
    print('expand扩展数据: $event');
  }).onDone(() {
    print('done');
  });
}
