import 'dart:isolate';

void main() {
  threadOne();
}

void threadOne() {
  print('当前线程: ${Isolate.current.debugName}');

  // 定义接收者
  ReceivePort threadOneRp = new ReceivePort();
  // 定义发送者
  SendPort threadOneSp = threadOneRp.sendPort;
  // 创建新的线程
  Isolate.spawn(threadTwo, [threadOneSp, 'hello']);

  // 来自线程2的消息
  threadOneRp.listen((msg) {
    if (msg[1] == '你好') {
      (msg[0] as SendPort)
          .send([threadOneSp, 'this is message from thread one']);
    } else {
      (msg[0] as SendPort).send([threadOneSp, 'end']);
    }
    print('来自线程2的消息: ${msg[1]}');
    if (msg[1] == 'end') {
      threadOneRp.close();
    }
  });
}

void threadTwo(List params) {
  print('当前线程： ${Isolate.current.debugName}');

  // 定义线程2接收者
  ReceivePort threadTwoRp = new ReceivePort();
  // 定义线程2发送者
  SendPort threadTwoSp = threadTwoRp.sendPort;

  // 线程2向线程1发消息
  (params[0] as SendPort).send([threadTwoSp, '你好']);

  threadTwoRp.listen((msg) {
    if (msg[1] == 'this is message from thread one') {
      (msg[0] as SendPort)
          .send([threadTwoSp, 'this is message from thread two']);
    } else {
      (msg[0] as SendPort).send([threadTwoSp, 'end']);
    }
    print('来自线程1的消息: ${msg[1]}');

    if (msg[1] == 'end') {
      threadTwoRp.close();
    }
  });

  // 接收线程1的消息
  print('线程1的消息 ${params[1]}');
}
