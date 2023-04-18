import 'package:counter_app_bloc/counter_bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc/counter_bloc.dart';
import 'counter_bloc/counter_events.dart';



class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, count) {
            return Text(counterBloc.state.counter.toString(),
                style: Theme.of(context).textTheme.displayMedium);
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => BlocProvider.of<CounterBloc>(context).add(Increment())
      ),
      FloatingActionButton(
        child: const Icon(Icons.remove),
        onPressed: () => BlocProvider.of<CounterBloc>(context).add(Decrement())
      ),
      ],)
    );
  }
}

