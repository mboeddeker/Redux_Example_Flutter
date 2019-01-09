import 'package:redux/redux.dart';
import 'package:redux_example/redux/AppState.dart';

loggingMiddleware(Store<AppState> store, action, NextDispatcher next) {
  print('${new DateTime.now()}: $action');
  next(action);
}
