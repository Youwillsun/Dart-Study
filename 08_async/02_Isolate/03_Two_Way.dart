// 单向通信
import 'dart:isolate';

void main() {
  multiThread();
}

void multiThread() async {
  print('multiThread start');

  print('当前线程: ${Isolate.current.debugName}');

  ReceivePort r1 = new ReceivePort();
  SendPort p1 = r1.sendPort;
  Isolate.spawn(newThread, p1);

  // 接收新线程发送过来的消息
  // var msg = r1.first;
  // print('接收到新线程的消息: $msg');
  // r1.listen((msg) {
  //   print('接收到新线程的消息: $msg');
  //   r1.close();
  // });
  SendPort p2 = await r1.first;
  // p2.send('来自主线程的消息');

  var msg = await sendToReceive(p2, '来自新线程的消息');
  print('主线成接收到消息：$msg');

  print('multiThread end');
}

void newThread(SendPort p1) async {
  print('newThread start');

  print('当前线程: ${Isolate.current.debugName}');

  ReceivePort r2 = new ReceivePort();
  SendPort p2 = r2.sendPort;

  // 发送消息给 main 线程
  // p1.send('hello');
  p1.send(p2);
  // r2.listen((msg) {
  //   print('接收到主线程的消息: $msg');
  // });

  await for (var msg in r2) {
    var data = msg[0];
    print('接收到主线程的消息: $data');
    SendPort replyPort = msg[1];
    replyPort.send(data);
  }

  print('newThread end');
}

Future sendToReceive(SendPort port, msg) {
  print('发送消息' + msg.toString());
  ReceivePort r = new ReceivePort();
  port.send([r.sendPort, msg]);
  return r.first;
}
