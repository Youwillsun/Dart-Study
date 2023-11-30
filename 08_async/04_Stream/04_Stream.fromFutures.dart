Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    return '当前时间：${DateTime.now()}';
  });
}

main() {
  Stream.fromFutures([getData(), getData(), getData(), getData()]).listen((event) {
    print('Stream.fromFutures: $event');
  }).onDone(() { print('Stream.fromFutures: done');});
}
