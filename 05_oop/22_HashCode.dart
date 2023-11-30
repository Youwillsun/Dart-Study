class Person {
  say() {
    print('hello world');
  }
}

// 单例
class PersonSingle {
  static PersonSingle? _instance;

  PersonSingle._internal();

  static getInstance() {
    if (_instance == null) {
      _instance = new PersonSingle._internal();
    }
    return _instance;
  }

  factory PersonSingle() => getInstance();
}

void main() {
  Person person = new Person();
  print(person.hashCode);

  Person person2 = new Person();
  print(person2.hashCode);

  // 单例模式下hashCode相同
  PersonSingle personSingle = new PersonSingle();
  print(personSingle.hashCode);
  PersonSingle personSingle2 = new PersonSingle();
  print(personSingle2.hashCode);
}
