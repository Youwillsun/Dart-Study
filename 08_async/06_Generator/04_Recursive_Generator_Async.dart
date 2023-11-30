main() {
  final Stream<int> s = getRange(1, 6);
  print('start');
  s.forEach((element) {
    print(element);
  });
  print('end');
}

Stream<int> getRange(int start, int end) async* {
  if (start <= end) {
    yield start;
    // 递归调用
    // for (final val in getRange(start + 1, end)) {
    //   yield val;
    // }
    // 异步递归生成器
    yield* getRange(start + 1, end);
  }
}
// output:
// start
// end
// 1
// 2
// 3
// 4
// 5
// 6
