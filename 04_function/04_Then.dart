import 'dart:convert';
import 'package:http/http.dart' as http;
// https://httpbin.org/ip //返回IP地址

Future getIPAddress() {
  final url = "http://httpbin.org/ip";
  return http.get(Uri.parse(url)).then((response) {
    // print(response.body);
    // 解析json
    String ip = jsonDecode(response.body)['origin'];
    return ip;
  });
}

void main() {
  getIPAddress()
      .then((value) => print(value))
      .catchError((error) => print(error));
}
