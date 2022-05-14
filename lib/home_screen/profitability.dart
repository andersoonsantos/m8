import 'package:flutter/material.dart';
import 'package:m8/navigation/navigation.dart';

class Profitability extends StatefulWidget {
  const Profitability({Key? key}) : super(key: key);

  @override
  State<Profitability> createState() => _ProfitabilityState();
}

class _ProfitabilityState extends State<Profitability> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Aprenda o que é rentabilidade',
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
                Image(
                    image: AssetImage("images/rentabilidade.png"), height: 100),
                Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
                Text(
                    "Rentabilidade é a qualidade do que é rentável. Ou seja, trata-se da capacidade de produzir rendimento. Esse rendimento é representado, normalmente, pelo percentual sobre o que foi investido, e não pelo valor numérico do dinheiro. Por exemplo, se você investiu 5.000,00 e teve lucro de 2.500,00, isso significa que a sua rentabilidade é de 50%. ",
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
