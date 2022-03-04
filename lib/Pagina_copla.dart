import 'package:flutter/material.dart';

class Pagina_copla extends StatefulWidget {
  const Pagina_copla({Key? key}) : super(key: key);

  @override
  State<Pagina_copla> createState() => _Pagina_coplaState();
}

class _Pagina_coplaState extends State<Pagina_copla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Stack(
          children: [
            Container(
              //parte superior foto da pagina

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'lib/assets/imagens/coplan.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                  child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    //icone favorito
                    Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.favorite,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        //icone compartilhar
                        Container(
                          child: Icon(
                            Icons.reply_all,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 7,
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Coplan - Soluções em Gestão Pública',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Fundada no ano de 2001, pelo Sr. Arlindo Lenzi, iniciou suas atividades na área pública voltada à restituição de valores referentes ao índice de Participação dos Municípios (IPM). Desde o ano de 2004, foi firmada a parceria entre o Sr. Arlindo e o Sr. Paulo Lenzi, com o objetivo de ampliar a área de atuação da empresa.',
                      style: TextStyle(height: 1.8),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      constraints:
                          BoxConstraints.tightFor(width: 350, height: 50),
                      margin: EdgeInsets.only(
                        top: 15,
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
                          //Navigator.of(context).pushNamed('/home');
                        },
                        child: Text(
                          "CONTRATAR",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
