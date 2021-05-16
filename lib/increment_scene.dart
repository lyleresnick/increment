import 'package:flutter/material.dart';

import 'common/bloc_provider.dart';
import 'increment_bloc.dart';

class IncrementScene extends StatelessWidget {

  final _bloc = IncrementBloc();

  Widget build(BuildContext context) {
    return BlocProvider<IncrementBloc>(
      bloc: _bloc,
      child: StreamBuilder<int>(
        stream: _bloc.stream,
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Container();
          final counterValue = snapshot.data;

          return Scaffold(
            appBar: AppBar(
              title: Text('Increment'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '$counterValue',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: _bloc.incrementCounter,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}