import 'package:flutter/material.dart';
import 'MyHomePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xff1E3C64),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xffEC9E37)),
      ),
      home: const MyHomePage(title: 'Vehicle Scanner App'),
    );
  }
}
