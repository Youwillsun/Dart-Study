getUserInfo() {
  return Future.delayed(Duration(seconds: 2), () {
    print('UserInfo');
    return 1;
  });
}

// getOrderInfo() {
//   getUserInfo().then((value) {
//     print('用户信息：$value');
//     Future.delayed(Duration(seconds: 2), () {
//       print('OrderInfo');
//       return 11111;
//     });
//   });
// }

// 简化代码
getOrderInfo(int id) async {
  return Future.delayed(Duration(seconds: 2), () {
    print('userID:$id');
    print('OrderInfo');
    return 11111;
  });
}

main() async {
  // 获取用户订单信息
  // 1. 获取用户信息
  // 2. 根据用户信息，获取用户订单信息
  var id = await getUserInfo();
  var order = await getOrderInfo(id);
  print(order);
}
