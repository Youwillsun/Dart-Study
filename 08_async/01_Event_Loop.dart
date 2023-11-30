import 'dart:async';

void main() {
  // 执行打印开始
  print('flow start');

  // 执行判断为事件任务，添加到事件任务队列
  Timer.run(() {
    // 执行事件任务，打印事件任务标记
    print('event-A');

    // 执行判断为微任务，添加到微任务队列
    scheduleMicrotask(() {
      // 执行微任务, 打印微任务标记
      print('microtask-B in event-A');
    });

    // 执行判断为微任务，添加到微任务队列
    scheduleMicrotask(() {
      // 执行微任务, 打印微任务标记
      print('microtask-C in event-A');
    });
  });

  // 执行判断为微任务，添加到微任务队列
  scheduleMicrotask(() {
    // 执行微任务, 打印微任务标记
    print('microtask-A');

    // 执行判断为事件任务，添加到事件任务队列
    Timer.run(() {
      // 执行事件任务，打印事件任务标记
      print('event-B in microtask-A');
    });
  });

  // 打印结束标记
  print('flow end');

  // Output:
  // flow start
  // flow end
  // microtask-A
  // event-A
  // microtask-B in event-A
  // microtask-C in event-A
  // event-B in microtask-A
}
