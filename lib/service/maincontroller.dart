import 'package:get/get.dart';

class Maincontroller extends GetxController {
  var counter = 0.obs;
  void increment() {
    counter++;
  }

  void decrement() {
    counter--;
  }
}
