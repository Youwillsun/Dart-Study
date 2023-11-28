// 手机处理器
abstract class Processor {
  // 内核
  String? cores;
  // 芯片制程
  arch(String name);
}

// 手机摄像头
abstract class Camera {
  // 分辨率
  String? resolution;
  // 品牌
  brand(String name);
}

// 实现接口
class Phone implements Processor, Camera {
  @override
  String? cores;

  @override
  String? resolution;

  Phone(this.cores, this.resolution);

  @override
  arch(String name) {
    print('芯片制程：' + name);
  }

  @override
  brand(String name) {
    print('相机品牌：' + name);
  }
}

void main() {
  Phone phone = Phone('四核', '1080P');
  phone.arch('高通5nm');
  phone.brand('徕卡');
}
