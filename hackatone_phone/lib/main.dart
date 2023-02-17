import 'package:flutter/material.dart';
import 'package:hackatone_phone/main_screen/main_screen_widget.dart';
import 'package:hackatone_phone/styles/colors.dart';

import 'authorization/login_page_widget.dart';
import 'authorization/register_page_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.bottomBackColor,
          selectedItemColor: Colors.cyan,
          unselectedItemColor: Colors.black,
        ),
      ),
      title: 'Flutter Demo',
      routes: {
        '/reg': (context) => const RegisterScreenWidget(),
        '/login': (context) => const LoginWidget(),
        '/main_screen': (context) => MainScreenWidget(),
      },
      initialRoute: '/reg',
    );
  }
}
