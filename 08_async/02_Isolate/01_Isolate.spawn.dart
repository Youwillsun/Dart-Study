import 'dart:isolate';

void main() {
  multiThread();
}

void multiThread() {
  print('multiThread start');
  print('当前线程: ' + Isolate.current.debugName!);
  // 创建新线程
  Isolate.spawn(newThread, 'hello');

  print('multiThread end');
}

void newThread(String message) {
  print('当前线程: ' + Isolate.current.debugName!);
  print(message);
}
