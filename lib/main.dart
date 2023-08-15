import 'package:e_board/src/admin/pages/dashboard/dashboard.dart';
import 'package:e_board/src/admin/pages/dashboard/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(),
        ),
      ],
      child: Builder(builder: (context) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: dashboard(),
        );
      }),
    );
  }
}
