void main() {
  // 字符串是一串字符组成的序列，字符串的长度是固定的，字符串的字符在内存中是连续的。
  // Dart 字符串是不可变的，即一旦创建，就不能被修改。
  // Dart 字符串是使用 UTF-16 编码的，每个字符占用 2 个字节。

  // 双引号
  String str = "Hello, world!";
  print(str);

  // 单引号
  String str2 = '你好，世界！';
  print(str2);

  // 三引号，表示多行
  String str3 = '''
    多行字符串
    多行字符串
    多行字符串
  ''';
  print(str3);

  // 常规操作
  // 字符串拼接
  String str4 = 'Dart';
  String str5 = '语言';
  String str6 = str4 + str5;
  print(str6);
  print("$str4 $str5"); // 模板字符串
  // 字符串分割
  String str7 = 'Hello, world!';
  print(str7.split(','));
  // 字符串剪切
  String str8 = '  Hello, world!';
  print(str8.trim());
  print(str8.substring(0, 5));
  print(str8.substring(6));
  print(str8.substring(0, 5).toUpperCase());

  // 判断字符串是否为空
  String str9 = '';
  print(str9.isEmpty);
  print(str9.isNotEmpty);

  // 字符串替换
  String str10 = 'Hello, world!';
  print(str10.replaceAll('l', 'W'));
  // 正则替换
  String str11 = 'H1e2l3l5o, w5o6r7l8d!';
  print(str11.replaceAll(RegExp(r'\d+'), '_')); // 正则将数字替换成下划线

  // 通过正则匹配手机号
  String str12 = '13800138000';
  var isPhone = RegExp(r'^1[3|4|5|7|8][0-9]\d{8}$');
  print(isPhone.hasMatch(str12));

  // 查找字符串
  String str13 = 'Hello, world!';
  print(str13.contains('o'));
  // 定位字符串
  print(str13.indexOf('o'));
}