main() {
  print('start');

  var res = getNumber(5).iterator;
  // res.moveNext();
  // print(res.current);
  // res.moveNext();
  // print(res.current);
  // res.moveNext();
  // print(res.current);
  // res.moveNext();
  // print(res.current);

  while (res.moveNext()) {
    print(res.current);
  }

  print('end');
}

// 同步生成器
Iterable<int> getNumber(int n) sync* {
  int i = 0;
  while (i < n) {
    yield i++;
  }
}

// output:
// start
// 0
// 1
// 2
// 3
// 4
// end