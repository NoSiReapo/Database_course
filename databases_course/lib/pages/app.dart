import 'package:databases_course/pages/getters_page.dart';
import 'package:databases_course/pages/info_page.dart';
import 'package:flutter/material.dart';
import 'main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xff29AD62),
            secondary: const Color(0xff1f1f1f)),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/main',
      routes: {
        '/main': (context) => const MainPage(),
        '/getters': (context)=> const GettersPage(),
        '/info': (context)=> const InfoPage(),
      }
    );
  }
}
