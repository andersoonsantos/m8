import 'package:flutter/material.dart';
import 'package:m8/navigation/navigation.dart';

class Economy extends StatefulWidget {
  const Economy({Key? key}) : super(key: key);

  @override
  State<Economy> createState() => _EconomyState();
}

class _EconomyState extends State<Economy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Como economizar mesmo ganhando pouco',
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
                  Image(
                      image: AssetImage("images/economizar.png"), height: 100),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
                  Text(
                      "Ter um pezinho de meia dá aquela tranquilidade, tanto pra quando surge alguma emergência quanto pra atingir os nossos objetivos, né? Economizar é um hábito importante de ter, porque é com ele que você vai garantir a sua segurança financeira."
                      " A gente nunca sabe como será o dia de amanhã, e é melhor estar prevenido pra qualquer imprevisto. Por isso, a reserva de emergência deve ser a sua primeira meta de economia. O ideal é guardar ao menos um valor suficiente para pagar suas despesas de seis meses."
                      " Melhor ainda se você tiver uma reserva de um ano.  saber como economizar dinheiro vai te ajudar a chegar mais perto da vida que você sempre quis ter. Quanto guardar por mês do salário?"
                      " Não existe um número ou uma porcentagem mágica aqui que funcione pra todo mundo, porque cada um tem uma realidade diferente."
                      " Mas especialistas concordam que o ideal é guardar todo mês no mínimo 10% dos rendimentos, sejam eles de salário ou de outrostrabalhos."
                      " Porém, sabemos que nem todo mundo consegue guardar essa grana todo mês, porque as contas comem quase todo o salário. Por isso, é importante aprender a economizar."
                      " E tudo começa com o planejamento e o controle financeiro, estratégias que permitem visualizar quais gastos podem ser cortados ou reduzidos."
                      " Neste caso, comece economizando 2% este mês, 5% no próximo, 7% no outro e assim por diante. Assim, você vai criando o hábito de poupar cada vez um pouquinhomais"
                      " Qual a porcentagem ideal de gastos mensais?"
                      " Você conhece o método 50-30-20?  Nele, o ideal é que seus gastos não ultrapassem 80% dos seus ganhos, "
                      " deixando assim 20% do dinheiro pra investir e poupar."
                      " Essas despesas podem ser divididas em dois grupos: essenciais e supérfluos."
                      " Os gastos essenciais são aqueles que não podem ser cortados, como alimentação, transporte, aluguel, financiamentos e mensalidades. Eles devem corresponder a até metade da sua renda mensal. "
                      " Já os supérfluos são as despesas com lazer e coisas que a gente gosta de fazer, como serviços de streaming (Netflix, Amazon Prime, Globo Play etc), jantar fora e ir ao salão de beleza. "
                      " São coisas importantes que devem ter um lugar no orçamento, mas que não podem ultrapassar 30% da renda. "
                      " Os 20% restantes devem ser como uma conta que você paga todo mês pra você mesmo, pro seu futuro."
                      " Então, o 50-30-20 fica assim:"
                      " 50% da renda: gastos essenciais"
                      " 30% da renda: gastos supérfluos"
                      " 20% da renda: investimentos ou poupança",
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
