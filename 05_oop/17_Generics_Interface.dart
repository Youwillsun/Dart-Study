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
