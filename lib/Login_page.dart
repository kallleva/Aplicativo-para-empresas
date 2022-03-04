import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home_Page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //todos os widgets vao ser alinhados na vertical
      //  melhor opçao adicionar um colum
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              //tamanho da tela
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
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
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Align(
                      alignment: Alignment.center,
                      child: Center(
                        child: Container(
                          height: 150,
                          width: 150,
                          child: Image.network(
                            'https://www.pngmart.com/files/16/Hand-Shake-Transparent-Background.png',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    //texto Login
                    Spacer(),
                    Align(
                      //defininfo alinhamento
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 32,
                          right: 32,
                        ),
                        child: Text(
                          'Bem Vindo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 62,
                ),
                child: Column(
                  children: [
                    // imput para receber email
                    Container(
                      //dividindo tamanho da tela
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 50,
                      //estilizando
                      padding: EdgeInsets.only(
                        top: 4,
                        left: 16,
                        bottom: 4,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 5)
                          ]),
                      //definindo
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                            hintText: 'Email'),
                      ),
                    ),

                    Container(
                      //dividindo tamanho da tela
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 50,
                      margin: EdgeInsets.only(top: 32),
                      //estilizando
                      padding: EdgeInsets.only(
                        top: 4,
                        left: 16,
                        bottom: 4,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 5)
                          ]),
                      //definindo
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Colors.grey,
                            ),
                            hintText: 'Senha'),
                      ),
                    ),

                    // definindo texto de recuperação de senha
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18, right: 32),
                        child: Text(
                          'Esqueçeu sua Senha ?',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //botao e suas estilização
              Container(
                constraints: BoxConstraints.tightFor(width: 350, height: 50),
                margin: EdgeInsets.only(
                  top: 60,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blue.withOpacity(1.0),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                    //Navigator.of(context).pushNamed('/home');
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(70),
                child: Text('Se Cadastrar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
