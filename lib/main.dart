import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/models/student_model.dart';
import 'package:learn_getx/pages/home_page.dart';
import 'package:learn_getx/pages/not_found_page.dart';
import 'package:learn_getx/pages/settings_page.dart';

import 'controllers/student_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  StudentController studentController = Get.put(StudentController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: "/", page: () => MyApp()),
        GetPage(name: "/home", page: () => HomePage()),
        GetPage(
          name: "/settings",
          page: () => SettingsPage(),
          transition: Transition.leftToRight,
        ),
      ],
      unknownRoute: GetPage(name: "/notfound", page: () => NotFoundPage()),
      home: Scaffold(
        appBar: AppBar(title: const Text("Navigation"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() =>
                Text(
                  "His name is ${studentController.student.value.name}",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              ElevatedButton(
                onPressed: (() {
                  studentController.convertUpperCase();
                }),
                child: const Text("UPPERCASE")
              ),
              ElevatedButton(
                onPressed: (() {
                  // Get.toNamed("/home");
                  Get.toNamed("/home?channel=Notorious&context=CM&a=10");
                }),
                child: const Text("Home")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
