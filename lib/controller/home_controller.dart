import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt counter = 1.obs;

  void increment() {
    counter.value++;
  }
}