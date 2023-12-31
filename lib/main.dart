import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakaobank/blocs/home_cubit.dart';
import 'package:kakaobank/presentation/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Kakaobank',
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) {
          return BlocProvider(
            create: (_) => HomeCubit(),
            child: HomePage(),
          );
        }
      },
    );
  }
}
