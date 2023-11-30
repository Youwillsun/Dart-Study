main() {
  final Iterable<int> s = getRange(1, 6);
  print('start');
  s.forEach((element) {
    print(element);
  });
  print('end');
}

Iterable<int> getRange(int start, int end) sync* {
  if (start <= end) {
    yield start;
    // 递归调用
    // for (final val in getRange(start + 1, end)) {
    //   yield val;
    // }
    // 同步递归生成器
    yield* getRange(start + 1, end);
  }
}
// output:
// start
// 1
// 2
// 3
// 4
// 5
// 6
// end
