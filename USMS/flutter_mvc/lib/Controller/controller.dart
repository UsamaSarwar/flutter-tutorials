import '../Model/counter.dart';

class Controller {
  Counter counter = Counter(count: 0);
  increment() {
    counter.count++;
  }
}
