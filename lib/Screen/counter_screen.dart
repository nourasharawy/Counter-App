import 'package:counterappusingloc/Bloc/counter_bloc_events.dart';
import 'package:counterappusingloc/Bloc/counter_bloc_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc cB =  BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Counter Screen"),),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MaterialButton(child: (Text('+')), onPressed: (){
              cB.add(CounterEvents.increment);
            }),

            BlocBuilder<CounterBloc  , int>(
              builder : (context , state){
                return Text('$state');
              }

            ),
            MaterialButton(child: (Text('-')), onPressed: (){
              cB.add(CounterEvents.increment);
            }),

          ],
        ),
      ),

    );
  }
}
