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
