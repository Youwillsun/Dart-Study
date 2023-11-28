void main() {
  var str = '👍';
  print(str);
  // 同一个符号，在不同编码下，长度不一样
  print(str.length); // UTF-16
  print(str.runes.length); // UTF-32

  // 将 UTF-32字符集表示的内容转换成符号
  // tips: UTF-32字符集如果长度不超过四位，则不用写{}，否则需要加上{}
  Runes runes = new Runes('\u{1f680}');
  print(new String.fromCharCodes(runes));

  // symbol
  Symbol s = #hello;
  print(s);

  Symbol s1 = new Symbol('hello');
  print(s1);

  print(s == s1);
}
