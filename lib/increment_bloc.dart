import 'package:increment/common/starter_bloc.dart';

class IncrementBloc with StarterBloc<int> {
  int _counter = 0;

  IncrementBloc() {
    streamAdd(_counter);
  }

  void eventIncrementCounter() {
    _counter++;
    streamAdd(_counter);
  }
}
