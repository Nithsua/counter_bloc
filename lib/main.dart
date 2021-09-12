import 'package:counter_bloc/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark),
          elevation: 0.0,
          backgroundColor: Colors.white,
          titleTextStyle:
              Theme.of(context).textTheme.headline6?.apply(color: Colors.black),
        ),
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          // systemOverlayStyle: const SystemUiOverlayStyle(
          //     statusBarColor: Colors.transparent,
          //     statusBarIconBrightness: Brightness.light),
          elevation: 0.0,
          backgroundColor: Colors.black,
          titleTextStyle:
              Theme.of(context).textTheme.headline6?.apply(color: Colors.white),
        ),
        scaffoldBackgroundColor: Colors.black,
        backgroundColor: Colors.black,
      ),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
