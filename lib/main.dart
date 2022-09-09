import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Snackbar"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (() {
                  Get.snackbar(
                    "Snack bar title",
                    "Message",
                    colorText: Colors.white,
                    backgroundColor: Colors.black,
                    snackPosition: SnackPosition.BOTTOM,
                  );
                }),
                child: const Text("Snackbar")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
