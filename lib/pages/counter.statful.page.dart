import 'package:flutter/material.dart';


class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter stateful page'),
      ),
      body: Center(
        child: Text(
          "Counter value => ${this.counter}",
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
            FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: (){
                  setState(() {
                    --this.counter;
                  });
                }
            ),

          SizedBox(width: 10,),

          FloatingActionButton(
            child: Icon(Icons.add),
              onPressed: (){
              setState(() {
                ++this.counter;
              });
              }
          )
        ],
      ),
    );
  }
}
