import 'package:get/get.dart';
import 'package:testing_api/home/http/http_controller.dart';
import 'package:testing_api/home/http/repository/user_http_repository.dart';
import 'package:testing_api/repository/i_user_repository.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
