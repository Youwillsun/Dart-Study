// 单向通信
import 'dart:isolate';

void main() {
  multiThread();
}

void multiThread() {
  print('multiThread start');

  print('当前线程: ${Isolate.current.debugName}');

  ReceivePort r1 = new ReceivePort();
  SendPort p1 = r1.sendPort;
  Isolate.spawn(newThread, p1);

  // 接收新线程发送过来的消息
  // var msg = r1.first;
  // print('接收到新线程的消息: $msg');
  r1.listen((msg) {
    print('接收到新线程的消息: $msg');
    r1.close();
  });

  print('multiThread end');
}

void newThread(SendPort p1) {
  print('newThread start');

  print('当前线程: ${Isolate.current.debugName}');

  // 发送消息给 main 线程
  p1.send('hello');

  print('newThread end');
}
