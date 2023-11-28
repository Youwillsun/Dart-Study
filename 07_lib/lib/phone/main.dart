library phone;

import 'dart:math';
// 与分库建立联系
part 'Camera.dart';
part 'Processor.dart';

void main() {
  Camera camera = new Camera();
  camera.info();

  Processor processor = new Processor();
  processor.info();

  print(pi);
}
