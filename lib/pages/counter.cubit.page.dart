import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_provider_bloc/bloc/counter.cubit.dart';
import 'package:flutter_counter_provider_bloc/provider/counter.state.dart';
import 'package:provider/provider.dart';


class CounterCubitPage extends StatelessWidget {
  int counter=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Cubit Page'),
      ),

      body: BlocBuilder<CounterCubit, int>(
          builder: (context,state){
            return Center(
              child: Text(
                "Counter value => ${state}",
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
                  context.read<CounterCubit>().decrementer();

              }
          ),

          SizedBox(width: 10,),

          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){
                context.read<CounterCubit>().incrementer();
              }
          )
        ],
      ),
    );
  }
}

