void main() {
  // 地板除[向下取整]
  print(7 ~/ 4);

  // 类型判断运算符( is | is! )
  List list = [1, 2, 3];
  if (list is List<int>) {
    print('list is List<int>');
  } else {
    print('list not List<int>');
  }

  if (list is! List<int>) {
    print('list not List<int>');
  } else {
    print('list is List<int>');
  }

  // 避空运算符( ?? | ??= )
  print(1 ?? 3);
  print(null ?? 12);
  // 避空赋值
  var a;
  // if (a == null) a = 3;
  a ??= 3;
  print(a);

  // 条件属性访问( ?. )
  var obj;
  // print(obj.length); // NoSuchMethodError: The getter 'length' was called on null.
  print(obj?.length);

  // 级联运算符( .. )
  Set set = {1, 2, 3};
  set
    ..add(4)
    ..add(5);
  print(set);
}
