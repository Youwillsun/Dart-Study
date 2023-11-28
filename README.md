# Dart学习

[toc]

## 安装Dart SDK

[官网教程](https://dart.cn/get-dart)

在`windows`获取`Dart SDK`可以使用  [Chocolatey](https://chocolatey.org/) 进行安装，`Chocolatey` 是Windows上的包管理工具。

1. `Windows`安装`Chocolatey`

   管理员权限打开`CMD`，运行：

   ```
   @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
   ```

   或者打开`Powsershell`，运行：

   ```
   Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
   ```

   安装完成后，重启`CMD`或者`Powershell`运行`choco` 或 `choco -?`检查一下是否安装正确。 

   若能出现版本号，则安装成功。

   可以查看文章[Chocolatey安装及使用方式和常见错误](https://juejin.cn/post/6994715287178182693)

2. 安装`Dart SDK`

   管理员权限打开`CMD`，运行：

   ```
   choco install dart-sdk
   ```

    SDK 默认会安装在 `C:\tools\dart-sdk` 

   详情请查看官方安装文档。
   
3. 配置环境变量

   控制面板搜索`env`，点击编辑环境变量，在系统变量`path`下新建一条，填充上dart-sdk的路径，一般为：

   ```
   C:\tools\dart-sdk\bin
   ```

4. 打开`CMD`，运行

   ```
   dart --version
   ```

   若出现版本号，则`Dart SDK`安装配置成功。

## 语法基础

- 注释语法与`Javascript`一致
- 声明函数不需要关键字(`js`中通过`function`关键字来声明函数)
- 函数和参数前面都有类型声明，`void`表示没有返回值，`int`是整型数字
- 打印使用`print`
- 每行代码结束时必须写分号
- 字符串通过引号包起来，支持模板字符串
- `main`是入口函数，`Dart`应用程序总是从`main`开始执行

## 声明变量

- `Dart`中变量是一个引用，`Dart`万物皆对象，变量存储的是对象的引用。

- 变量名大小写敏感
- 变量名默认值是`nul`l（`js`中默认是`undefined`）
- `Dart`变量的值不会进行隐式转换（`null`不会自动转换成`false`）

声明变量有四种方式：

1. `var`

   ```dart
   void main() {
     // var声明变量可以赋予不同类型的值，未初始化时，默认值为null
     var a;
     print(a); // null
   
     a = 10;
     print(a); // 10
   
     a = 'hello world a';
     print(a); // hello world a
   
     var b = 'hello world b';
     print(b);// hello world b
   }
   ```

   `var` 基本和`js`中的声明一致，`var`声明的变量表示当前类型是动态类型，若要准确的类型，需要使用类型关键字,如`int age = 10;`。

2. `dynamic`

   ```dart
   void main() {
     dynamic age = 10;
   }
   ```

   `dynamic`声明的变量与`var`类似，也是不明确类型。

3. `final`

   ```dart
   void main() {
     final c;
     // print(c); // 报错
     c = 'hello world c';
     print(c);// hello world c
     // c = '再次赋值'; // 这里再次赋值就会报错
   }
   ```

   `final`声明运行时的常量，即可以在运行中赋值，该常量只能被赋值一次，且未赋值之前不可被读取。一旦被赋值，再次赋值就会报错。

4. `const`

   ```dart
   void main() {
     const d = 'hello world d';
     print(d); // hello world d
   }
   ```

   `const`声明的是编译时的常量，即在声明时就确定。与JS一致。

## 数据类型

1. `Number` - 数值型

   `Dart`中数字由三个关键字表述

   - `num` 数值 (既可以是整数，也可以是浮点数)

   - `int` 整数

   - `double` 浮点数 (既可以是整数，也可以是浮点数)，`double`所表示的整数，实际上还是浮点数，例如

     ```dart
     double age = 10; // 实际上输出是 10.0
     ```

   所以，声明一个数值型的变量有三种方式：

   ```dart
   // num是Dart中所有数字类型的父类型。它包括整数和浮点数。你可以使用num声明一个变量，然后将整数或浮点数赋给它
   num age = 10;
   // int用于表示整数
   int age = 10;
   // double用于表示浮点数（即带有小数点的数字）
   double age = 10; // 定义了一个浮点型变量
   ```

   浮点型和整型之间不能相互赋值。

2. `String` - 字符串

   - 使用单引号，双引号创建字符串
   - 使用三个引号或双引号创建多行字符串
   - 使用`r`创建原始`raw`字符串，例如创建正则表达式(`RegExp(r'正则表达式')`)

3. `Boolean` - 布尔型

   - Dart通过bool关键字来定义布尔类型

   - 对变量进行判断是，要显式的检查布尔值（没有隐式转换）

     ```dart
     var flag; // 默认null
     // if (flag) { // 会有警告 type 'Null' is not a subtype of type 'bool'
       //   print('真');
       // }
     
     // 显式判断
     if(flag === null){}
     
     var n1 = 0 / 0;
     print(n1); // NaN
     // 判断是否是 NaN
     print(n1.isNaN);
     ```

4. `List` - 列表

   创建方式：

   1. 字面量方式创建

      ```dart
      // 不限定元素的数据类型
      List list = []
      // 限定元素的数据类型
      List list = <int>[];
      // const 创建一个不可变的数组
        List<int> list2 = const [1, 2, 3, 4, 5];
        // list2.add(10); // Unsupported operation: Cannot add to an unmodifiable list
        print(list2);
      ```

   2. 构造函数方式创建

      ```dart
      // 不限制长度的空列表
      List list = new List.empty(growable: true);
      // 声明指定长度的填充列表
      List list = new List.filled(3, 0);
      ```

   扩展操作符(...)

   ```dart
   var list = [1,2,3];
   var list2 = [0, ...list];
   ```

   遍历

   - `forEach` 遍历列表
   - `map` 遍历并处理元素，然后生成新的列表
   - `where` 返回满足条件的数据
   - `any` 只要有一项满足，则返回`true`
   - `every` 全部满足，才返回`true`

5. `Set` - 集合

   `Set`是一个无序的，元素唯一的几何。

   `Set`无法通过下标取值

   `Set`具有集合的特有操作，如：求交集，并集，差集等

   声明`Set`的两种方式：

   - 字面量

     ```dart
     // 字面量声明
     Set set1 = {1};
     print(set1);
     ```

   - 构造函数

     ```dart
     // 构造函数声明
     Set set = new Set();
     set.add(1);
     print(set);
     ```

6. `Map` - 映射

   Map是一个无序的键值对映射，通常也被称作哈希或字典

   声明Map的方式:

   - 字面量

     ```dart
     Map map = { "name": "xiaoming" };
     // 创建一个不可变Map
     Map map = const { "age": "nan"  };
     ```

   - 构造函数创建

     ```dart
     Map map = new Map();
     ```

7. `Runes` - 符文

   `Runes` 对象是一个32位字符串对象。它可以把文字转换成符号表情或特定文字。

   ```dart
   var str = '👍';
   print(str);
   // 同一个符号，在不同编码下，长度不一样
   print(str.length); // UTF-16
   print(str.runes.length); // UTF-32
   
   // 将 UTF-32字符集表示的内容转换成符号
   // tips: UTF-32字符集如果长度不超过四位，则不用写{}，否则需要加上{}
   Runes runes = new Runes('\u{1f680}');
   print(new String.fromCharCodes(runes)); //🚀
   ```

8. `Symbol` - 标识

   `Symbol`在`Dart`是一个用`#`开头来表示的标识符

   ```dart
   // symbol
   Symbol s = #hello;
   print(s);
   
   Symbol s1 = new Symbol('hello');
   print(s1);
   
   print(s == s1); // true
   ```

   

## 运算符

地板除（~/）

```dart
// 地板除[向下取整]
print(7 ~/ 4);
```

类型判断运算符( is | is! )

```dart
List list = [1, 2, 3]; // 类型为List<dynamic>
if (list is List<int>) {
  print('list is List<int>');
} else {
  print('list not List<int>'); // 输出
}

if (list is! List<int>) {
  print('list not List<int>'); // 输出
} else {
  print('list is List<int>');
}
```

避空运算符( ?? | ??= )

```dart
print(1 ?? 3); // 1
print(null ?? 12); // 12
// 避空赋值
var a;
// if (a == null) a = 3;
a ??= 3;
print(a);
// 若a不是null，则赋值失败
```

条件属性访问( ?. )

```dart
var obj;
// print(obj.length); // NoSuchMethodError: The getter 'length' was called on null.
print(obj?.length);
```

级联运算符( .. )

```dart
Set set = {1, 2, 3};
set..add(4)..add(5);
print(set); {1,2,3,4,5}
```

## 函数

### 声明函数

直接声明

- Dart中声明函数不需要function关键字

```dart
void main() {}
```

箭头函数

- Dart箭头函数中，函数体只能写一行且不能带有结束的分号。

- Dart中的箭头函数只是函数的简写形式，没有任何实际意义。

```dart
List list = [1,2,3];
list.forEach(item=>print(item));
```

匿名函数

- 没有函数名的函数

```dart
var fun = (int msg) {
  print(msg)
}
```

立即执行函数

```dart
((){
  print('立即执行');
})();
```

### 函数参数

必填参数

- 参数类型 参数名称

```dart
  String userInfo(String name, String age) {
    return '姓名：$name 年龄：$age';
  }

  String res = userInfo('张三', '10');
  print(res);
```

可选参数

- 放在必选参数后面

- 通过中括号包裹起来

```dart
  String userInfo2(String name, [String? age]) {
    return '姓名：$name 年龄：$age';
  }

  res = userInfo2('张三');
  print(res);
```

- 带默认值的可选参数

  ```dart
    String userInfo3(String name, [String age = '18']) {
      return '姓名：$name 年龄：$age';
    }
  
    res = userInfo3('张三');
    print(res);
  ```



命名参数

- 用大括号包裹起来
- 调用函数时，命名参数的名称与声明函数中的名称保持一致

```dart
  String userInfo4({String name = '张三', String age = '18'}) {
    return '姓名：$name 年龄：$age';
  }

  res = userInfo4(name: '李四', age: '20');
  print(res);
```

函数参数

- 即把函数当作一个参数进行传递

```dart
  var myPrint = (int msg) {
    print(msg);
  };
  List<int> list = [1, 2, 3];
  list.forEach(myPrint);
```

### 作用域和闭包

与`Javascript`中完全一致

```dart
void main() {
  parent() {
    int money = 1000;
    return () {
      money -= 100;
      print(money);
    };
  }

  Function child = parent();
  child(); // 900
  child(); // 800
  child(); // 700
}
```

### 异步函数

这点和js中类似。

`Dart`中，异步调用通过`Future`来实现

- `async `函数返回一个`Future`，`await` 用于等待`Future`

- `async`和`await`写在函数名的后面

```dart
import 'dart:convert';
import 'package:http/http.dart' as http; // 非核心包要在 pubspec.yaml 中引入
// https://httpbin.org/ip //返回IP地址

Future getIPAddress() async {
  final url = "http://httpbin.org/ip";
  final response = await http.get(Uri.parse(url));
  // 解析json
  String ip = jsonDecode(response.body)['origin'];
  return ip;
}

void main() async {
  try {
    final ip = await getIPAddress();
    print(ip);
  } catch (e) {
    print(e);
  }
}
```

## 类

### 构造器（构造函数）

#### 默认构造函数

- 默认构造函数的名字与类的名字相同
- 默认构造函数会在初始化时第一个调用

```dart
class Point {
  // 声明普通构造函数
  Point() {
    print('我是默认构造函数，实例化时会被第一个调用');
  }
}

void main() {
  Point p = new Point();
}
```

#### 命名构造函数

- 在类中使用命名构造器(类名.函数名)实现多个构造器，可以提供额外的清晰度。

```dart
class Point {
  num x = 0, y = 0;
  // 普通构造函数
  Point(this.x, this.y);
  // 命名构造函数
  Point.origin() {
    x = 0;
    y = 0;
  }
  // 命名构造函数
  Point.fromJson({x = 0, y = 0}) {
    this.x = x;
    this.y = y;
  }
}

void main() {
  Point p = new Point(1, 2);
  print(p.x);

  Point p1 = new Point.origin();
  print(p1.x);

  Point p2 = new Point.fromJson(x: 1, y: 2);
  print(p2.x);
}
```

#### 常量构造函数

- 如果类生成的对象不会改变，就可以通过常量构造函数使这些对象成为编译时常量。

```dart
class Point {
  num x = 0, y = 0;
  Point(this.x, this.y);
}

class ImmutablePoint {
  // 使用常量构造函数时，属性必须通过final声明
  final num x, y;
  // 常量构造函数，必须通过const声明，且不能存在函数体
  const ImmutablePoint(this.x, this.y);
}

void main() {
  // 实例化时new可以省略
  var p1 = new Point(1, 2);
  var p2 = new Point(1, 2);
  print(p1 == p2); // false p1和p2虽然是同一个类构造出来的对象，但是对象了两个不同的内存地址

  var p3 = new ImmutablePoint(1, 2);
  var p4 = new ImmutablePoint(1, 2);
  print(p3 == p4); // false  常量构造函数可以通过普通的使用方式使用，此时p3和p4是同一个类构造出来的，但是对象地址不同

  var p5 = const ImmutablePoint(1, 2);
  var p6 = const ImmutablePoint(1, 2);
  print(p5 == p6); // true  使用不可变对象时，必须通过const关键字声明
}

```

#### 工厂构造函数

- 通过`factory`声明，工厂函数不会自动生成实例，而是通过代码来决定返回的实例。

```dart
class Person {
  String? name;

  // 保存当前类的实例
  static Person? instance;

  // 工厂构造函数
  factory Person([String name = '刘备']) {
    // 工厂构造函数无法被实例化
    // 工厂构造函数中，不能使用 this 关键字
    if (Person.instance == null) {
      // 第一次实例化
      Person.instance = Person.newSelf(name);
    }
    // 非第一次实例化
    return Person.instance!;
  }

  // 命名构造函数
  Person.newSelf(this.name);
}

void main() {
  Person person1 = Person('张飞');
  print(person1.name); // 输出张飞
  Person person2 = Person('关羽');
  print(person2.name); // 输出张飞

  print(person1 == person2); // true

  // 这其实就是一个单例模式，类只实例化一次，无论new多少次。
}
```

### 访问修饰符

- `Dart`与`Typescript`不同，没有访问修饰符(`public, protected, private`)
- `Dart`类中，默认的访问修饰符是公开的(即 `public`)
- 如果属性或方法以`_`(下划线)开头，则表示私有(即 `private`)

- **声明私有的内容和当前的`main`函数处于同一个作用域的话，则私有还是不起作用，只有把类单独抽离出去，私有属性和方法才起作用。**

```dart
import 'lib/Person.dart';

class Person2 {
  String? name;

  // 声明私有属性
  num _money = 100;

  Person2(this.name);
}

void main() {
  var person2 = Person2('张三');
  print(person2.name);
  print(person2._money); // 依然会输出100，声明的私有内容和main函数处在同一个作用域，所以不起作用

  // 此时我们在 05_oop 目录下，新建一个lib文件夹，在里面新建文件，写一个类，声明私有内容
  var person = Person('张三');
  print(person.name);
  // print(person._money); // 此时在访问_money时会报错，提示：The getter '_money' isn't defined for the class 'Person'，因为_money是私有属性，只能在类内部访问.
  print(person.getMoney());

  // print(person._getAge());// 此时在访问_getAge时会报错，提示：The method '_getAge' isn't defined for the class 'Person'. 因为_getAge是私有方法，只能在类内部访问.
}
```

### Getter 与 Setter

- `Getter`（获取器）是通过 `get` 关键字修饰的方法，函数没有小括号，访问时也没有小括号（像访问属性一样访问方法）
- `Setter`（修改器）是通过 `set` 关键字修饰的方法，访问时，像设置属性一样给函数传参

```dart
class Circle {
  final double PI = 3.1415;
  num? r;
  Circle(this.r);

  // num area() {
  //   return this.PI * this.r! * this.r!;
  // }

  // 使用get声明（方法不能有小括号）
  num get area => this.PI * this.r! * this.r!;

  // 使用set
  set setR(value) => this.r = value;
}

void main() {
  var c = Circle(10);
  // print(c.area().round());
  print(c.area.round());
  c.setR = 20;
  print(c.area.round());
}
```

### 初始化列表

- 作用：在构造函数中设置属性的默认值
- 时机：在构造函数体执行之前执行
- 语法：使用逗号分隔初始化表达式
- 场景：常用于设置`final`常量的值

```dart
class Rect {
  int? height;
  int? width;

  // 初始化列表
  Rect() : height = 2, width = 10 {
    print('${this.height} -- ${this.width}');
  }
}

class Point {
  double? x, y, z;
  Point(this.x, this.y, this.z);
  // 初始化列表的特殊用法(重定向构造函数)
  Point.twoD(double x, double y) : this(x, y, 0);
}

void main() {
  var rect = new Rect();

  var point = new Point(1, 2, 3);
  print(point.z);
  var point2 = new Point.twoD(1, 2);
  print(point2.z);
}
```

### Static

- static 关键字用来指定静态成员
  - 通过static修饰的属性是静态属性
  - 通过static修饰的方法是静态方法
- 静态成员可以直接通过类名访问，不需要实例化。
  - 实例化是比较消耗资源的，声明静态成员，可以提高程序性能。
- 静态方法不能访问非静态成员，非静态方法可以访问静态成员。
  - 静态方法中不能使用`this`关键字
  - 也不能使用`this`关键字访问静态属性

```dart
class Person {
  static String? name = 'zs';
  int age = 10;

  static printInfo() {
    // print(this.name); 会报错，提示：The static getter 'name' can't be accessed through an instance.
    print(Person.name);

    // 静态方法中无法访问非静态属性
    // print(this.age); // 会报错，提示：Invalid reference to 'this' expression.
  }

  printUserInfo() {
    // 非静态方法中可以访问静态属性
    print(Person.name);
  }
}

void main() {
  // 静态成员可以通过类名称直接访问
  print(Person.name);
  print(Person.printInfo());

  var p = new Person();
  print(p.age);
}
```

### 元数据

- 元数据以`@`开头，可以给代码标记一些额外信息
  - 元数据可以用在库，类，构造器，函数，字段，参数或变量声明的前面。
- `@override` 重写
  - 某方法添加该注解后，表示重写了父类中的同名方法
- `@required` 必填
  - 可以通过`@required`来注解Dart中的命名参数，用来指示它是必填参数
- `@deprecated` 弃用
  - 若某类或某方法加上该注解之后，表示此方法或类不再建议使用

```dart
class Phone {
  // 这旧版本的开机方法，会在将来的版本中删除
  @deprecated
  activaite() {
    turnOn();
  }

  turnOn() {
    print('开机');
  }
}

void main() {
  var p = new Phone();
  p.activaite();
}
```

### 继承

- 根据类的先后顺序，可以将类分为父类和子类
- 子类通过 extends 关键字 继承 父类
  - 继承后，子类可以使用父类中，可见的内容(属性或方法)
- 子类中，可以通过`@override`元数据来标记“覆写”方法
  - “覆写”方法：子类中与父类同名的方法
- 子类中，可以通过 super 关键字来引用父类中可见的内容
  - 属性
  - 方法（普通构造函数，命名构造函数）

```dart
class Father {
  String name = "Father";
  num money = 10000;

  Father(this.name);

  Father.son() {
    this.name = '刘三个';
  }

  say() {
    print('父类：我是 $name');
  }
}

class Son extends Father {
  // 继承普通构造函数
  Son() : super('刘二哥');
  // 继承命名构造函数
  Son.son() : super.son();
  // 重写方法
  @override
  say() {
    super.say();
    print('子类：我是 刘禅');
  }
}

void main() {
  var father = new Father('刘备');
  print(father.name);
  father.say();

  var son = new Son();
  print(son.name);
  son.say();

  var son2 = new Son.son();
  print(son2.name);
}
```

### 抽象类

- 抽象类使用abstract关键字修饰的类
- 抽象类的作用是充当普通类的模板，约定一些必要的属性和方法
- 抽象方法是指没有方法体的方法
  - 抽象类中一般都有抽象方法，也可以没有抽象方法
  - 普通类中，不能有抽象方法
- 抽象类不能被实例化（不能被new）
- 抽象类可以被普通类继承（extends）
  - 如果普通类继承抽象类，必须实现抽象类中所有的抽象方法
- 抽象类还可以充当接口被实现（implements）
  - 如果把抽象类当作接口实现的话，普通类必须实现抽象类里面定义的所有属性和方法。

```dart
abstract class A {
  void m1(); // 抽象方法
  void m2(); // 抽象方法
}

class B extends A {
  // 继承了抽象类，必须实现抽象类中的所有抽象方法
  @override
  void m1() {
    print('m1');
  }

  @override
  void m2() {
    print('m2');
  }

  // void m3(); // 普通类中不能有抽象方法
}

void main() {
  // 抽象类不能被实例化
  // var a = A(); // 错误：Abstract classes can't be instantiated.
  var b = B();
  b.m1();
  b.m2();
}
```

### 接口

- 接口在`Dart`当中就是一个类（只是用法不同）
  - `Dart`中的接口不需要使用`interface`关键字
  - 接口可以是任意类，但是一般使用抽象类作为接口
- 一个类可以是实现(`implements`)多个接口，多个接口之间用逗号分割
- 普通类实现接口后，必须重写接口中的所有属性和方法

```dart
// 手机处理器
abstract class Processor {
  // 内核
  String? cores;
  // 芯片制程
  arch(String name);
}

// 手机摄像头
abstract class Camera {
  // 分辨率
  String? resolution;
  // 品牌
  brand(String name);
}

// 实现接口
class Phone implements Processor, Camera {
  @override
  String? cores;

  @override
  String? resolution;

  Phone(this.cores, this.resolution);

  @override
  arch(String name) {
    print('芯片制程：' + name);
  }

  @override
  brand(String name) {
    print('相机品牌：' + name);
  }
}

void main() {
  Phone phone = Phone('四核', '1080P');
  phone.arch('高通5nm');
  phone.brand('徕卡');
}
```

### 混入

- 混入(`mixin`)是一段公共代码。混入有两种声明方式：
  - 将类当作混入 `class MixinA { ... }`
    - 作为 `Mixin` 的类只能继承自`Object`，不能继承自其他类
    - 作为 `Mixin` 的类不能有构造函数
  - 使用 `Mixin` 关键字声明 `mixin MixinB { ... }`
- 混入可以提高代码复用效率，普通类可以通过`with`来使用混入
  - `class MyClass with MixinA, MixinB { ... }`
- 使用多个混入时，后引入的混入会覆盖之前混入中的重复的内容
  - `MixinA` 和 `MixinB` 中都有`hello()` 方法，`MyClass` 会使用 `MixinB` 中的

```dart
class Father {}

// class MixinA extends Father{ // 混入的类除了继承Object,不能继承其他类，不然会有错误: The class 'MixinA' can't be used as a mixin because it extends a class other than 'Object'.
class MixinA {
  String name = 'MixinA';

  // MixinA(); // 用作混入的类不能有构造函数：不然会有错误：The class 'MixinA' can't be used as a mixin because it declares a constructor

  void printA() {
    print('A');
  }

  void run() {
    print('A is runing');
  }
}

mixin MixinB {
  String name = 'MixinB';

  void printB() {
    print('B');
  }

  void run() {
    print('B is runing');
  }
}

class MyClass with MixinA, MixinB {}

void main() {
  MyClass myClass = MyClass();
  myClass.printA(); // MixinA
  myClass.printB(); // MixinB

  print(myClass.name); // 只会输出MixinB，后者覆盖了前面的
  myClass.run(); // 方法也是一样，指挥输出 B is runing
}
```

### 泛型

- 泛型是在函数，类，接口中指定**宽泛的数据类型**的语法
- 使用泛型可以减少重复的代码

#### 泛型函数

```dart
String getDataString(String value) {
  return value;
}

// 泛型函数
T getData<T>(T value) {
  return value;
}

void main() {
  print(getDataString('hello'));

  // 调用泛型函数
  print(getData<int>(1));
  print(getData<String>('12'));
  print(getData<bool>(true));
}
```

#### 泛型类

```dart
class CommonClass<T> {
  Set s = new Set<T>();

  void add(T value) {
    s.add(value);
  }

  void info() {
    print(s);
  }
}

void main() {
  CommonClass cc = new CommonClass<int>();
  cc.add(10);
  cc.info();

  CommonClass cc1 = new CommonClass<String>();
  // cc1.add(10); // 报错：type 'int' is not a subtype of type 'String' of 'value'
  cc1.add('10');
  cc1.info();
}
```

#### 泛型接口

```dart
abstract class ObjectCache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

class FileCache<T> implements ObjectCache<T> {
  @override
  String getByKey(String key) {
    return key;
  }

  @override
  void setByKey(String key, T value) {
    print('setByKey: key=$key value=$value');
  }
}

void main() {
  FileCache cache = FileCache<String>();
  cache.setByKey('key', 'value');
  print(cache.getByKey('key'));

  FileCache cache2 = FileCache<int>();
  cache2.setByKey('key', 10);
  print(cache2.getByKey('key'));
}
```

#### 泛型类型限制

```dart
class SomeBaseClass {}

class Extender extends SomeBaseClass {}

class Foo<T extends SomeBaseClass> {
  String toString() => "Instance of Foo<$T>";
}

void main() {
  Foo foo = new Foo<SomeBaseClass>();
  print(foo); // Instance of Foo<SomeBaseClass>

  Foo foo2 = new Foo<Extender>();
  print(foo2); // Instance of Foo<Extender>

  Foo foo3 = new Foo();
  print(foo3); // Instance of Foo<SomeBaseClass>
}
```

## 枚举

- 枚举是数量固定的常量值，通过enum关键字声明

  `enum Color { red, green, blue }`

- 枚举的values常量可以获取所有枚举值列表

  `List<Color> colors = Colors.values`

- 可以通过index获取值的索引

  `print(Color.green.index == 1)`

```dart
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
```

## 库与生态

### 自定义库

#### 定义

- 每个`Dart`文件默认都是一个库，只是没有使用`library`来显式声明
- `Dart` 使用`_`(下划线)开头的标识符，表示库内访问可见（私有）
- `library `关键字声明的库名称建议使用：`小写字母 + 下划线`

#### 使用

`import '库的位置/库名称.dart'`

### 系统库

- 系统库也叫核心库，是Dart提供的常用内置库

#### 使用

`import 'dart:库名称'`

```dart
import 'dart:math';
import 'dart:core'; // 这个库是默认引入的。不需要显式的写import 'dart:core'

void main() {
  print(sqrt(4));
  print(pi);
}
```

### 第三方库

#### 来源

- https://pub.dev
- https://pub.flutter-io.cn/packages
- https://pub.dartlang.org/flutter

#### 使用

- 在项目目录下创建 `pubspec.yaml`
- 在 `pubspec.yaml` 中声明第三方库(依赖)
- 命令行进入 `pubspec.yam`l 所在的目录，执行`pub get`进行安装
- 项目中引入已安装的第三方库（`import 'package:xxx/xxx.dart';`）

### 引入部分库

仅需引入需要的内容

- 包含引入（`show`）

  ```dart
  // show后面指定包含引入的内容
  import 'lib/Common.dart' show f1, f2;
  
  void main() {
    f1();
    f2();
    // f3(); // 会有错误：The function 'f3' isn't defined.
  }
  ```

- 排除引入（`hide`）

  ```dart
  // hide后面指定排除引入的内容
  import 'lib/Common.dart' hide f1, f2;
  
  void main() {
    // f1();  // 会有错误：The function 'f3' isn't defined.
    // f2(); // 会有错误：The function 'f3' isn't defined.
    f3();
  }
  ```

### 引入冲突处理

- 当库名冲突时，可以通过`as`关键字，给库声明一个前缀来解决冲突问题。

```dart
import 'lib/Common.dart' as common;
import 'lib/Function.dart' as function;

void main() {
  // f1(); // 冲突，无法调用，使用as关键字

  common.f1();
  function.f1();
}
```

### 延迟引入(懒加载)

- 使用 `deferred as` 关键字来标识需要延时加载的库

```dart
import 'lib/function.dart' deferred as func;

void main() {
  // func.hello(); // 运行会报错，错误：Deferred library func was not loaded.

  print(1);

  // 异步加载
  func.loadLibrary().then((_) {
    func.hello();
  });

  // 或者使用await
  greet();

  print(2);
}

Future greet() async {
  await func.loadLibrary();
  func.hello();
}

// 1
// 2
// hello
// hello
```

### 通过Part 与 Part of来组装库

> @分库
>
> 分库通过 part of 和主库建立联系时使用的名称，就是主库 library 的名称

**Sub1.dart**

```dart
// 和主库建立联系
part of util;

int foo() { ... }
```

**Sub2.dart**

```dart
// 和主库建立联系
part of util;

int Bar() { ... }
```

> @主库

**Util.dart**

```dart
library util;

// 和子库建立联系
part 'Sub1.dart';
part 'Sub2.dart';

String Hello() { ... }
```

> @使用

**Home.dart**

```dart
import 'Util.dart';

void mian() {
  // 来自sub1.dart
  foo();
  
  // 来自sub2.dart
  bar();
  
  // 来自util.dart
  hello();
}
```

