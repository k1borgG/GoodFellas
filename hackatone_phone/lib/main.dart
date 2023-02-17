import 'package:flutter/material.dart';

import 'authorization/login_page_widget.dart';
import 'authorization/register_page_widget.dart';
import 'main_screen/main_screen_widget.dart';
import 'real_estate_info/real_estate_info_widget.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/reg' :(context) => const RegisterScreenWidget(),
        '/login':(context) => const LoginWidget(),
        '/main_screen': (context) => const MainScreenWidget(),
        '/main_screen/real_estate_info': (context) =>
            const RealEstateInfoWidget(),

      },
      initialRoute: '/reg',
    );
  }
}