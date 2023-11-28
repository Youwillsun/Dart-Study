void main() {
  // 声明整数
  int age = 10;
  // age = 12.5;
  print(age);

  // 声明浮点数
  double height = 1.8;
  print(height);
  // 看着是整数，输出依然是小数
  double weight = 70;
  print(weight);

  num num1 = 10;
  print(num1);
  num num2 = 10.5;
  print(num2);

  // 类型转换
  print(num1.toString());
  print(num2.toInt()); // toInt是向下取整

  // 四舍五入
  print(3.1415.round());
  // 指定四舍五入位数
  print(3.1415.toStringAsFixed(2));

  // 返回余数
  print(10.remainder(4));

  // 数字比较 0: 相同 1：大于 -1：小于
  print(10.compareTo(4));

  // 返回最大公约数
  print(10.gcd(12));

  // 科学计数法toStringAsExponential（有效数字位数）
  print(1000.toStringAsExponential(2));
}
