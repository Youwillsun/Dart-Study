import 'lib/Common.dart' as common;
import 'lib/Function.dart' as function;

void main() {
  // f1(); // 冲突，无法调用，使用as关键字

  common.f1();
  function.f1();
}
