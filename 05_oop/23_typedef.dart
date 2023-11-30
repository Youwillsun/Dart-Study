typedef MathOperation(int a, int b);

// 声明加法运算
add(int a, int b) {
  print('加法运算：' + (a + b).toString());
  return a + b;
}

// 声明减法运算
add2(int a, int b, int c) {
  print('减法运算：' + (a + b + c).toString());
  return a + b;
}

// 声明减法运算
sub(int a, int b) {
  print('减法运算：' + (a - b).toString());
  return a + b;
}

calculate(MathOperation op, int a, int b) {
  op(a, b);
}

void main() {
  print(add is MathOperation); // true
  print(add is Function); // true
  print(sub is MathOperation); // true
  print(sub is Function); // true
  print(add2 is MathOperation); // false
  print(add2 is Function); // true

  MathOperation op = add;
  op(1, 2);

  op = sub;
  op(1, 2);

  calculate(add, 10, 20);
  calculate(sub, 10, 20);
}
