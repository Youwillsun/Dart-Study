main() {
  Duration interval = Duration(seconds: 1);

  Stream<int> stream = Stream<int>.periodic(interval, (count) {
    return count;
  }).take(5);

  stream.listen((event) {
    print('Stream.periodic: $event');
  }).onDone(() {
    print('Stream.periodic: done');
  });
}
