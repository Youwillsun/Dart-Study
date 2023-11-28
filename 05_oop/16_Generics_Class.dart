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
