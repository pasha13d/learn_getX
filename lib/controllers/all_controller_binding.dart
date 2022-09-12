import 'package:get/get.dart';
import 'package:learn_getx/controllers/increment_controller.dart';
import 'package:learn_getx/controllers/student_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StudentController>(() => StudentController());
    Get.lazyPut<IncrementController>(() => IncrementController());
  }
}