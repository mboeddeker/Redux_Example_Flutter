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
