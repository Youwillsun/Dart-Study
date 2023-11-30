main() {
  Stream.fromIterable([1, 1, 2, 'hello', 'hello', true, true, 'hello', null, '2'])
  .distinct() // 去掉连续数据重复的数据
  .listen((event) {
    print('distinct去重后的数据: $event');
  }).onDone(() { print('done');});
}

// output
// distinct去重后的数据: 1
// distinct去重后的数据: 2
// distinct去重后的数据: hello
// distinct去重后的数据: true
// distinct去重后的数据: hello // 这里的hello与前一个不重复，所以未去掉
// distinct去重后的数据: null
// distinct去重后的数据: 2
// done