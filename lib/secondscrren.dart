import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'service/maincontroller.dart';

class Secondscrren extends StatefulWidget {
  const Secondscrren({super.key});

  @override
  State<Secondscrren> createState() => _SecondscrrenState();
}

class _SecondscrrenState extends State<Secondscrren> {
  final maincontroller = Get.put(Maincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text("Count ${maincontroller.counter}")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  maincontroller.increment();
                },
                child: const Text("Increment")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Home")),
          ],
        ),
      ),
    );
  }
}
