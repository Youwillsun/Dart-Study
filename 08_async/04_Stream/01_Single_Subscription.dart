import 'dart:async';

main() {
  // 创建单一订阅数据流
  final StreamController controller = new StreamController();

  // 第一次监听
  controller.stream.listen((event) {
    print('第一次监听: $event');
  });

  // 第二次监听 //二次监听会报错：Stream has already been listened to.
  // controller.stream.listen((event) {
  //   print('第二次监听: $event');
  // });

  // 给数据流添加数据
  controller.sink.add('akb');
  controller.sink.add('123');
}
