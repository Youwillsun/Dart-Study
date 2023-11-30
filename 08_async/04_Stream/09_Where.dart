main() {
  Duration interval = Duration(seconds: 1);

  Stream<int> stream = Stream<int>.periodic(interval, (count) {
    return count;
  }).takeWhile((elment) {
    return elment <= 5;
  }).where((event){
    return event % 2 == 0;
  }); // 使用where过滤数据

  stream.listen((event) {
    print('where过滤后的数据: $event');
  }).onDone(() {
    print('done');
  });
}
