import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/pages/home_page.dart';
import 'package:learn_getx/pages/not_found_page.dart';
import 'package:learn_getx/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
