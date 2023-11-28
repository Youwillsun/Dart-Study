void main() {
  // 必填参数
  String userInfo(String name, String age) {
    return '姓名：$name 年龄：$age';
  }

  String res = userInfo('张三', '10');
  print(res);

  // 可选参数
  String userInfo2(String name, [String? age]) {
    return '姓名：$name 年龄：$age';
  }

  res = userInfo2('张三');
  print(res);

  // 参数默认值
  String userInfo3(String name, [String age = '18']) {
    return '姓名：$name 年龄：$age';
  }

  res = userInfo3('张三');
  print(res);

  // 命名参数
  String userInfo4({String name = '张三', String age = '18'}) {
    return '姓名：$name 年龄：$age';
  }

  res = userInfo4(name: '李四', age: '20');
  print(res);
}
