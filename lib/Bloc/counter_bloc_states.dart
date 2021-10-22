import 'package:bloc/bloc.dart';

import 'counter_bloc_events.dart';

class CounterBloc extends Bloc<CounterEvents , int >{
  CounterBloc({initialState}) : super(0);


 int get  initialState =>0;

  @override
  Stream<int> mapEventToState(CounterEvents event) async*{
   switch (event){
     case CounterEvents.increment:
       yield state +1 ;
       break;

     case CounterEvents.decrement:
       yield state - 1 ;
       break;
   }
  }

}