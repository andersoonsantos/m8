import 'package:flutter/material.dart';
import 'package:m8/navigation/navigation.dart';

class Selic extends StatefulWidget {
  const Selic({Key? key}) : super(key: key);

  @override
  State<Selic> createState() => _SelicState();
}

class _SelicState extends State<Selic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Taxa Selic',
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
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage("images/selic.png"), height: 100),
                Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
                Text(
                    "​A Selic é a taxa básica de juros da economia. É o principal instrumento de política monetária utilizado pelo Banco Central (BC) para controlar a inflação. Ela influencia todas as taxas de juros do país, como as taxas de juros dos empréstimos, dos financiamentos e das aplicações financeiras.",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.justify),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
