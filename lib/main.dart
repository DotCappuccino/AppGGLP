import 'package:appgglp/01_Login/loginPage.dart';
import 'package:flutter/material.dart';

import '00_Routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false, //Remove marca de Debug
      initialRoute: loginPage.routeName, //Rota para a tela de login
      routes: routes,
    );
  }
}


