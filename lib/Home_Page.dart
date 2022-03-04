import 'package:flutter/material.dart';

import 'Pagina_copla.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            //iniciando projeto parte superiior
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
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
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),

                  //

                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Pagina_copla()));
                          },
                          child: Container(
                            child: Icon(
                              Icons.menu,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 150, bottom: 20),
                          child: Text(
                            'Bem Vindo Kalleb',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              bottom: 25,
                            ),
                            child: Container(
                              width: 350,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 5)
                                  ]),
                              //definindo
                              child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                  hintText: 'Pesquisar',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),

                //categorias
                Container(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 25,
                      ),
                      child: Text(
                        'Categorias',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                ),

                //barra de categorias
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      children: [
                        //categorias 1
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(
                              Icons.settings,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(90),
                            ),
                          ),
                        ),

                        //categorias 2

                        Container(
                          margin: EdgeInsets.all(10),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(
                              Icons.account_balance,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(90),
                            ),
                          ),
                        ),

                        //categorias 3

                        Container(
                          margin: EdgeInsets.all(10),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(
                              Icons.time_to_leave,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(90),
                            ),
                          ),
                        ),

                        //categoria 4

                        Container(
                          margin: EdgeInsets.all(10),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(90),
                            ),
                          ),
                        ),

                        //Categoria 5
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(90),
                            ),
                          ),
                        ),

                        //categoria 6
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(90),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //conteudos

                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 55, bottom: 8.0),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        height: 150,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                      ),

                      //conteudos 1

                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Pagina_copla()));
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Padding(
                                padding: EdgeInsets.all(8),
                              ),
                              height: 150,
                              width: 350,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26, blurRadius: 5),
                                ],
                              ),
                            ),
                          ),

                          /*Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                              child: Image(
                                  image: NetworkImage(
                                'https://www.coplanmt.com.br/wp-content/uploads/2021/05/coplan-59-semmuro-scaled.jpg',
                              )),
                            ),
                          ), */
                        ],
                      ),

                      //conteudos 2

                      Container(
                        margin: EdgeInsets.all(10),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        height: 150,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                      ),

                      // conteudos 3

                      Container(
                        margin: EdgeInsets.all(10),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        height: 150,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                      ),

                      // conteudos 4

                      Container(
                        margin: EdgeInsets.all(10),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        height: 150,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
