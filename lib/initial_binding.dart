import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tr3umphant_designs/menu_controller.dart';

class InitialBinding implements Bindings {
  void dependencies() {
    Get.lazyPut(() => GetStorage(), fenix: true);
    Get.lazyPut(() => MenuController(), fenix: true);
  }
}
