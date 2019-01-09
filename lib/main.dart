import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_example/components/MainBody.dart';
import 'package:redux_example/redux/AppState.dart';
import 'package:redux_example/redux/Store.dart';

void main() => runApp(MyApp(store: store));

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
            title: 'Redux Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: Scaffold(
              appBar: AppBar(
                title: Text('Redux Demo'),
              ),
              body: MainBody(),
            )));
  }
}
