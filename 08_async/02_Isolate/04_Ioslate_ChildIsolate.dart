import 'dart:io';
import 'dart:isolate';

void main(List<String> args, SendPort mainSendPort) {
  print('接收main的消息： $args');

  mainSendPort.send(['执行操作', 0]);
  sleep(Duration(seconds: 1));

  mainSendPort.send(['加载中', 1]);
  sleep(Duration(seconds: 1));

  mainSendPort.send(['加载完成', 2]);
}
