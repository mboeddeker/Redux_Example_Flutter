import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux_example/redux/AppState.dart';

abstract class ReduxAction<T> {
  T payload;

  ReduxAction(this.payload);
}

class IncrementAction extends ReduxAction<int> {
  IncrementAction(int number) : super(number);
}

class DecrementAction extends ReduxAction<int> {
  DecrementAction(int number) : super(number);
}

final incrementAsyncAction = (Store<AppState> store) async {
  final value =
      await Future.delayed(Duration(seconds: 2), () => IncrementAction(1));

  store.dispatch(value);
};

ThunkAction<AppState> decrementAsyncAfter(Duration duration) {
  return (Store<AppState> store) async {
    final value = await Future.delayed(duration, () => DecrementAction(1));
    store.dispatch(value);
  };
}
