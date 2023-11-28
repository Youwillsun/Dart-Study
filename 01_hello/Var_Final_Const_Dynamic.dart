void main() {
  // var声明变量可以赋予不同类型的值，未初始化时，默认值为null
  var a;
  print(a);

  a = 10;
  print(a);

  a = 'hello world a';
  print(a);

  var b = 'hello world b';
  print(b);

  dynamic dy = 10;
  dy = 'hello world dy';
  print(dy);

// 使用final声明的变量只能被赋值一次
  final c;
  // print(c); // 此时打印c会报错，因为c还没有值，无法被读取
  c = 'hello world c';
  print(c);
  // c = '二次赋值会报错'

  // const声明常量
  const d = 'hello world d';
  print(d);

  /**
   * const 和 final 都是可以声明一个变量，且都只能赋值一次，一旦被赋值后续无法再更改。
   * 区别在于，final声明的变量不需要再声明时确定值，而const的值则必须再声明时就确定。
   */
}
