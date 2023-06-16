import 'package:get/get.dart';

class Controller extends GetxController {
  // int count = 0;
  RxInt count = 0.obs; // Observable
  increment() => count++;
  decrement() => count--;
  /// increment(){
  ///   count.value++;
  /// }
}
