main() {
  Future.delayed(Duration(seconds: 2), () {
    // return 123;
    throw Error();
  }).then((value) {
    print('value' + value.toString());
  }).catchError(
    (err) {
      print(err);
    },
    test: (error) => error.runtimeType == String
  ).whenComplete((){
    // 无论异常还是正常都会执行
    print('all complete');
  });
}
