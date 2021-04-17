import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_provider_bloc/bloc/counter.bloc.dart';
import 'package:flutter_counter_provider_bloc/bloc/counter.cubit.dart';
import 'package:flutter_counter_provider_bloc/pages/counter.bloc.page.dart.dart';
import 'package:flutter_counter_provider_bloc/pages/counter.cubit.page.dart';
import 'package:flutter_counter_provider_bloc/pages/counter.provider.page.dart';
import 'package:flutter_counter_provider_bloc/provider/counter.state.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

// class MyAppV1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => CounterState()),
//       ],
//       child: MaterialApp(
//         title: "Counter app",
//         theme: ThemeData(
//           primarySwatch: Colors.lightBlue
//         ),
//         routes:{
//           "/":(context) => CounterProviderPage(),
//         },
//         debugShowCheckedModeBanner: false,
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit(0)),
        BlocProvider(create: (context) => CounterBloc()),
      ],
      child: MaterialApp(
        title: "Counter app",
        theme: ThemeData(
            primarySwatch: Colors.lightBlue
        ),
        routes:{
          "/":(context) => CounterBlocPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

