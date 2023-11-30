main() {
  print('start');

  Future(() => print('future'));
  Future.sync(() => print('sync'));
  Future.value(Future(() => print('future value future task')));// 当future.value 中是异步任务时，会进入宏任务队列
  Future.value('future value const task')
      .then((value) => print(value)); // 当future.value 中是常量时，会进入微任务队列
  Future.microtask(() => print('microtask'));

  print('end');

  // output:
  // start
  // sync
  // end
  // future value const task
  // microtask
  // future
  // future value future task
}
