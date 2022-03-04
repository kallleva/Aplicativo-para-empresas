import 'package:flutter/material.dart';

class Lggin_Page1 extends StatelessWidget {
  const Lggin_Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          // criaçao do widt superior
          gradient: LinearGradient(
            // inicio e fim
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1565C0),
              Color(0xFF1E88E5),
            ],
          ),
          //definindo borda
        ),
      ),
    );
  }
}
