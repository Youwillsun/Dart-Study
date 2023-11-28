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
