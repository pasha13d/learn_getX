import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controllers/increment_controller.dart';
import 'package:learn_getx/controllers/translation_controller.dart';
import 'package:learn_getx/models/messages.dart';
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

  TranslationController translationController = Get.put(TranslationController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Internationalization',
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
      translations: Messages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      home: Scaffold(
        appBar: AppBar(title: const Text("Internationalization"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'pasha'.tr,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                ),
              ),
              ElevatedButton(
                onPressed: (() {
                  translationController.changeLanguage('bn', 'BAN');
                }),
                child: const Text("Bangla")
              ),
              ElevatedButton(
                onPressed: (() {
                  translationController.changeLanguage('ar', 'AR');
                }),
                child: const Text("Arabic")
              ),
              ElevatedButton(
                onPressed: (() {
                  translationController.changeLanguage('en', 'US');
                }),
                child: const Text("English")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
