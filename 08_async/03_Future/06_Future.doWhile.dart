main() {
  print('start');

  int i = 0;
  Future.doWhile(() {
    i++;
    return Future.delayed(Duration(seconds: 2), () {
      print('$i, 当前事件：${DateTime.now().microsecondsSinceEpoch.toString()}');
      return i < 6;
    }).then((value) {
      print(value);
      return value;
    });
  });

  print('end');
}
