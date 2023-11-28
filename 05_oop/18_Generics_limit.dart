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
