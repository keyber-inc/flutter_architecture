import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/my_home/my_home_controller.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<MyHomeController, MyHomeState>(
      create: (_) => MyHomeController(),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  context
                      .select<MyHomeState, int>((state) => state.counter.count)
                      .toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                RaisedButton(
                  child: Text('Reset'),
                  onPressed: () async {
                    final result = await showDialog<bool>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Text('Really?'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('No'),
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                            ),
                            FlatButton(
                              child: Text('Yes'),
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                            ),
                          ],
                        );
                      },
                    );

                    if (result) {
                      context.read<MyHomeController>().resetCounter();
                    }
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () =>
                context.read<MyHomeController>().incrementCounter(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
