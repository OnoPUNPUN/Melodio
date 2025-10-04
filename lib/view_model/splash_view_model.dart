
import 'package:get/get.dart';
import 'package:melodio/view/main_tabview/main_tab_view.dart';

class SplashViewModel extends GetxController {

  void loadView() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(() => MainTabView());
  }
}