import 'package:get/get.dart';

class Controller extends GetxController {
  // Observable is a reactive variable
  final counter = 0.obs;

  // Setter
  set setCounter(int value) => counter.value = value;

  // Getter
  int get getCounter => counter.value;
}
