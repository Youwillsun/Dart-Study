void main() {
  parent() {
    int money = 1000;
    return () {
      money -= 100;
      print(money);
    };
  }

  Function child = parent();
  child();
  child();
  child();
}
