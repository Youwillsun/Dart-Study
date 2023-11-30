main() {
  Duration interval = Duration(seconds: 1);

  Stream<int> stream = Stream<int>.periodic(interval, (count) {
    return count;
  }).takeWhile((elment) {
    return elment <= 5;
  }).skip(2); // 使用skip跳过两个数据【会跳过0，1】

  stream.listen((event) {
    print('skip跳过之后的数据: $event');
  }).onDone(() {
    print('done');
  });
}
