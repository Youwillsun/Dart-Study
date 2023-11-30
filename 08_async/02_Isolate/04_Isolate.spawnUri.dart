import 'dart:isolate';

main() {
  start();

  newIoslate();

  init();
}

start() {
  print('项目启动：${DateTime.now().microsecondsSinceEpoch.toString()}');
}

newIoslate() async {
  print('新线程创建');
  ReceivePort r1 = new ReceivePort();
  SendPort p1 = r1.sendPort;
  // 创建新线程
  Isolate childIsolate = await Isolate.spawnUri(
      Uri(path: './04_Ioslate_ChildIsolate.dart'), ['1', '2', '3'], p1);

  // 监听消息
  r1.listen((message) {
    print('子线程返回：${message[0]}');

    if (message[1] == 1) {
      // 任务正在处理
    } else {
      if (message[1] == 2) {
        r1.close(); // 取消监听
        childIsolate.kill(); // 杀死子线程
        print('子线程释放');
      }
    }
  });
}

init() {
  print('项目初始化');
}
