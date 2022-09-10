import 'package:get/get.dart';

class IncrementController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update();
  }
}