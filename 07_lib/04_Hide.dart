// hide后面指定排除引入的内容
import 'lib/Common.dart' hide f1, f2;

void main() {
  // f1();  // 会有错误：The function 'f3' isn't defined.
  // f2(); // 会有错误：The function 'f3' isn't defined.
  f3();
}
