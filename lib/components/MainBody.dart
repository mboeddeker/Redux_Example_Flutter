import 'package:flutter/material.dart';
import 'package:redux_example/redux/AppState.dart';
import 'package:redux_example/redux/Actions.dart';
import 'package:flutter_redux/flutter_redux.dart';

class MainBody extends StatelessWidget {
  Widget _incrementButton() {
    return StoreConnector<AppState, VoidCallback>(
      converter: (store) {
        return () => store.dispatch(IncrementAction(1));
      },
      builder: (context, method) {
        return RaisedButton(
          onPressed: method,
          child: Text(
            '+',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          color: Colors.teal,
        );
      },
    );
  }

  Widget _decrementButton() {
    return StoreConnector<AppState, VoidCallback>(
      converter: (store) {
        return () => store.dispatch(DecrementAction(1));
      },
      builder: (context, method) {
        return RaisedButton(
          onPressed: method,
          child: Text(
            '-',
            style: TextStyle(fontSize: 25, color: Colors.deepOrange),
          ),
          color: Colors.teal,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: StoreConnector<AppState, String>(
                  converter: (store) => store.state.counter.toString(),
                  builder: (context, currenCount) => Text(currenCount),
                )),
            _incrementButton(),
            _decrementButton()
          ],
        ),
      ),
    );
  }
}
