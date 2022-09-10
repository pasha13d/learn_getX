import 'package:get/get.dart';

class IncrementController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update();
  }

  void cleanUpTask() {
    print("Clean up task");
  }

  @override
  void onInit() {
    print("Init called");
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}