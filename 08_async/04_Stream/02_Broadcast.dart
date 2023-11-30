import 'dart:async';

main() {
  // 创建广播流
  StreamController controller = new StreamController.broadcast();

  // 第一次监听
  controller.stream.listen((event) {
    print('第一次监听: $event');
  });
  // 给数据流添加数据
  controller.sink.add('akb');

  // 第二次监听
  controller.stream.listen((event) {
    print('第二次监听: $event');
  });
  // 给数据流添加数据
  controller.sink.add('123');

  // output:
  // 第一次监听: akb
  // 第二次监听: 123
  // 第一次监听: 123

  // 123 出现多次，说明在添加数据的时候，第一次监听和第二次监听都得到了数据，第一次监听依旧在，说明数据是可以被重复监听的，即是广播流
}
