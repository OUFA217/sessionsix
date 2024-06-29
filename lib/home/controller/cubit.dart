import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sessionsix/home/controller/states.dart';

class HomeCubit extends Cubit<CounterState> {
  HomeCubit() : super(CounterInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  int counter = 0;

  void increment() {
    counter++;
    emit(CounterIncrement());
  }
}
