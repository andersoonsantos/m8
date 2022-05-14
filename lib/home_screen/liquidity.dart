import 'package:flutter/material.dart';
import 'package:m8/navigation/navigation.dart';

class Liquidity extends StatefulWidget {
  const Liquidity({Key? key}) : super(key: key);

  @override
  State<Liquidity> createState() => _LiquidityState();
}

class _LiquidityState extends State<Liquidity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Aprenda o que é liquidez',
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
                Image(image: AssetImage("images/liquidez.png"), height: 100),
                Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
                Text(
                    "Liquidez é a capacidade de conversão de um bem em dinheiro. Ou seja, é a rapidez com a qual você consegue se desfazer de algo que você possui para receber dinheiro em mãos.",
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
