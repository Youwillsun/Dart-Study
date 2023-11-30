test() {
  return Future.delayed(Duration(seconds: 2), () {
    print('Future.delayed');
    return 123;
  });
}

main() async {
  print('start');

  await test();

  print('end');
}
