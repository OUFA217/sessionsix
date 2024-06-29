import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sessionsix/home/controller/cubit.dart';
import 'package:sessionsix/home/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const MaterialApp(
        title: 'Cubit Counter',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
