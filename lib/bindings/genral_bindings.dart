import 'package:demo/common/widgets/loader/network_manager.dart';
import 'package:get/get.dart';

class GenralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
