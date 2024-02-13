import 'package:get/get.dart';

class CounterController extends GetxController {
  final count = 1.obs;

  void increment() { 
    if (count.value <100) {
      count.value++;
    }
  }
    void decrement() { 
    count.value--;
  }
}
