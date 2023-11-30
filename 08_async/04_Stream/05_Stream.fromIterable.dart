main() {
  Stream.fromIterable([1,2,'hello',true,null]).listen((event) {
    print('Stream.fromIterable: $event');
  }).onDone(() { print('Stream.fromIterable: done');});
}
