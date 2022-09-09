import 'package:get/get.dart';
import 'package:learn_getx/models/student_model.dart';

class StudentController extends GetxController {
  var student = Student(name: "Tome", age: 30).obs;

  void convertUpperCase() {
    student.update((student) {
      student!.name = student.name.toString().toUpperCase();
    });
  }
}