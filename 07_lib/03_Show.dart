// show后面指定包含引入的内容
import 'lib/Common.dart' show f1, f2;

void main() {
  f1();
  f2();
  // f3(); // 会有错误：The function 'f3' isn't defined.
}
