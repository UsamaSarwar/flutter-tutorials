import 'package:get/get.dart';

class Controller extends GetxController {
  final width = 0.0.obs;
  final height = 0.0.obs;

  // Getter
  double get getWidth => width.value;
  double get getHeight => height.value;

  // Setter
  set setWidth(double value) => width.value = value;
  set setHeight(double value) => height.value = value;
}
