import 'package:flutter/material.dart';

import 'Home_Page.dart';
import 'Login_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppBusca(),
  ));
}

class AppBusca extends StatelessWidget {
  const AppBusca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
