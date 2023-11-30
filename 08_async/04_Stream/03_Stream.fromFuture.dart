Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    return '当前时间：${DateTime.now()}';
  });
}

main() {
  Stream.fromFuture(getData()).listen((event) {
    print('Stream.fromFuture: $event');
  }).onDone(() { print('Stream.fromFuture: done');});
}
