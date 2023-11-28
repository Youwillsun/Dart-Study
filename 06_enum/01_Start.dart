enum Color {
  red,
  green,
  blue,
}

void main() {
  // 返回枚举值 index
  print(Color.red.index);

  // 通过values返回常量列表
  print(Color.values);
  List<Color> colors = Color.values;
  print(colors);

  // 通过下标，访问列表中的内容
  print(Color.values[0]);
}
