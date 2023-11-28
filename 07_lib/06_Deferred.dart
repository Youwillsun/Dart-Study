import 'lib/function.dart' deferred as func;

void main() {
  // func.hello(); // 运行会报错，错误：Deferred library func was not loaded.

  print(1);

  // 异步加载
  func.loadLibrary().then((_) {
    func.hello();
  });

  // 或者使用await
  greet();

  print(2);
}

Future greet() async {
  await func.loadLibrary();
  func.hello();
}
