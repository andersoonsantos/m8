import 'package:flutter/material.dart';
import 'package:m8/navigation/navigation.dart';

class Coin extends StatefulWidget {
  const Coin({Key? key}) : super(key: key);

  @override
  State<Coin> createState() => _CoinState();
}

class _CoinState extends State<Coin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Como investir em Moedas',
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
                  Image(image: AssetImage("images/moedas.png"), height: 100),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
                  Text(
                      "O investimento em moedas estrangeiras é visto como uma proteção de capital (hedge) e opção de diversificação, principalmente em momentos de crise e alta inflação."
                      " Em situações em que a economia brasileira está fragilizada, o dólar costuma ter um desempenho positivo."
                      " O principal objetivo do investimento em dólar e outras moedas estrangeiras são a proteção (hedge) e diversificação."
                      " Existem diferentes formas de investir em moedas. As maneiras mais conhecidas são:"
                      " Moeda física -"
                      " A forma mais conhecida de investir em moedas estrangeiras é por meio da compra e venda de papel moeda."
                      " Para isso, basta ir até qualquer instituição autorizada e fechar o negócio."
                      " No entanto, você pagará IOF, spread e outras taxas adicionais."
                      " Há também o risco de furto, roubo e até degradação do papel moeda."
                      " Além do fato de que o capital ficará parado enquanto poderia estar gerando lucro em alguma aplicação."
                      " Por isso, esta opção só é indicada para quem pretende viajar, quer fazer compras em moeda estrangeira ou possua algum negócio no exterior."
                      " Nesse caso, a orientação é que a compra seja feita em períodos distintos, visando obter a melhor cotação média."
                      " Fundos Cambiais-"
                      " Fundos cambiais são fundos de investimento que aplicam no mínimo 80% do seu patrimônio em ativos relacionados direta ou indiretamente a uma moeda estrangeira. Normalmente o dólar ou euro."
                      " E esses ativos podem ser de qualquer natureza, seja ações, títulos de renda fixa ou a própria moeda."
                      " Investir em fundos cambiais é uma das formas mais simples de ter exposição à variação das moedas estrangeiras, além de trazer diversificação e proteção do capital."
                      " Embora esses fundos tenham a rentabilidade atrelada à variação de uma moeda estrangeira, os investimentos e resgates são sempre feitos em reais."
                      " Há ainda a incidência de custos, como imposto de renda, taxas de administração e IOF."
                      " Contratos Futuros-"
                      " Contratos futuros de moedas, também conhecidos por Forex Futures ou FX Futures (Foreign Exchange Futures), são acordos de compra e venda de determinada moeda no futuro por um preço previamente determinado."
                      " Negociados no Mercado Futuro, esses contratos podem ser usados tanto como forma de proteção, para evitar que variações em taxas de câmbio, quanto de especulação sobre o preço de uma determinada moeda."
                      " Para comprar contratos futuros de câmbio basta ter uma conta em uma corretora de valores e realizar a ordem de compra do contrato desejado.",
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
