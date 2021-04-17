import 'package:flutter/material.dart';
import 'package:flutter_counter_provider_bloc/provider/counter.state.dart';
import 'package:provider/provider.dart';


class CounterProviderPage extends StatelessWidget {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    CounterState counterState = Provider.of<CounterState>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Provider Page'),
      ),
      body: Consumer<CounterState>(
        builder: (context,counterState,child){
          return Center(
            child: Text(
              "Counter value => ${counterState.counter}",
              style: Theme.of(context).textTheme.headline5,
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: (){
                counterState.incrementer();

              }
          ),

          SizedBox(width: 10,),

          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){
                counterState.decrementer();
              }
          )
        ],
      ),
    );
  }
}

