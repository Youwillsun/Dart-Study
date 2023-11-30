class Person {
  say() {
    print('say something');
  }

  @override
  noSuchMethod(Invocation invocation) {
    print('未定义的方法');
    // TODO: implement noSuchMethod
    // return super.noSuchMethod(invocation);
  }
}

void main() {
  dynamic person = new Person();
  person.say();
  person.study();
}
