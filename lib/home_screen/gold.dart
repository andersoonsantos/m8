import 'package:flutter/material.dart';
import 'package:m8/navigation/navigation.dart';

class Gold extends StatefulWidget {
  const Gold({Key? key}) : super(key: key);

  @override
  State<Gold> createState() => _GoldState();
}

class _GoldState extends State<Gold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Como investir em Ouro',
          style: TextStyle(color: Color(0xFF60D45C)),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              color: Color(0xFF60D45C),
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavegacaoPage()),
                );
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              // height: 80,
              // width:double.infinity,
              // width: 300,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(image: AssetImage("images/ouro.png"), height: 100),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
                  Text(
                      "Investir em ouro é possível e nada complicado. O fundo ouro é mais uma opção para diversificar seus investimentos e buscar proteção para o seu capital em momentos de forte oscilação do mercado. Influenciado pela lei da oferta e da procura, o ouro é uma mercadoria cujo preço passa por oscilações diárias. Por esse motivo, o fundo ouro é um investimento de médio a longo prazo."
                      "O ouro é um dos investimentos mais antigos do mundo, e até hoje é visto como uma opção de proteção contra as oscilações na sua carteira de investimentos em meio a incertezas na economia. Quando a crise impacta negativamente a bolsa de valores e os mercados, a busca por esse tipo de investimento aumenta e o preço do ouro tende a subir."
                      "Atualmente há diversas maneiras de investir nesse ativo, desde comprar barras, adquirir contratos de ouro na bolsa de valores brasileira, e, o mais acessível de todos, investir no fundo ouro!"
                      "O fundo ouro funciona como os outros tipos de fundos de investimento. A gestão é feita por especialistas qualificados e esse investimento reúne recursos de diversas pessoas. Os ganhos obtidos são divididos entre os participantes, na proporção do valor aplicado por cada um."
                      "No fundo ouro há menor burocracia para investir, já que o investidor conta com uma equipe especializada que escolhe as estratégias ideais para potencializar o lucro. Os fundos de investimento em ouro possuem alta liquidez.",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.justify),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
