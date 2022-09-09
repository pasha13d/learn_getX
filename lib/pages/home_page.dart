import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'),),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("This is ${Get.parameters["channel"]} and context is ${Get.parameters["context"]} and  ${Get.parameters["a"]}",
                style: TextStyle(color: Colors.indigo, fontSize: 20.0),
              ),
              ElevatedButton(
                  onPressed: (() {
                    Get.toNamed("/settings");
                  }),
                  child: const Text("Settings")
              ),
              ElevatedButton(
                  onPressed: (() {
                    Get.back();
                  }),
                  child: const Text("Home")
              ),
            ],
          )
        ),
      ),
    );
  }
}
