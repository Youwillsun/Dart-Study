import 'dart:convert';
import 'package:http/http.dart' as http;
// https://httpbin.org/ip //返回IP地址

Future getIPAddress() async {
  final url = "http://httpbin.org/ip";
  final response = await http.get(Uri.parse(url));
  // 解析json
  String ip = jsonDecode(response.body)['origin'];
  return ip;
}

void main() async {
  try {
    final ip = await getIPAddress();
    print(ip);
  } catch (e) {
    print(e);
  }
}
