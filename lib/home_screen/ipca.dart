import 'package:flutter/material.dart';
import 'package:m8/navigation/navigation.dart';

class Ipca extends StatefulWidget {
  const Ipca({Key? key}) : super(key: key);

  @override
  State<Ipca> createState() => _IpcaState();
}

class _IpcaState extends State<Ipca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Ipca',
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
                Image(image: AssetImage("images/ipca.png"), height: 100),
                Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
                Text(
                    "O IPCA é um dos índices de inflação mais tradicionais e importantes do Brasil. Criado em 1979, o indicador tem uma razão de existência simples: medir a variação dos preços de um conjunto de produtos e serviços vendidos no varejo e consumidos pelas famílias brasileiras. O significado do acrônimo é Índice de Preços ao Consumidor Amplo. O indicador tem como objetivo abranger 90% das pessoas que vivem nas áreas urbanas no país – e é justamente por isso que é chamado de “amplo”. O resultado da conta indica se, na média, os preços aumentaram, diminuíram ou permaneceram estáveis de um mês para o mês seguinte.",
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
