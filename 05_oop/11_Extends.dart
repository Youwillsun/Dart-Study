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
