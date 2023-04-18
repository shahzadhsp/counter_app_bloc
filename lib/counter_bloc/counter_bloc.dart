import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_events.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
            emit(CounterState(counter: state.counter+1));
    });
    on<Decrement>((event, emit) {
         emit(CounterState(counter: state.counter-1));
    });
  }
}
