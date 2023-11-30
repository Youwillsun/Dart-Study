class IOSPhone {
  IOSPhone() {
    print('Constructor');
  }

  call(String num) {
    print('Phone number is $num');
  }
}

void main() {
  IOSPhone phone = new IOSPhone(); // 实例化对象时会自动调用构造函数
  // 将类对象用做函数名，会自动调用类对象的call方法
  phone('911');

  // 简写
  IOSPhone()('123');
}
